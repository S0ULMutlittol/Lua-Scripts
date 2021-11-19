local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Elite", 5013109572)


local themes = {
    Background = Color3.fromRGB(24, 24, 24),
    Glow = Color3.fromRGB(0, 0, 0),
    Accent = Color3.fromRGB(10, 10, 10),
    LightContrast = Color3.fromRGB(20, 20, 20),
    DarkContrast = Color3.fromRGB(14, 14, 14),  
    TextColor = Color3.fromRGB(255, 255, 255)
}

-- Main
local page = venyx:addPage("Main", 5012544693)
local section1 = page:addSection("Toggels")
local section2 = page:addSection("Buttons")

section1:addToggle("Unban", nil, function(state)
    if state then
        _G.LoopUnban = true 
        loadstring(game:HttpGet('https://raw.githubusercontent.com/DaHoodScripts/NoUScripts/main/NewUnban'))()
    else
        _G.LoopUnban = false 
        loadstring(game:HttpGet('https://raw.githubusercontent.com/DaHoodScripts/NoUScripts/main/NewUnban'))()

    end
end)

section1:addToggle("Mute/Unmute all audios", nil, function(state)
    if state then
        loadstring(game:HttpGet('https://pastebin.com/raw/fXaWvXka'))() 
    else
        loadstring(game:HttpGet('https://pastebin.com/raw/mqxsm610'))()
    end
end)
    


section2:addButton("Get Knife + Lockpick", function()
    local Player = game.Players.LocalPlayer
    local playerHead = game.Players.LocalPlayer.Character.Head

    for i, v in pairs(game:GetService("Workspace").Ignored:GetDescendants()) do

        if v.Name == "TouchInterest" and v.Parent then

            firetouchinterest(playerHead, v.Parent, 0)
            wait(0.1)
            firetouchinterest(playerHead, v.Parent, 1)
        end
    end 
end)

section2:addButton("Animation Gamepass",function()
    loadstring(game:HttpGet('https://pastebin.com/raw/UGNNNznm'))()
end)

section2:addButton("Auto stomp (", function ()
        while true do
        wait(.05)
        game.ReplicatedStorage.MainEvent:FireServer("Stomp")
        end
end)

section2:addButton("Trash Talk J", function ()
    local plr = game.Players.LocalPlayer
    repeat wait() until plr.Character
    local char = plr.Character

    local garbage = {
    "ur bad";
    "rat";
    "ez";
    "my grandma has more skill than you";
    "gun user";
    "bunny hopper";
    "trash";
    "LOL";
    "LMAO";
    "imagine being you right now";
    "xd";
    "stinky head";
    "you lose";
    "why do you even try";
    "I didn't think being this bad was possible";
    "leave";
    "no skill";
    "ahahahahahahaha";
    "bad";
    "you're nothing";
    "lol";
    "so trash";
    "so bad";
    "ur salty";
    "salty";
    "look he's mad";
    "cry more";
    "keep crying";
    "cry baby";
    "hahaha I won";
    "no one likes u";
    "darn";
    "thank you for your time";
    "you were so close!";
    "better luck next time!";
    "rodent";
    "XD";
    "/e dab";
    "./e dab";
    "time to take out the trash";
    "did you get worse?";
    "I'm surprised you haven't quit yet";










    }


    function TrashTalk(inputObject, gameProcessedEvent)
        if inputObject.KeyCode == Enum.KeyCode.J and gameProcessedEvent == false then        
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                garbage[math.random(1,#garbage)],
                "All"
            )
        end
    end
 
    game:GetService("UserInputService").InputBegan:connect(TrashTalk)
    -- body
end)

-- Avatar
local Avatar = venyx:addPage("Avatar", 5012544693)
local Avatar1 = Avatar:addSection("Avatar")
local Fov = Avatar:addSection("Fov")


Avatar1:addButton("Korblox", function()
        local ply = game.Players.LocalPlayer
        local chr = ply.Character
        chr.RightLowerLeg.MeshId = "902942093"
        chr.RightLowerLeg.Transparency = "1"
        chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
        chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
        chr.RightFoot.MeshId = "902942089"
        chr.RightFoot.Transparency = "1"
end)
    
    
Fov:addSlider("Change FOV",70,120,0,function(value)
            local amount = value  

            game:GetService'Workspace'.Camera.FieldOfView = amount
        end)




Avatar1:addButton("Headless", function()
    game.Players.LocalPlayer.Character.Head.Transparency = 1

    for i,v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do 

        if (v:IsA("Decal")) then
            v:Destroy()
        end
    end
    
   end)

Avatar1:addButton("reset", function()
    game.Players.LocalPlayer.Character.Head:Destroy()
end)



--Movement
local Movement = venyx:addPage("Movement", 5012544693)
local Movement1 = Movement:addSection("Movement")

Movement1:addButton("Noclip Z", function()
    noclip = false
    game:GetService('RunService').Stepped:connect(function()
    if noclip then
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    end)
    plr = game.Players.LocalPlayer
    mouse = plr:GetMouse()
    mouse.KeyDown:connect(function(key)
    if key == "z" then
        noclip = not noclip
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    end)
end)

Movement1:addButton("Speed", function()
    game.Players.LocalPlayer.Character.Humanoid.Name = "BuyLinoriaNow"
    game.Players.LocalPlayer.Character.BuyLinoriaNow.WalkSpeed = 200
end)

Movement1:addButton("Ctrl + Click to teleport", function()
    local UIS = game:GetService("UserInputService")

    local Player = game.Players.LocalPlayer
    local Mouse = Player:GetMouse()


    function GetCharacter()
        return game.Players.LocalPlayer.Character
    end

    function Teleport(pos)
        local Char = GetCharacter()
        if Char then
            Char:MoveTo(pos)
        end
    end
    



    UIS.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
            Teleport(Mouse.Hit.p)
        end
    end)

    end)


Movement1:addButton("Fly X", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/Mv3V5XKY'))()
end)
 -- Selling tools   
local SellingTools = venyx:addPage("Selling Tools", 5012544693)
local Selling1 = SellingTools:addSection("Tools")



Selling1:addButton("Crash", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/lerkermer/lua-projects/master/SuperCustomServerCrasher'))()
end)

Selling1:addButton("Autodrop", function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Raycodex/Exploiting/main/Roblox/Da%20Hood%20Auto%20Cash%20Drop"), true))()
end)

--Autofarm

local Autofarms = venyx:addPage("Autofarms", 5012544693)
local Autofarms1 = Autofarms:addSection("Autofarms")

Autofarms1:addButton("Autofarm Cash", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/74VJ07iY", true))()
end)

Autofarms1:addButton("Cop Autofarm", function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Raycodex/Exploiting/main/Roblox/Da%20Hood%20Auto%20Arrest"), true))()

end)


















local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do 
    colors:addColorPicker(theme, color, function(color3)
        venyx:setTheme(theme, color3)
    end)
end



colors:addKeybind("Toggle Keybind", Enum.KeyCode.One, function()
    print("Activated Keybind")
    venyx:toggle()
end, function()
    print("Changed Keybind")
end)




venyx:SelectPage(venyx.pages[1], true)