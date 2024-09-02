local ScreenGui = Instance.new("ScreenGui")
local Bendru = Instance.new("Frame")
local TurnMenu = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local Menu = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local KaitunMode = Instance.new("TextLabel")
local BarBackground = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Bar = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local Tab = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local HouseOfTab = Instance.new("ImageLabel")
local SettingOfTab = Instance.new("ImageLabel")
local ButtonOfHouse = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local ButtonOfSetting = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local Select = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local Hello = Instance.new("TextLabel")
local Welcome = Instance.new("TextLabel")
local Ui = Instance.new("Frame")
local UICorner_9 = Instance.new("UICorner")
local BendruImage = Instance.new("ImageLabel")
local UIGradient_2 = Instance.new("UIGradient")
local UIGradient_3 = Instance.new("UIGradient")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Bendru.Name = "Bendru"
Bendru.Parent = ScreenGui
Bendru.Active = true
Bendru.AnchorPoint = Vector2.new(0.5, 0.5)
Bendru.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Bendru.BackgroundTransparency = 1.000
Bendru.BorderColor3 = Color3.fromRGB(0, 0, 0)
Bendru.BorderSizePixel = 0
Bendru.Position = UDim2.new(0.5, 0, 0.5, 0)
Bendru.Size = UDim2.new(1, 0, 1, 0)

TurnMenu.Name = "TurnMenu"
TurnMenu.Parent = Bendru
TurnMenu.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
TurnMenu.BorderColor3 = Color3.fromRGB(0, 0, 0)
TurnMenu.BorderSizePixel = 0
TurnMenu.Position = UDim2.new(0.139830515, 0, 0.133771926, 0)
TurnMenu.Size = UDim2.new(0, 60, 0, 60)
TurnMenu.Visible = false
TurnMenu.Image = "http://www.roblox.com/asset/?id=18115364062"

UICorner.Parent = TurnMenu

Menu.Name = "Menu"
Menu.Parent = Bendru
Menu.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Menu.BorderColor3 = Color3.fromRGB(0, 0, 0)
Menu.BorderSizePixel = 0
Menu.Position = UDim2.new(0.422968209, 0, 0.243362829, 0)
Menu.Size = UDim2.new(0, 145, 0, 230)

UICorner_2.Parent = Menu

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.26, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
UIGradient.Parent = Menu

KaitunMode.Name = "KaitunMode"
KaitunMode.Parent = Bendru
KaitunMode.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KaitunMode.BackgroundTransparency = 1.000
KaitunMode.BorderColor3 = Color3.fromRGB(0, 0, 0)
KaitunMode.BorderSizePixel = 0
KaitunMode.Position = UDim2.new(0.421000004, 0, 0.321999997, 0)
KaitunMode.Size = UDim2.new(0, 146, 0, 58)
KaitunMode.Visible = false
KaitunMode.Font = Enum.Font.Unknown
KaitunMode.Text = "Bendru Hub Premium Script - Kaitun Mode"
KaitunMode.TextColor3 = Color3.fromRGB(255, 255, 255)
KaitunMode.TextScaled = true
KaitunMode.TextSize = 14.000
KaitunMode.TextWrapped = true

BarBackground.Name = "BarBackground"
BarBackground.Parent = Bendru
BarBackground.AnchorPoint = Vector2.new(0.5, 0.5)
BarBackground.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BarBackground.BorderColor3 = Color3.fromRGB(27, 42, 53)
BarBackground.Position = UDim2.new(0.5, 0, 0.578000009, 0)
BarBackground.Size = UDim2.new(0, 130, 0, 27)
BarBackground.Visible = false

UICorner_3.CornerRadius = UDim.new(0.200000003, 0)
UICorner_3.Parent = BarBackground

Bar.Name = "Bar"
Bar.Parent = BarBackground
Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Bar.BorderColor3 = Color3.fromRGB(27, 42, 53)
Bar.Position = UDim2.new(2.34750601e-07, 0, -1.13028068e-06, 0)
Bar.Size = UDim2.new(0, 130, 0, 27)

