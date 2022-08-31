-- THIS WAS MADE BY (LOODY_XMER)#5605 , @kd_xr
local Looody = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local title = Instance.new("TextLabel")
local bottomtitle = Instance.new("TextButton")
local boxon = Instance.new("TextButton")
local esp = Instance.new("TextButton")
local RB = Instance.new("TextButton")
local tp = Instance.new("TextButton")
local bp = Instance.new("TextButton")
local balloon = Instance.new("TextButton")
local redeem = Instance.new("TextButton")
local Qtotp = Instance.new("TextButton")
local feed = Instance.new("TextButton")
local collect = Instance.new("TextButton")
local OP = Instance.new("TextButton")
local close = Instance.new("TextButton")

--Properties:
Looody.Name = "Looody"
Looody.Parent = game.CoreGui

main.Name = "main"
main.Parent = Looody
main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
main.Position = UDim2.new(0.013771977, 0, 0.74591195, 0)
main.Size = UDim2.new(0, 178, 0, 147)
main.Visible = false
main.Active = true
main.Transparency = 0.2
main.Draggable = true

title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.Size = UDim2.new(0, 153, 0, 29)
title.Font = Enum.Font.Highway
title.Text = "Welcome To Loody's GUI"
title.TextColor3 = Color3.fromRGB(89, 34, 89)
title.TextSize = 14.000

bottomtitle.Name = "bottomtitle"
bottomtitle.Parent = main
bottomtitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bottomtitle.Position = UDim2.new(0, 0, 0.850340128, 0)
bottomtitle.Size = UDim2.new(0, 178, 0, 22)
bottomtitle.Font = Enum.Font.GothamBlack
bottomtitle.Text = "HACKING IS NOT A CRIME, IT'S AN ART(X)"
bottomtitle.TextColor3 = Color3.fromRGB(89, 34, 89)
bottomtitle.TextScaled = true
bottomtitle.TextSize = 20
bottomtitle.TextWrapped = true
bottomtitle.MouseButton1Down:connect(
    function()
        game.CoreGui.Looody:Destroy()
    end
)

bottomtitle.MouseEnter:Connect(
    function()
        title.Text = "Delete GUI"
        title.TextColor3 = Color3.fromRGB(255, 0, 0)
    end
)

bottomtitle.MouseLeave:Connect(
    function()
        title.Text = "Welcome To Loody's GUI"
        title.TextColor3 = Color3.fromRGB(89, 34, 89)
    end
)

RB.Name = "RB"
RB.Parent = main
RB.BackgroundColor3 = Color3.fromRGB(0, 255, 238)
RB.Position = UDim2.new(0.69, 0, 0.238095239, 0)
RB.Size = UDim2.new(0, 30, 0, 22)
RB.Font = Enum.Font.Fantasy
RB.Text = "R&FT"
RB.TextColor3 = Color3.fromRGB(0, 0, 0)
RB.TextSize = 14.000
RB.BackgroundTransparency = 0.4
RB.Visible = true
RB.MouseButton1Down:connect(
    function()
    for i=5,1,-1 do
        wait(0.001)
        RB.Visible = false
        tp.Visible = true
        --Final-Blocks
        for i, v in pairs(game.Workspace.Map_Finale.FinaleBlocks:GetChildren()) do
            v:Destroy()
            wait(0.01)
        end
        --Vent-Obsticle
        for i, v in pairs(game:GetService("Workspace")["Map_Finale"].PlankSkillChecks:GetChildren()) do
            v:Destroy()
            wait(0.01)
        end
        -- blue stop
        game:GetService("Workspace")["Map_Finale"].blueCrushAnchor.Transparency = 0.7
    end
end
)

RB.MouseEnter:Connect(
    function()
        title.Text = "Remove final-map cubes"
        title.TextColor3 = Color3.fromRGB(40, 89, 40)
    end
)

RB.MouseLeave:Connect(
    function()
        title.Text = "Welcome To Loody's GUI"
        title.TextColor3 = Color3.fromRGB(89, 34, 89)
    end
)

tp.Name = "tp"
tp.Parent = main
tp.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
tp.Position = UDim2.new(0.69, 0, 0.238095239, 0)
tp.Size = UDim2.new(0, 30, 0, 22)
tp.Font = Enum.Font.Fantasy
tp.Text = "TP-F"
tp.TextColor3 = Color3.fromRGB(255, 255, 255)
tp.TextSize = 14.000
tp.BackgroundTransparency = 0.4
tp.Visible = false
tp.MouseButton1Down:connect(
    function()
    local f = game:GetService("Workspace")["Map_Finale"].EscapedTrigger.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(f.x, f.y, f.z)
    end
)

