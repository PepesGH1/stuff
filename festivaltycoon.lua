local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Simple Festival Tycoon GUI - by pepes", "DarkTheme") 

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
        Title = "Simple Festival Tycoon Gui - by pepes",
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
        Title = "Simple Festival Tycoon Gui - by pepes",
        Text = "You got Infinite Money buying!",
        Duration = 10
    })
    sound:Play()
end)


MainSection:NewToggle("Buy Everything - (Tycoon)", "Buys everything", function(state)
    getgenv().autobuy = true
    if state then
        GUI:SetCore("SendNotification", {
            Title = "Simple Festival Tycoon Gui - by pepes",
            Text = "You started buying!",
            Duration = 10
        })
        sound:Play()
        autobuy = true
        while autobuy do
            for i,v in pairs(game:GetService("Workspace").Buttons:GetDescendants()) do
                if v.Name == "Head" and v.Transparency == 0.10000000149011612 then
                    local player = game.Players.LocalPlayer.Character.HumanoidRootPart
                    player.CFrame = v.CFrame 
                    wait(1)
                end
            end
        end
    else
        GUI:SetCore("SendNotification", {
            Title = "Simple Festival Tycoon Gui - by pepes",
            Text = "You stopped buying!",
            Duration = 10
        })
        sound:Play()
        autobuy = false
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
        Title = "Simple Festival Tycoon Gui - by pepes",
        Text = "Fly enabled!",
        Duration = 10
    })
    sound:Play()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/PepesGH1/stuff/main/Cframfly.lua'),true))()
end)