UICorner_4.CornerRadius = UDim.new(0.200000003, 0)
UICorner_4.Parent = Bar

Tab.Name = "Tab"
Tab.Parent = Bendru
Tab.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Tab.BackgroundTransparency = 1.000
Tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tab.BorderSizePixel = 0
Tab.Position = UDim2.new(0.44600001, 0, 0.385999978, 0)
Tab.Size = UDim2.new(0, 46, 0, 160)

UICorner_5.CornerRadius = UDim.new(0, 9)
UICorner_5.Parent = Tab

HouseOfTab.Name = "HouseOfTab"
HouseOfTab.Parent = Bendru
HouseOfTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HouseOfTab.BackgroundTransparency = 1.000
HouseOfTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
HouseOfTab.BorderSizePixel = 0
HouseOfTab.Position = UDim2.new(0.454449147, 0, 0.405701756, 0)
HouseOfTab.Size = UDim2.new(0, 30, 0, 30)
HouseOfTab.Image = "http://www.roblox.com/asset/?id=18260129253"

SettingOfTab.Name = "SettingOfTab"
SettingOfTab.Parent = Bendru
SettingOfTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SettingOfTab.BackgroundTransparency = 1.000
SettingOfTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
SettingOfTab.BorderSizePixel = 0
SettingOfTab.Position = UDim2.new(0.450211853, 0, 0.486842066, 0)
SettingOfTab.Size = UDim2.new(0, 37, 0, 37)
SettingOfTab.Image = "http://www.roblox.com/asset/?id=18260483853"

ButtonOfHouse.Name = "ButtonOfHouse"
ButtonOfHouse.Parent = Bendru
ButtonOfHouse.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonOfHouse.BackgroundTransparency = 1.000
ButtonOfHouse.BorderColor3 = Color3.fromRGB(0, 0, 0)
ButtonOfHouse.BorderSizePixel = 0
ButtonOfHouse.Position = UDim2.new(0.445974588, 0, 0.388157904, 0)
ButtonOfHouse.Size = UDim2.new(0, 45, 0, 40)
ButtonOfHouse.SizeConstraint = Enum.SizeConstraint.RelativeXX
ButtonOfHouse.Font = Enum.Font.SourceSans
ButtonOfHouse.Text = ""
ButtonOfHouse.TextColor3 = Color3.fromRGB(0, 0, 0)
ButtonOfHouse.TextSize = 14.000

UICorner_6.CornerRadius = UDim.new(0, 9)
UICorner_6.Parent = ButtonOfHouse

ButtonOfSetting.Name = "ButtonOfSetting"
ButtonOfSetting.Parent = Bendru
ButtonOfSetting.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonOfSetting.BackgroundTransparency = 1.000
ButtonOfSetting.BorderColor3 = Color3.fromRGB(0, 0, 0)
ButtonOfSetting.BorderSizePixel = 0
ButtonOfSetting.Position = UDim2.new(0.445974588, 0, 0.475877196, 0)
ButtonOfSetting.Size = UDim2.new(0, 45, 0, 42)
ButtonOfSetting.SizeConstraint = Enum.SizeConstraint.RelativeXX
ButtonOfSetting.Font = Enum.Font.SourceSans
ButtonOfSetting.Text = ""
ButtonOfSetting.TextColor3 = Color3.fromRGB(0, 0, 0)
ButtonOfSetting.TextSize = 14.000

UICorner_7.CornerRadius = UDim.new(0, 9)
UICorner_7.Parent = ButtonOfSetting

Select.Name = "Select"
Select.Parent = Bendru
Select.BackgroundColor3 = Color3.fromRGB(185, 185, 185)
Select.BackgroundTransparency = 0.500
Select.BorderColor3 = Color3.fromRGB(0, 0, 0)
Select.BorderSizePixel = 0
Select.Position = UDim2.new(0.4523305, 0, 0.401315778, 0)
Select.Size = UDim2.new(0, 34, 0, 34)