tp.MouseEnter:Connect(
    function()
        title.Text = "Tp to the end"
        title.TextColor3 = Color3.fromRGB(40, 89, 40)
    end
)

tp.MouseLeave:Connect(
    function()
        title.Text = "Welcome To Loody's GUI"
        title.TextColor3 = Color3.fromRGB(89, 34, 89)
    end
)

esp.Name = "esp"
esp.Parent = main
esp.BackgroundColor3 = Color3.fromRGB(0, 255, 238)
esp.Position = UDim2.new(0.140449435, 0, 0.238095239, 0)
esp.Size = UDim2.new(0, 30, 0, 22)
esp.Font = Enum.Font.Fantasy
esp.Text = "ESP"
esp.TextColor3 = Color3.fromRGB(0, 0, 0)
esp.TextSize = 14.000
esp.BackgroundTransparency = 0.4
esp.Visible = true
esp.MouseButton1Down:connect(
    function()
        for i = 5, 1, -1 do --Repeating to not miss.
            wait(0.1)
            ----Shows u the monsters danger spot----
            for i, v in pairs(game.Workspace:GetDescendants()) do
                if v:IsA("Part") and v.Name == "Trigger" then
                    v.Transparency = 0
                    v.Color = Color3.fromRGB(255, 0, 0)
                end
            end

            for i, v in pairs(game.Workspace.Monsters:GetDescendants()) do
                if v:IsA("Part") and v.Name == "Hitbox" then
                    v.Transparency = 0
                    v.Color = Color3.fromRGB(255, 0, 0)
                    v.Material = "Neon"
                end
            end
            ----Item-Outline-Esp----
            local itemsOfInterest = Instance.new("Model", workspace)
            itemsOfInterest.Name = "Items of Interest"

            for i, v in pairs(workspace:GetChildren()) do
                if
                    v.Name == "Battery" or (v.Name:find("^Block") and v:IsA("Model")) or
                        (v.Name:find("^Food") and v:IsA("Model")) or
                        (v.Name:find("^Fuse") and v:IsA("Model"))
                 then
                    v.Parent = itemsOfInterest
                end
            end

            local highlight = Instance.new("Highlight")
            highlight.Parent = itemsOfInterest
            highlight.Adornee = itemsOfInterest
            highlight.FillColor = Color3.new(0, 255, 0)
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillTransparency = 0.5

            ----Item-Esp----

            for i, v in pairs(game.Workspace:GetDescendants()) do -- grabs everything from workspace
                if
                    v:IsA("Part") and v.Name == "TouchTrigger" and v.Parent.Name ~= "Default" and
                        v.Parent.Name ~= "Door_Default"
                 then -- checks if it has a handle and if its a touchtransmitter
                    local BillboardGui = Instance.new("BillboardGui") -- Makes Billboardgui
                    local TextLabel = Instance.new("TextLabel") -- makes text label

                    BillboardGui.Parent = v.Parent -- what the billboardgui goes into
                    BillboardGui.AlwaysOnTop = true -- if its on top or not
                    BillboardGui.Size = UDim2.new(0, 50, 0, 50) -- size of it
                    BillboardGui.StudsOffset = Vector3.new(0, 2, 0)

                    TextLabel.Parent = BillboardGui -- putting textlabel into billboardgui
                    TextLabel.BackgroundColor3 = Color3.new(1, 1, 1) -- color
                    TextLabel.BackgroundTransparency = 1 -- transparency
                    TextLabel.Size = UDim2.new(1, 0, 1, 0) -- size
                    TextLabel.Text = v.Parent.Name -- what the label says
                    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 0) -- color
                    TextLabel.TextScaled = true -- if the text is scaled or not
                end
            end

            ----Monster esp----
            local settings = {
                fillcolor = Color3.fromRGB(255, 0, 0),
                filltransparency = 0.75,
                outlinecolor = Color3.fromRGB(255, 0, 0),
                outlinetransparency = 0
            }

            -- Script --

            local plr = game.Players.LocalPlayer
            local highlights = Instance.new("Folder", game:service("CoreGui"))

            local function addhighlight(object) -- Add a highlight to an object
                local highlight = Instance.new("Highlight", highlights)
                highlight.Adornee = object -- Set the object to be highlighted

                highlight.FillColor = settings.fillcolor
                highlight.FillTransparency = settings.filltransparency

                highlight.OutlineColor = settings.outlinecolor
                highlight.OutlineTransparency = settings.outlinetransparency

                highlight.Adornee.Changed:Connect(
                    function()
                        -- When the object is changed
                        if not highlight.Adornee or not highlight.Adornee.Parent then -- If the object is no longer valid
                            highlight:Destroy() -- Destroy the highlight
                        end
                    end
                )

                return highlight -- Return the highlight
            end

            local function addto(object) -- Add a highlight to an object
                if object:IsA("Model") then -- If the object is a model,MeshPart
                    addhighlight(object) -- Add a highlight to the model
                end
            end

            for _, v in pairs(workspace.Monsters:GetDescendants()) do -- For each descendant of the monsters folder
                addto(v) -- Add a highlight to the descendant
            end

            workspace.Monsters.DescendantAdded:Connect(
                function(v) -- When a descendant is added to the monsters folder
                    addto(v) -- Add a highlight to the descendant
                end
            )

            ----Player esp----

            _G.FriendColor = Color3.fromRGB(0, 0, 255)
            _G.EnemyColor = Color3.fromRGB(255, 0, 0)
            _G.UseTeamColor = true

            --------------------------------------------------------------------
            local Holder = Instance.new("Folder", game.CoreGui)
            Holder.Name = "ESP"

            local Box = Instance.new("BoxHandleAdornment")
            Box.Name = "nilBox"
            Box.Size = Vector3.new(1, 2, 1)
            Box.Color3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
            Box.Transparency = 0.7
            Box.ZIndex = 0
            Box.AlwaysOnTop = false
            Box.Visible = false

            local NameTag = Instance.new("BillboardGui")
            NameTag.Name = "nilNameTag"
            NameTag.Enabled = false
            NameTag.Size = UDim2.new(0, 200, 0, 50)
            NameTag.AlwaysOnTop = true
            NameTag.StudsOffset = Vector3.new(0, 1.8, 0)
            local Tag = Instance.new("TextLabel", NameTag)
            Tag.Name = "Tag"
            Tag.BackgroundTransparency = 1
            Tag.Position = UDim2.new(0, -50, 0, 0)
            Tag.Size = UDim2.new(0, 300, 0, 20)
            Tag.TextSize = 15
            Tag.TextColor3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
            Tag.TextStrokeColor3 = Color3.new(0 / 255, 0 / 255, 0 / 255)
            Tag.TextStrokeTransparency = 0.4
            Tag.Text = "nil"
            Tag.Font = Enum.Font.SourceSansBold
            Tag.TextScaled = false

            local LoadCharacter = function(v)
                repeat
                    wait()
                until v.Character ~= nil
                v.Character:WaitForChild("Humanoid")
                local vHolder = Holder:FindFirstChild(v.Name)
                vHolder:ClearAllChildren()
                local b = Box:Clone()
                b.Name = v.Name .. "Box"
                b.Adornee = v.Character
                b.Parent = vHolder
                local t = NameTag:Clone()
                t.Name = v.Name .. "NameTag"
                t.Enabled = true
                t.Parent = vHolder
                t.Adornee = v.Character:WaitForChild("Head", 5)
                if not t.Adornee then
                    return UnloadCharacter(v)
                end
                t.Tag.Text = v.Name
                b.Color3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
                t.Tag.TextColor3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
                local Update
                local UpdateNameTag = function()
                    if
                        not pcall(
                            function()
                                v.Character.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
                                local maxh = math.floor(v.Character.Humanoid.MaxHealth)
                                local h = math.floor(v.Character.Humanoid.Health)
                            end
                        )
                     then
                        Update:Disconnect()
                    end
                end
                UpdateNameTag()
                Update = v.Character.Humanoid.Changed:Connect(UpdateNameTag)
            end

            local UnloadCharacter = function(v)
                local vHolder = Holder:FindFirstChild(v.Name)
                if
                    vHolder and
                        (vHolder:FindFirstChild(v.Name .. "Box") ~= nil or
                            vHolder:FindFirstChild(v.Name .. "NameTag") ~= nil)
                 then
                    vHolder:ClearAllChildren()
                end
            end

            local LoadPlayer = function(v)
                local vHolder = Instance.new("Folder", Holder)
                vHolder.Name = v.Name
                v.CharacterAdded:Connect(
                    function()
                        pcall(LoadCharacter, v)
                    end
                )
                v.CharacterRemoving:Connect(
                    function()
                        pcall(UnloadCharacter, v)
                    end
                )
                v.Changed:Connect(
                    function(prop)
                        if prop == "TeamColor" then
                            UnloadCharacter(v)
                            wait()
                            LoadCharacter(v)
                        end
                    end
                )
                LoadCharacter(v)
            end

            local UnloadPlayer = function(v)
                UnloadCharacter(v)
                local vHolder = Holder:FindFirstChild(v.Name)
                if vHolder then
                    vHolder:Destroy()
                end
            end

            for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                spawn(
                    function()
                        pcall(LoadPlayer, v)
                    end
                )
            end

            game:GetService("Players").PlayerAdded:Connect(
                function(v)
                    pcall(LoadPlayer, v)
                end
            )

            game:GetService("Players").PlayerRemoving:Connect(
                function(v)
                    pcall(UnloadPlayer, v)
                end
            )

            game:GetService("Players").LocalPlayer.NameDisplayDistance = 0

            if _G.Reantheajfdfjdgs then
                return
            end

            _G.Reantheajfdfjdgs = ":suifayhgvsdghfsfkajewfrhk321rk213kjrgkhj432rj34f67df"

            local players = game:GetService("Players")
            local plr = players.LocalPlayer

            function esp(target, color)
                if target.Character then
                    if not target.Character:FindFirstChild("GetReal") then
                        local highlight = Instance.new("Highlight")
                        highlight.RobloxLocked = true
                        highlight.Name = "GetReal"
                        highlight.Adornee = target.Character
                        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        highlight.FillColor = color
                        highlight.Parent = target.Character
                    else
                        target.Character.GetReal.FillColor = color
                    end
                end
            end

            while task.wait() do
                for i, v in pairs(players:GetPlayers()) do
                    if v ~= plr then
                        esp(
                            v,
                            _G.UseTeamColor and v.TeamColor.Color or
                                ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor)
                        )
                    end
                end
            end
        end
    end
)

