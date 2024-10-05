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

Tab:AddButton({
    Name = "Dịch chuyển rồi mua đồ bằng chim",
    Callback = function()
        print("idk")

        -- Tạo nút mới
        local newButton = Instance.new("TextButton") -- Tạo button mới
        newButton.Text = "Dịch chuyển để mua slime" -- Đặt chữ cho nút
        newButton.Size = UDim2.new(0, 200, 0, 50) -- Kích thước của nút
        newButton.Position = UDim2.new(1, -220, 0, 10) -- Đặt vị trí nút gần trên cùng bên phải
        newButton.BackgroundColor3 = Color3.new(1, 1, 1) -- Màu nền của nút
        newButton.Parent = game.Players.LocalPlayer.PlayerGui.ScreenGui -- Đặt nút vào GUI của người chơi

        -- Kích hoạt script khi bấm nút mới
        newButton.MouseButton1Click:Connect(function()
            print("Dịch chuyển để mua slime")

            -- Kích hoạt teleport
            game:GetService("ReplicatedStorage").Packages.Knit.Services.ZoneService.RE.teleport:FireServer(workspace.Zones["13"].Interactables.Teleports.Locations.Spawn)

            -- Di chuyển nhân vật đến tọa độ cụ thể sau khi teleport
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait() -- Đảm bảo có nhân vật
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart") -- Lấy HumanoidRootPart

            -- Tọa độ đích
            local targetPosition = Vector3.new(2759.06, -1.76, 595.52)

            -- Di chuyển nhân vật đến tọa độ đích
            wait(0.5) -- Chờ một chút trước khi di chuyển để đảm bảo teleport hoàn tất
            humanoidRootPart.CFrame = CFrame.new(targetPosition)
        end)
    end    
})