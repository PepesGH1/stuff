getgenv().Settings = {
    Speed = 1450,
    Jump = 3,  
}

local FirstSlider = FirstPage.AddSlider("Walk Speed", {Min = 1450, Max = 12000, Def = 1450}, function(Value)
    Settings.Speed = Value
end)
local FirstSlider = FirstPage.AddSlider("Jump Power", {Min = 3, Max = 25, Def = 3}, function(Value)
    Settings.Jump = Value
end)

local old
old = hookmetamethod(game,"__namecall",newcclosure(function(self,...)
    local Args = {...}
    local method = getnamecallmethod()
    if tostring(self) == 'Communicator' and method == "InvokeServer" and Args[1] == "update" then
        return Settings.Speed, Settings.Jump 
    end
    return old(self,...)
end))