esp.MouseEnter:Connect(
    function()
        title.Text = "Monsters/Players/Items"
        title.TextColor3 = Color3.fromRGB(40, 89, 40)
    end
)

esp.MouseLeave:Connect(
    function()
        title.Text = "Welcome To Loody's GUI"
        title.TextColor3 = Color3.fromRGB(89, 34, 89)
    end
)

boxon.Name = "box"
boxon.Parent = main
boxon.BackgroundColor3 = Color3.fromRGB(0, 255, 238)
boxon.Position = UDim2.new(0.320224732, 0, 0.238095239, 0)
boxon.Size = UDim2.new(0, 64, 0, 22)
boxon.Font = Enum.Font.Fantasy
boxon.Text = "Fake-Box"
boxon.TextColor3 = Color3.fromRGB(0, 0, 0)
boxon.TextSize = 14.000
boxon.Visible = true
boxon.MouseButton1Down:connect(
    function()
        boxon.Visible = false
        local args = {
            [1] = "Equip"
        }

        game:GetService("ReplicatedStorage").communication.boxes.cl.BoxUpdated:FireServer(unpack(args))
        for i = 20, 1, -1 do
            title.Text = "'ReClick every match'"
            wait(0.3)
        end
        title.Text = "Welcome To Loody's GUI"
        boxon.Visible = true
    end
)

