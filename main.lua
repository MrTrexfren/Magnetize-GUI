local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local label1 = Instance.new("TextLabel")
local tell = Instance.new("TextLabel")
local playerbox = Instance.new("TextBox")
local magnetize = Instance.new("TextButton")

local do_action = true

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(143, 143, 143)
Frame.BorderColor3 = Color3.fromRGB(143, 143, 143)
Frame.Position = UDim2.new(0.258449316, 0, 0.148031503, 0)
Frame.Size = UDim2.new(0, 461, 0, 316)
Frame.Active = true
Frame.Draggable = true

label1.Name = "label1"
label1.Parent = Frame
label1.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
label1.BorderColor3 = Color3.fromRGB(77, 77, 77)
label1.Size = UDim2.new(0, 461, 0, 50)
label1.Font = Enum.Font.SciFi
label1.Text = "Magnetize GUI"
label1.TextColor3 = Color3.fromRGB(255, 255, 255)
label1.TextScaled = true
label1.TextSize = 14.000
label1.TextWrapped = true

tell.Name = "tell"
tell.Parent = Frame
tell.BackgroundColor3 = Color3.fromRGB(143, 143, 143)
tell.BackgroundTransparency = 1.000
tell.BorderColor3 = Color3.fromRGB(143, 143, 143)
tell.Position = UDim2.new(0.0542299226, 0, 0.151898742, 0)
tell.Size = UDim2.new(0, 411, 0, 98)
tell.Font = Enum.Font.SciFi
tell.Text = "Type the name of the player you want to magnetize to"
tell.TextColor3 = Color3.fromRGB(0, 0, 0)
tell.TextScaled = true
tell.TextSize = 14.000
tell.TextWrapped = true

playerbox.Name = "playerbox"
playerbox.Parent = Frame
playerbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
playerbox.Position = UDim2.new(0.138828635, 0, 0.462025315, 0)
playerbox.Size = UDim2.new(0, 335, 0, 50)
playerbox.Font = Enum.Font.SourceSans
playerbox.Text = ""
playerbox.TextColor3 = Color3.fromRGB(0, 0, 0)
playerbox.TextSize = 14.000

magnetize.Name = "magnetize"
magnetize.Parent = Frame
magnetize.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
magnetize.BorderColor3 = Color3.fromRGB(77, 77, 77)
magnetize.Position = UDim2.new(0.381778717, 0, 0.655063272, 0)
magnetize.Size = UDim2.new(0, 111, 0, 50)
magnetize.Font = Enum.Font.SciFi
magnetize.Text = "Magnetize"
magnetize.TextColor3 = Color3.fromRGB(255, 255, 255)
magnetize.TextScaled = true
magnetize.TextSize = 14.000
magnetize.TextWrapped = true
magnetize.MouseButton1Down:Connect(function()
	local player = game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
	local user = game.Workspace:FindFirstChild(playerbox.Text)
	if do_action and user then
		do_action = false
		for i = 0,1,0.01 do
			wait()
			player.CFrame = player.CFrame:Lerp(user:FindFirstChild('HumanoidRootPart').CFrame, i)
		end
		do_action = true
	end
end)
