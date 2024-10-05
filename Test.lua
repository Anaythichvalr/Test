local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({
    Name = "Vật tay bằng chim", 
    HidePremium = false, 
    SaveConfig = true, 
    ConfigFolder = "OrionTest"
})

local Tab = Window:MakeTab({
    Name = "Menu Chính",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Kiểm tra sự tồn tại của Packages, Knit và ToolService
local Packages = ReplicatedStorage:WaitForChild("Packages", 10)
local Knit = Packages:WaitForChild("Knit", 10)
local Services = Knit:WaitForChild("Services", 10)
local ToolService = Services:WaitForChild("ToolService", 10)

local clicking = false -- Biến kiểm soát việc auto-click

Tab:AddToggle({
    Name = "Auto Click để tập tạ",
    Default = false,
    Callback = function(Value)
        clicking = Value -- Cập nhật trạng thái toggle

        -- Nếu toggle được bật, bắt đầu gửi sự kiện liên tục
        if clicking then
            spawn(function()
                while clicking do
                    -- Gửi sự kiện onClick tới server
                    ToolService.RE.onClick:FireServer()

                    -- Chờ một khoảng thời gian để tránh lag và anti-cheat phát hiện
                    wait(0.1) -- 0.1 giây mỗi lần gửi (bạn có thể điều chỉnh thời gian này)
                end
            end)
        end
    end    
})
