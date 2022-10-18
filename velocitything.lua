local gaweuh = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local CoreGuiService = game:GetService("CoreGui")
local RunService = game:GetService("RunService")
local Player = game.Players.LocalPlayer
local TargetedParent = RunService:IsStudio() and Player:WaitForChild("PlayerGui") or CoreGuiService
local FindOldInstance = TargetedParent:FindFirstChild("gaweuh")

if FindOldInstance then
	FindOldInstance:Destroy()
end

gaweuh.Name = "gaweuh"
gaweuh.Parent = TargetedParent
gaweuh.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = gaweuh
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.41426146, 1, 0.78553617, 0)
Frame.Size = UDim2.new(0.168760628, 0, 0.0763092339, 0)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = " u/s"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true


local function scriptings()
	local script = Instance.new('LocalScript', Frame)
	while true do
        wait()
        local speed = math.floor(game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.Magnitude)
        script.Parent.TextLabel.Text = speed.." u/s"
	end
end
coroutine.wrap(scriptings)()