boxon.MouseEnter:Connect(
    function()
        title.Text = "FakeBox 'blue & orange'"
        title.TextColor3 = Color3.fromRGB(255, 0, 0)
    end
)

boxon.MouseLeave:Connect(
    function()
        title.Text = "Welcome To Loody's GUI"
        title.TextColor3 = Color3.fromRGB(89, 34, 89)
    end
)

redeem.Name = "redeem"
redeem.Parent = main
redeem.BackgroundColor3 = Color3.fromRGB(0, 255, 238)
redeem.Position = UDim2.new(0.140449435, 0, 0.625850379, 0)
redeem.Size = UDim2.new(0, 64, 0, 22)
redeem.Font = Enum.Font.Fantasy
redeem.Text = "Redeem.I-M"
redeem.TextColor3 = Color3.fromRGB(0, 0, 0)
redeem.TextSize = 14.000
redeem.TextWrapped = true
redeem.TextScaled = true
redeem.MouseButton1Down:connect(
    function()
        local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
        for i, v in pairs(game.Workspace:GetDescendants()) do
            if v:IsA("Part") and v.Name == "Trigger" and v.Parent.Parent.Name == "GroupBuildStructures" then
                firetouchinterest(plr, v, 0)
                wait(0.3)
                firetouchinterest(plr, v, 1)
            end
        end
    end
)

