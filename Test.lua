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

-- Kiểm tra nếu Packages và Knit tồn tại trước khi tiếp tục
local Packages = ReplicatedStorage:WaitForChild("Packages", 10)
if not Packages then
    warn("Packages không tồn tại trong ReplicatedStorage")
    return
end

local Knit = Packages:WaitForChild("Knit", 10)
if not Knit then
    warn("Knit không tồn tại trong Packages")
    return
end

local Services = Knit:WaitForChild("Services", 10)
if not Services then
    warn("Services không tồn tại trong Knit")
    return
end

local AutoService = Services:WaitForChild("AutoService", 10)
if not AutoService then
    warn("AutoService không tồn tại trong Services")
    return
end

local clicking = false -- Biến kiểm soát việc auto-click

Tab:AddToggle({
    Name = "tập tạ bằng chim",
    Default = false,
    Callback = function(Value)
        clicking = Value -- Cập nhật trạng thái toggle

        -- Nếu toggle được bật, bắt đầu gửi sự kiện liên tục
        if clicking then
            spawn(function()
                while clicking do
                    -- Gửi sự kiện AutoTraining tới server
                    AutoService.RF.SetRejoin:InvokeServer("AutoTraining", {["TrainingType"] = "Biceps"})

                    -- Chờ một khoảng thời gian để tránh lag và anti-cheat phát hiện
                    wait(0.1) -- 0.1 giây mỗi lần gửi (bạn có thể điều chỉnh thời gian này)
                end
            end)
        end
    end    
})
