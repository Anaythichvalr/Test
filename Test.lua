local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({
    Name = "Vật tay bằng chim", 
    HidePremium = false, 
    SaveConfig = true, 
    ConfigFolder = "OrionTest"
})

-- Đảm bảo rằng tab này được tạo đúng cách
local ChinhTab = Window:MakeTab({
    Name = "Menu Chính",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Kiểm tra nếu ChinhTab thực sự được khởi tạo
if ChinhTab then
    ChinhTab:AddToggle({
        Name = "tập tạ bằng chim", 
        Default = false,
        Callback = function(Value)
            clicking = Value -- Cập nhật trạng thái toggle

            -- Nếu toggle được bật, bắt đầu gửi sự kiện liên tục
            if clicking then
                spawn(function()
                    while clicking do
                        -- Gửi sự kiện AutoTraining tới server
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.AutoService.RF.SetRejoin:InvokeServer("AutoTraining", {["TrainingType"] = "Biceps"})
                        wait(0.1) -- Chờ một khoảng thời gian để tránh lag và anti-cheat phát hiện
                    end
                end)
            end
        end    
    })
else
    warn("ChinhTab không được tạo thành công!")
end
