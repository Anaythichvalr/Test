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
    Name = "Tự động vật tất cả chim",
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

-- Định nghĩa tất cả các zone và tọa độ
local teleportLocations = {
    {zone = "13", coords = Vector3.new(2759.06, -1.76, 595.52)},
    {zone = "BunkerHideout", coords = Vector3.new(-3773.83, 4.20, -10354.26)},
    {zone = "14", coords = Vector3.new(-461.95, 69.71, 3068.63)},
    {zone = "Wasteland", coords = Vector3.new(-5313.16, 35.37, -10348.71)},
    {zone = "12", coords = Vector3.new(2876.66, -4.39, -4100.49)},
    {zone = "11", coords = Vector3.new(1719.76, -10.30, 2306.81)},
    {zone = "10", coords = Vector3.new(-6260.08, -97.83, -1606.85)}
}

-- Biến giữ vị trí hiện tại
local currentIndex = 1

-- Hàm dịch chuyển đến vị trí tiếp theo
local function teleportToNextLocation()
    local location = teleportLocations[currentIndex]
    
    -- Dịch chuyển đến zone trước
    game:GetService("ReplicatedStorage").Packages.Knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones[location.zone].Interactables.Teleports.Locations.Spawn)
    
    -- Chờ 3 giây trước khi dịch chuyển đến tọa độ cụ thể
    wait(3)
    
    -- Dịch chuyển đến tọa độ
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(location.coords)
    
    -- Chuyển sang vị trí tiếp theo, nếu đến cuối danh sách thì quay lại đầu
    currentIndex = currentIndex % #teleportLocations + 1
end

-- Nút để kích hoạt dịch chuyển
Tab:AddButton({
    Name = "Dịch chuyển rồi mua đồ bằng chim",
    Callback = teleportToNextLocation    
})
