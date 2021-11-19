
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window  = Library.CreateLib("Elite", "DarkTheme")
local Tab     = Window:NewTab("Main")
local Section = Tab:NewSection("Toggles")

Section:NewToggle("Unban", "Toggles the unban , if it should be looped or not", function(state)
    if state then
        _G.LoopUnban = true 
        loadstring(game:HttpGet('https://raw.githubusercontent.com/DaHoodScripts/NoUScripts/main/NewUnban'))()
    else
        _G.LoopUnban = false 
        loadstring(game:HttpGet('https://raw.githubusercontent.com/DaHoodScripts/NoUScripts/main/NewUnban'))()

    end
end)


local Section = Tab:NewSection("Buttons")
Section:NewButton("Get knifes + lockpicks","gives you a knife and a lockpick picked up from the ground!", function ()
    local Player = game.Players.LocalPlayer
    local playerHead = game.Players.LocalPlayer.Character.Head


    Player.Chatted:connect(function(cht)
        if cht:match(":give") then
            for i, v in pairs(game:GetService("Workspace").Ignored:GetDescendants()) do
                if v.Name == "TouchInterest" and v.Parent then
                    firetouchinterest(playerHead, v.Parent, 0)
                    wait(0.1)
                    firetouchinterest(playerHead, v.Parent, 1)
                end
            end 
        end
    end)
end)






Tab = Window:NewTab("Avatar")
local Section = Tab:NewSection("Main")
Section:NewButton("Korblox","Gives you korblox (client sided)",function ()
    local ply = game.Players.LocalPlayer
        local chr = ply.Character
        chr.RightLowerLeg.MeshId = "902942093"
        chr.RightLowerLeg.Transparency = "1"
        chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
        chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
        chr.RightFoot.MeshId = "902942089"
        chr.RightFoot.Transparency = "1"

    
end)
    


Section:NewButton("Headles","gives you headless", function ()
    game.Players.LocalPlayer.Character.Head.Transparency = 1

    for i,v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do 

        if (v:IsA("Decal")) then
            v:Destroy()
        end
    end
    
   end)

Section:NewButton("reset","Resets you",function()
    game.Players.LocalPlayer.Character.Head:Destroy()
end)

local Section = Tab:NewSection("Fov")

Section:NewButton("70 FOV [Normal FOV]","Makes you play at 70 fov", function ()
    workspace.CurrentCamera.FieldOfView = 70
end)

Section:NewButton("90 FOV ","Makes you play at 90 fov", function ()
    workspace.CurrentCamera.FieldOfView = 90
end)


Section:NewButton("120 FOV","Makes you play at 120 fov", function ()
    workspace.CurrentCamera.FieldOfView = 120
end)

local Section = Tab:NewSection("Animation Changer")
Section:NewButton("Coming soon...")


local Tab = Window:NewTab("Movement")
local Section = Tab:NewSection("Main")
Section:NewButton("Ctrl + click to teleport", "Teleports you", function()
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

Section:NewButton("Noclip Z", "Noclips you", function()
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






Tab           = Window:NewTab("Autofarms")
local Section = Tab:NewSection("Farms")
Section:NewButton("Autofarm", "Autofarms cash for you", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/74VJ07iY", true))()
end)

Section:NewButton("Cop Autofarm", "Auto arrest's the players for you", function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Raycodex/Exploiting/main/Roblox/Da%20Hood%20Auto%20Arrest"), true))()

end)
    


Tab           = Window:NewTab("Selling Tools")
local Section = Tab:NewSection("Tools")
Section:NewButton("Crash", "Crashes the server", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/lerkermer/lua-projects/master/SuperCustomServerCrasher'))()
end)

Section:NewToggle("Cash Aura", "Autopickups cash around you", function(state)
    if state then
        print("still in progress...")
    else
        print("Coming soon...")

    end
        
end)

Section:NewButton("Autodrop","Autodrops cash for you",function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Raycodex/Exploiting/main/Roblox/Da%20Hood%20Auto%20Cash%20Drop"), true))()
end)


Tab           = Window:NewTab("Teleports")
local Section = Tab:NewSection("Teleports")
Section:NewButton("Coming Soon!","This will come soon", function ()
    print("coming soon;)")
    
end)


Tab           = Window:NewTab("Autobuy")
local Section = Tab:NewSection("Autobuy")
Section:NewButton("Coming Soon!","This will come soon", function ()
    print("coming soon")
    
end)




Tab           = Window:NewTab("Credits")
local Section = Tab:NewSection("Autofarm")
Section:NewButton("Cop Autofarm: Raycodex","This is who made the autofarms",function()
    print("Raycodex")    
end)

Section:NewButton("Normal Autofarm: S0UL","his is who made the autofarms", function ()
    print("S0UL#7416")
end)


local Section = Tab:NewSection("Selling Tools")
Section:NewButton("Auto Drop: Raycodex","This is who made the sellings tools", function()
    print("Ok")
end)

Section:NewButton("Crash: Swagmode","This is who made the sellings tools", function()
    print("sussy")
end)



local Section = Tab:NewSection("Teleports")
Section:NewButton("Not finished","Coming Soon!",function()
    print("Teleports coming Soon!")
end)

local Section = Tab:NewSection("Avatar")
Section:NewButton("S0UL#7416","Avatar functions made by S0UL",function()
    print("Avatar made by S0UL")
end)

local Section = Tab:NewSection("Movement")
Section:NewButton("S0UL#7416","Movement functions made by S0UL",function()
    print("Movement made by S0UL")
end)