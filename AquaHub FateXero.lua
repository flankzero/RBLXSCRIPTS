-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local Title = Instance.new("TextLabel")
local Title_2 = Instance.new("TextLabel")
local Button4 = Instance.new("TextButton")
local Button3 = Instance.new("TextButton")
local Button2 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Background.Name = "Background"
Background.Parent = ScreenGui
Background.Active = true
Background.BackgroundColor3 = Color3.fromRGB(17, 127, 127)
Background.Position = UDim2.new(0.749230862, 0, 0.369351655, 0)
Background.Selectable = true
Background.SelectionImageObject = ImageLabel
Background.Size = UDim2.new(0, 317, 0, 321)

ImageLabel.Parent = Background
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.LayoutOrder = 1
ImageLabel.Position = UDim2.new(-0.0028630686, 0, 0.724370658, 0)
ImageLabel.Size = UDim2.new(0, 92, 0, 87)
ImageLabel.Image = "http://www.roblox.com/asset/?id=9153464178"

Title.Name = "Title"
Title.Parent = ImageLabel
Title.Active = true
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.627983332, 0, 0.353314012, 0)
Title.Rotation = -3.000
Title.Size = UDim2.new(0, 200, 0, 50)
Title.Font = Enum.Font.Kalam
Title.Text = "Made by flank"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

Title_2.Name = "Title"
Title_2.Parent = ImageLabel
Title_2.Active = true
Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_2.BackgroundTransparency = 1.000
Title_2.Position = UDim2.new(0.638852894, 0, -2.67816091, 0)
Title_2.Rotation = -3.000
Title_2.Size = UDim2.new(0, 200, 0, 50)
Title_2.Font = Enum.Font.Kalam
Title_2.Text = "AquaHub"
Title_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Title_2.TextScaled = true
Title_2.TextSize = 14.000
Title_2.TextWrapped = true

Button4.Name = "Button4"
Button4.Parent = Background
Button4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button4.BackgroundTransparency = 0.500
Button4.BorderSizePixel = 0
Button4.Position = UDim2.new(0.778545558, 0, 0, 0)
Button4.Size = UDim2.new(0, 70, 0, 49)
Button4.Text = "X"
Button4.TextColor3 = Color3.fromRGB(0, 0, 0)
Button4.TextScaled = true
Button4.TextSize = 14.000
Button4.TextWrapped = true

Button3.Name = "Button3"
Button3.Parent = Background
Button3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button3.BackgroundTransparency = 0.500
Button3.BorderSizePixel = 3
Button3.Position = UDim2.new(0.179176554, 0, 0.394152582, 0)
Button3.Size = UDim2.new(0, 200, 0, 50)
Button3.Text = "Auto Use"
Button3.TextColor3 = Color3.fromRGB(0, 0, 0)
Button3.TextScaled = true
Button3.TextSize = 14.000
Button3.TextWrapped = true

Button2.Name = "Button2"
Button2.Parent = Background
Button2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button2.BackgroundTransparency = 0.500
Button2.BorderSizePixel = 3
Button2.Position = UDim2.new(0.181999996, 0, 0.180000007, 0)
Button2.Size = UDim2.new(0, 200, 0, 50)
Button2.Text = "Pickup Items"
Button2.TextColor3 = Color3.fromRGB(0, 0, 0)
Button2.TextScaled = true
Button2.TextSize = 14.000
Button2.TextWrapped = true

-- Scripts:

local function OYMUK_fake_script() -- Button4.LocalScript 
	local script = Instance.new('LocalScript', Button4)

	local Button4 = script.Parent
	
	Button4.MouseButton1Click:connect(function()
		script.Parent.Parent.Parent:Destroy()
	end)
	
end
coroutine.wrap(OYMUK_fake_script)()
local function XMQOB_fake_script() -- Button3.LocalScript 
	local script = Instance.new('LocalScript', Button3)

	local Button3 = script.Parent
	
	Button3.MouseButton1Click:connect(function()
		local tool = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
		local args = {
			[1] = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
		}
	
		game:GetService("ReplicatedStorage").Remotes.Events.Item:FireServer(unpack(args))
	end)
	
end
coroutine.wrap(XMQOB_fake_script)()
local function ANKLKPS_fake_script() -- Button2.LocalScript 
	local script = Instance.new('LocalScript', Button2)

	local Button2 = script.Parent
	
	Button2.MouseButton1Click:connect(function()
		if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then return end
		for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			if v.Name == "TouchInterest" then
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then return end
				print("Test")
				firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
				wait(0.1)
				firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
			end
		end
	end)
	
end
coroutine.wrap(ANKLKPS_fake_script)()
