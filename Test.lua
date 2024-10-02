local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Vật tay bằng chim", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local ChinhTab = Window:MakeTab({
	Name = "Chính",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local limitedMerchants = game.Workspace.GameObjects:WaitForChild("LimitedMerchants")
local paradiseMerchant = limitedMerchants:WaitForChild("ParadiseMerchant")
local billboardGui = paradiseMerchant:WaitForChild("BillboardGui")
local container = billboardGui:WaitForChild("Container")

ChinhTab:AddButton({
	Name = "Bật lên để mua slime",
	Callback = function()
		billboardGui.Enabled = not billboardGui.Enabled
		container.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
	end    
})

local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local clicking = false

ChinhTab:AddToggle({
	Name = "Click để cày vật chim",
	Default = false,
	Callback = function(Value)
		clicking = Value

		if clicking then
			while clicking do
				local mouse = game.Players.LocalPlayer:GetMouse()
				local clickPosition = Vector3.new(mouse.X, mouse.Y, 0)

				local args = {
					[1] = clickPosition
				}
				UserInputService.InputBegan:Fire(unpack(args))

				wait(0.01)
			end
		end
	end    
})

RunService.RenderStepped:Connect(function()
	if not clicking then
		return
	end
end)