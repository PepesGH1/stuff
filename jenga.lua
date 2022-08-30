-- MADE BY PEPES
-- UI LIBRARY USED - xheptcofficial.gitbook.io/kavo-library/

if game.PlaceId == 2537430692 then
    local GUI = game:GetService("StarterGui")
    GUI:SetCore("SendNotification", {
        Title = "Simple Jenga Gui",
        Text = "IF YOU ARE SPECATING DO NOT GO OUTSIDE THE BOX USING FLY OR SPEED!",
        Icon = "rbxassetid://2328131566",
        Duration = 10
    })
    local sound = Instance.new("Sound", game.Workspace)
    sound.SoundId = "rbxassetid://5568992074"
    sound:Play()
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Simple Jenga GUI - by pepes", "DarkTheme") 
    local Main = Window:NewTab("Jenga")
    local MainSection = Main:NewSection("Main")
    local MiscSection = Main:NewSection("Misc")


    MainSection:NewButton("End Game", "It will win the game if you are surviving and it will kill you if you are destroying.", function()
        local Player = game:GetService("Players").LocalPlayer
        local Team = game:GetService("Teams")["Towers"]
        local Team2 = game:GetService("Teams")["Destroyer"]
        local Team3 = game:GetService("Teams")["Spectating"]

        if Player.Team == Team3 then
            local GUI = game:GetService("StarterGui")
            GUI:SetCore("SendNotification", {
                Title = "Simple Jenga Gui by Pepes",
                Text = "This action must be perfomed while you are a Survivor or a Destroyer.",
                Duration = 7
            })
            local sound = Instance.new("Sound", game.Workspace)
            sound.SoundId = "rbxassetid://5568992074"
            sound:Play()
        end

        if Player.Team == Team then
            if game:GetService("Workspace").Map.Classic:FindFirstChild('Tower') then
                game:GetService("Workspace").Map.Classic.Tower:Destroy()
                wait(0.1)
                local cframeplace = CFrame.new(-65.5, 97.125, -18.5)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cframeplace
            else
                local cframeplace = CFrame.new(-65.5, 97.125, -18.5)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cframeplace
            end
        else
            
        end
        if Player.Team == Team2 then
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        else   
            
        end
    end)
    
    MainSection:NewButton("Remove Kill Part", "It will remove the red part", function()
        game:GetService("Workspace").Map.Classic.KillBrick:Destroy()
    end)

    
    MainSection:NewButton("Remove Objects", "Removes the objects thrown by the Destroyer.", function()
        game.Workspace.Projectiles:Destroy()
    end)  
    
    
    MainSection:NewSlider("Walkspeed", "Changes your speed", 300, 16, function(s) 
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)


    MainSection:NewSlider("JumpPower", "Changes your speed", 300, 50, function(s) 
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)


    MainSection:NewButton("Go to Spawn", "It will teleport you to spawn.", function()
        local Player = game:GetService("Players").LocalPlayer
        local Team = game:GetService("Teams")["Towers"]
        local Team2 = game:GetService("Teams")["Destroyer"]
        local Team3 = game:GetService("Teams")["Spectating"]
        if Player.Team == Team3 then
            local GUI = game:GetService("StarterGui")
            GUI:SetCore("SendNotification", {
                Title = "Simple Jenga Gui by Pepes",
                Text = "This action must be perfomed while you are a Survivor or a Destroyer.",
                Duration = 7
            })
            local sound = Instance.new("Sound", game.Workspace)
            sound.SoundId = "rbxassetid://5568992074"
            sound:Play()
        else
            
        end
        if Player.Team == Team then
            local cframeplace = CFrame.new(133.609665, 252.999954, -1.12004232)
	        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cframeplace
        else
            
        end
        if Player.Team == Team2 then
            local cframeplace = CFrame.new(133.609665, 252.999954, -1.12004232)
	        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cframeplace
        else        
        end
    end)
    
    
    MainSection:NewButton("Go to Destroyer", "It will teleport you to destroyer section.", function()
        local Player = game:GetService("Players").LocalPlayer
        local Team = game:GetService("Teams")["Towers"]
        local Team2 = game:GetService("Teams")["Destroyer"]
        local Team3 = game:GetService("Teams")["Spectating"]
        if Player.Team == Team3 then
            local GUI = game:GetService("StarterGui")
            GUI:SetCore("SendNotification", {
                Title = "Simple Jenga Gui by Pepes",
                Text = "This action must be perfomed while you are a Survivor or a Destroyer.",
                Duration = 7
            })
            local sound = Instance.new("Sound", game.Workspace)
            sound.SoundId = "rbxassetid://5568992074"
            sound:Play()
        else
            
        end
        if Player.Team == Team then
            local cframeplace = CFrame.new(229.624603, 99.9702759, 23.1956673)
	        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cframeplace
        else
            
        end
        if Player.Team == Team2 then
            local cframeplace = CFrame.new(229.624603, 99.9702759, 23.1956673)
	        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cframeplace
        else        
        end
    end)
        

    MainSection:NewButton("Inf Jump", "Infinite Jump forever", function()
        local InfiniteJump = false
        if InfiniteJump == false then
            InfiniteJump = true
        end
        game:GetService("UserInputService").JumpRequest:Connect(function()
            if InfiniteJump == true then
                game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
            end
        end)     
    end)


    MainSection:NewButton("Fly - RESET TO STOP", "Flies", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/WxmvCLLH'),true))()
    end)


    MainSection:NewButton("Reset", "Resets", function()
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end)


    MiscSection:NewButton("Rejoin Server", "It will rejoin the server", function ()
        local ts = game:GetService("TeleportService")
        local p = game:GetService("Players").LocalPlayer
        ts:Teleport(game.PlaceId, p)
    end)
else
end