UICorner_8.CornerRadius = UDim.new(0, 9)
UICorner_8.Parent = Select

Hello.Name = "Hello"
Hello.Parent = Bendru
Hello.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Hello.BackgroundTransparency = 1.000
Hello.BorderColor3 = Color3.fromRGB(0, 0, 0)
Hello.BorderSizePixel = 0
Hello.Position = UDim2.new(0.423000008, 0, 0.31400001, 0)
Hello.Size = UDim2.new(0, 143, 0, 19)
Hello.Font = Enum.Font.FredokaOne
Hello.Text = ""
Hello.TextColor3 = Color3.fromRGB(255, 255, 255)
Hello.TextScaled = true
Hello.TextSize = 14.000
Hello.TextWrapped = true

Welcome.Name = "Welcome"
Welcome.Parent = Bendru
Welcome.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Welcome.BackgroundTransparency = 1.000
Welcome.BorderColor3 = Color3.fromRGB(0, 0, 0)
Welcome.BorderSizePixel = 0
Welcome.Position = UDim2.new(0.425000012, 0, 0.349999994, 0)
Welcome.Size = UDim2.new(0, 143, 0, 12)
Welcome.Font = Enum.Font.FredokaOne
Welcome.Text = "Welcome to Bendru Hub"
Welcome.TextColor3 = Color3.fromRGB(255, 255, 255)
Welcome.TextScaled = true
Welcome.TextSize = 14.000
Welcome.TextWrapped = true

Ui.Name = "Ui"
Ui.Parent = Bendru
Ui.Active = true
Ui.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Ui.BorderColor3 = Color3.fromRGB(0, 0, 0)
Ui.BorderSizePixel = 0
Ui.Position = UDim2.new(0.42253086, 0, 0.242731661, 0)
Ui.Size = UDim2.new(0, 145, 0, 231)

UICorner_9.Parent = Ui

BendruImage.Name = "BendruImage"
BendruImage.Parent = Ui
BendruImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BendruImage.BackgroundTransparency = 1.000
BendruImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
BendruImage.BorderSizePixel = 0
BendruImage.Position = UDim2.new(-0.0068965517, 0, 0, 0)
BendruImage.Size = UDim2.new(0, 145, 0, 132)
BendruImage.Image = "http://www.roblox.com/asset/?id=18115364062"

UIGradient_2.Parent = BendruImage

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.06, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.93, Color3.fromRGB(242, 242, 242)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
UIGradient_3.Parent = Ui

Ui.BackgroundTransparency = 1
Menu.BackgroundTransparency = 1
BendruImage.ImageTransparency = 1

TurnMenu.Visible = false
KaitunMode.Visible = false

local function fadeIn(instance, fadeTime,property)
local fadeTweenInfo = TweenInfo.new(
	fadeTime,
		Enum.EasingStyle.Quad, 
		Enum.EasingDirection.Out
	)

	local goal = {}
	goal[property] = 0
	local fadeTween = TweenService:Create(instance, fadeTweenInfo, goal)
 fadeTween:Play()
	fadeTween.Completed:Wait()
end

fadeIn(frame1, fadeTime1, "BackgroundTransparency")
	wait(waitTimeAfterFade1)
	wait(0.1)
	textLabel.Visible = true
	Tab.Visible = true
	HouseOfTab.Visible = true
	SettingOfTab.Visible = true
	Select.Visible = true
	Hello.Visible = true
	uiOfMenu.Enabled = true
	Welcome.Visible = true
	fadeIn(imageLabel, fadeTime2, "ImageTransparency")
	fadeIn(frame2, 0.01, "BackgroundTransparency")
	fadeIn(uiStroke, 0.3, "Transparency")
