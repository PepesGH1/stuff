local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Festival Tycoon Gui ", "DarkTheme") 

local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

local sound = Instance.new("Sound", game.Workspace)
sound.SoundId = "rbxassetid://5568992074"
local GUI = game:GetService("StarterGui")

MainSection:NewButton("Get Sword Pack + Gas Mask + Badges!", "Gives you the neon sword pack and neon gas mask", function()
    game:GetService("ReplicatedStorage").RemoteObjects.RewardBadge:FireServer()
    game:GetService("ReplicatedStorage").RemoteObjects.ClaimMainStageChallenge:FireServer()
    game:GetService("ReplicatedStorage").RemoteObjects.RefreshChallenges:FireServer()
    local args = {
        [1] = 5000000
    }  
    game:GetService("ReplicatedStorage").RemoteObjects.IncrementBeachCash:FireServer(unpack(args))
    GUI:SetCore("SendNotification", {
        Title = "Festival Tycoon Gui ",
        Text = "Neon Sword Pack and Neon Gas Mask have been given!",
        Duration = 10
    })
    sound:Play()
end)
MainSection:NewButton("Infinite Money!", "Gives you infinite money", function()
    local args = {
        [1] = 1000000000000
    }
    game:GetService("ReplicatedStorage").RemoteObjects.DanceGameCash:FireServer(unpack(args))
    GUI:SetCore("SendNotification", {
        Title = "Festival Tycoon Gui ",
        Text = "You got Infinite Money buying!",
        Duration = 10
    })
    sound:Play()
end)


MainSection:NewButton("Buy Everything - (Tycoon) (Get Neon Shades)", "Buys everything", function()
    GUI:SetCore("SendNotification", {
        Title = "Festival Tycoon Gui ",
        Text = "You started buying!",
        Duration = 10
    })
    sound:Play()
    local args = {
        [1] = 1000000000000
    }
    game:GetService("ReplicatedStorage").RemoteObjects.DanceGameCash:FireServer(unpack(args))
    local remoteevent = game:GetService("ReplicatedStorage").RemoteObjects.RequestButtonPurchase
    for i,v in ipairs(game:GetService("Workspace").Buttons:GetChildren()) do
        for l,c in ipairs(v:GetChildren()) do
            remoteevent:FireServer(c.Name)
        end
    end
end)

MainSection:NewSlider("Walkspeed", "Changes your speed", 400, 16, function(s) 
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

MainSection:NewSlider("JumpPower", "Changes your speed", 400, 50, function(j) 
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = j
end)

MainSection:NewButton("Fly and NoClip - C to Toggle!", "Flies", function()
    GUI:SetCore("SendNotification", {
        Title = "Festival Tycoon Gui ",
        Text = "Fly enabled!",
        Duration = 10
    })
    sound:Play()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/PepesGH1/stuff/main/Cframfly.lua'),true))()
end)