redeem.MouseEnter:Connect(
    function()
        title.Text = "Redeem items (TP)"
        title.TextColor3 = Color3.fromRGB(40, 89, 40)
    end
)

redeem.MouseLeave:Connect(
    function()
        title.Text = "Welcome To Loody's GUI"
        title.TextColor3 = Color3.fromRGB(89, 34, 89)
    end
)

bp.Name = "bp"
bp.Parent = main
bp.BackgroundColor3 = Color3.fromRGB(0, 255, 238)
bp.Position = UDim2.new(0.140449435, 0, 0.421768725, 0)
bp.Size = UDim2.new(0, 64, 0, 22)
bp.Font = Enum.Font.Fantasy
bp.Text = "light+Pop"
bp.TextColor3 = Color3.fromRGB(0, 0, 0)
bp.TextSize = 14.000
bp.Visible = true
bp.MouseButton1Down:connect(
    function()
        bp.Visible = false
        balloon.Visible = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/loodyxmer/Scripts/main/bright"))()
    end
)

bp.MouseEnter:Connect(
    function()
        title.Text = "Bright + balloon-pop"
        title.TextColor3 = Color3.fromRGB(40, 89, 40)
    end
)

bp.MouseLeave:Connect(
    function()
        title.Text = "Welcome To Loody's GUI"
        title.TextColor3 = Color3.fromRGB(89, 34, 89)
    end
)

balloon.Name = "balloon"
balloon.Parent = main
balloon.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
balloon.Position = UDim2.new(0.140449435, 0, 0.421768725, 0)
balloon.Size = UDim2.new(0, 64, 0, 22)
balloon.Font = Enum.Font.Fantasy
balloon.Text = "Balloon"
balloon.TextColor3 = Color3.fromRGB(0, 0, 0)
balloon.TextSize = 14.000
balloon.Visible = false
balloon.MouseButton1Down:connect(
    function()
        local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
        for i, v in pairs(game.Workspace.Map_Finale.BalloonObstacles:GetChildren()) do
            if v.Name == "balloon" and v:IsA("MeshPart") then
                firetouchinterest(plr, v, 0)
                wait(0.01)
                firetouchinterest(plr, v, 1)
            end
        end
    end
)

balloon.MouseEnter:Connect(
    function()
        title.Text = "Pops Final-balloons"
        title.TextColor3 = Color3.fromRGB(40, 89, 40)
    end
)

balloon.MouseLeave:Connect(
    function()
        title.Text = "Welcome To Loody's GUI"
        title.TextColor3 = Color3.fromRGB(89, 34, 89)
    end
)

Qtotp.Name = "Q to tp"
Qtotp.Parent = main
Qtotp.BackgroundColor3 = Color3.fromRGB(0, 255, 238)
Qtotp.Position = UDim2.new(0.49999997, 0, 0.421768755, 0)
Qtotp.Size = UDim2.new(0, 64, 0, 22)
Qtotp.Font = Enum.Font.Fantasy
Qtotp.Text = "(Q)tp+FEED"
Qtotp.TextColor3 = Color3.fromRGB(0, 0, 0)
Qtotp.TextSize = 12.000
Qtotp.MouseButton1Down:connect(
    function()
        Qtotp.Visible = false
        feed.Visible = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/loodyxmer/Scripts/main/Q-TO-TP"))()
    end
)

Qtotp.MouseEnter:Connect(
    function()
        title.Text = "(Q)tp & feed-'O'"
        title.TextColor3 = Color3.fromRGB(40, 89, 40)
    end
)

Qtotp.MouseLeave:Connect(
    function()
        title.Text = "Welcome To Loody's GUI"
        title.TextColor3 = Color3.fromRGB(89, 34, 89)
    end
)

