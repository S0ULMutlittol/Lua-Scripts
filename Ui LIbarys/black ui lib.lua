local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/aaaa"))()

local UI = GUI:CreateWindow("ZSI","Thanks for choosing ZSI!")

local Home = UI:addPage("Home",1,true,6)



-- Just an example of how you would actually use it i guess

local LP = UI:addPage("Player",2,false,6)







LP:addButton("Reset",function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)

LP:addButton("Korblox",function()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    chr.RightLowerLeg.MeshId = "902942093"
    chr.RightLowerLeg.Transparency = "1"
    chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
    chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
    chr.RightFoot.MeshId = "902942089"
    chr.RightFoot.Transparency = "1"
end)

LP:addButton("Headless",function()
    game.Players.LocalPlayer.Character.Head.Transparency = 1

    for i,v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do 

        if (v:IsA("Decal")) then
            v:Destroy()
        end
    end
end)



LP:addButton("Heal Urself [works in most games!]",function()
    
            game.Players.LocalPlayer.Character.Humanoid.Health = 100
end)



local LP1 = UI:addPage("Movement",3,false,6)
LP1:addLabel("Main","Note: THESE SCRIPT ARE BANNABLE/NOT WORKING IN GAMES WITH ANTICHEATS")

LP1:addToggle("Sprint",function(value)
    if value == false then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 30
    end
end)



LP1:addSlider("WalkSpeed",16,150,function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)


LP1:addTextBox("Jump Power / 50 is default","Number here",function(value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)



LP1:addButton("Ctrl + Click to teleport [Works in Da Hood]", function()
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


LP1:addButton("Fly X [Woorks in Da Hood]", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/Mv3V5XKY'))()
end)

LP1:addButton("Noclip Z [Woorks in Da Hood]", function()
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

LP1:addSlider("Change FOV",70,120,0,function(value)
    local amount = value  

    game:GetService'Workspace'.Camera.FieldOfView = amount
end)

LP1:addLabel("Da Hood","Movement hacks bypassed on da hood")
LP1:addToggle("Speed" , nil , function (state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.Name = "BuyLinoriaNow"
        game.Players.LocalPlayer.Character.BuyLinoriaNow.WalkSpeed = 200 
    else
        game.Players.LocalPlayer.Character.Humanoid.Name = "BuyLinoriaNow"
        game.Players.LocalPlayer.Character.BuyLinoriaNow.WalkSpeed = 50
    end
    
end)


local LP2 = UI:addPage("Supported Games",3,false,6)