feed.Name = "feed"
feed.Parent = main
feed.BackgroundColor3 = Color3.fromRGB(255, 165, 0)
feed.Position = UDim2.new(0.49999997, 0, 0.421768755, 0)
feed.Size = UDim2.new(0, 64, 0, 22)
feed.Font = Enum.Font.Fantasy
feed.Text = "FEED-O"
feed.TextColor3 = Color3.fromRGB(0, 0, 0)
feed.TextSize = 12.000
feed.Visible = false
feed.MouseButton1Down:connect(
    function()
        title.Text = "Feed = Done"
        title.TextColor3 = Color3.fromRGB(89, 34, 89)

        local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
        for i, v in pairs(game.Workspace.Map_C1.FoodDispenser:GetChildren()) do
            if v.Name == "Trigger" and v:IsA("Part") then
                firetouchinterest(plr, v, 0)
                wait(0.01)
                firetouchinterest(plr, v, 1)
            end
        end
        wait(3)
        title.Text = "Welcome To Loody's GUI"
        title.TextColor3 = Color3.fromRGB(89, 34, 89)
    end
)

feed.MouseEnter:Connect(
    function()
        title.Text = "Feed-orange"
        title.TextColor3 = Color3.fromRGB(40, 89, 40)
    end
)

feed.MouseLeave:Connect(
    function()
        title.Text = "Welcome To Loody's GUI"
        title.TextColor3 = Color3.fromRGB(89, 34, 89)
    end
)

collect.Name = "collect"
collect.Parent = main
collect.BackgroundColor3 = Color3.fromRGB(0, 255, 238)
collect.Position = UDim2.new(0.49999997, 0, 0.625850379, 0)
collect.Size = UDim2.new(0, 64, 0, 22)
collect.Font = Enum.Font.Fantasy
collect.Text = "Collect.I-M"
collect.TextColor3 = Color3.fromRGB(0, 0, 0)
collect.TextScaled = true
collect.TextSize = 14.000
collect.TextWrapped = true
collect.MouseButton1Down:connect(
    function()
        for i = 5, 1, -1 do
            wait(0.1)
            plr = game.Players.LocalPlayer.Character.HumanoidRootPart
            for i, v in pairs(game.Workspace:GetDescendants()) do
                if
                    v:IsA("Part") and v.Name == "TouchTrigger" and v.Parent.Name ~= "Default" and
                        v.Parent.Name ~= "Door_Default"
                 then
                    firetouchinterest(plr, v, 0)
                    wait(0)
                    firetouchinterest(plr, v, 1)
                end
            end
        end
    end
)

collect.MouseEnter:Connect(
    function()
        title.Text = "Collects 'map' items"
        title.TextColor3 = Color3.fromRGB(40, 89, 40)
    end
)

collect.MouseLeave:Connect(
    function()
        title.Text = "Welcome To Loody's GUI"
        title.TextColor3 = Color3.fromRGB(89, 34, 89)
    end
)

close.Name = "close"
close.Parent = main
close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
close.Position = UDim2.new(0.859550536, 0, 0, 0)
close.Size = UDim2.new(0, 25, 0, 29)
close.Font = Enum.Font.Highway
close.Text = "X"
close.TextColor3 = Color3.fromRGB(0, 0, 0)
close.TextSize = 20.000
close.Transparency = 0.2
close.MouseButton1Down:connect(
    function()
        main.Visible = false
        OP.Visible = true
    end
)

close.MouseEnter:Connect(
    function()
        title.Text = "Minimize Gui '-'"
        title.TextColor3 = Color3.fromRGB(10, 0, 101)
    end
)

close.MouseLeave:Connect(
    function()
        title.Text = "Welcome To Loody's GUI"
        title.TextColor3 = Color3.fromRGB(89, 34, 89)
    end
)

OP.Name = "Open"
OP.Parent = Looody
OP.BackgroundColor3 = Color3.fromRGB(0, 255, 238)
OP.Position = UDim2.new(0.0129749756, 0, 0.737051845, 0)
OP.Size = UDim2.new(0, 115, 0, 43)
OP.Font = Enum.Font.Fantasy
OP.Text = "OPEN"
OP.TextColor3 = Color3.fromRGB(0, 0, 0)
OP.TextScaled = true
OP.TextSize = 20.000
OP.Draggable = true
OP.Visible = true
OP.Active = true
OP.MouseButton1Down:connect(
    function()
        main.Visible = true
        OP.Visible = false
    end
)

OP.MouseEnter:Connect(
    function()
        OP.Text = "'Rainbow-Friends'"
        OP.TextColor3 = Color3.fromRGB(255, 0, 0)
        wait(0)
    end
)

OP.MouseLeave:Connect(
    function()
        OP.Text = "OPEN"
        OP.TextColor3 = Color3.fromRGB(0, 0, 0)
        wait(0)
    end
)
