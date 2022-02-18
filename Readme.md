## lua explanations by SoloDev
```lua
print("thanks for checking out my profile")
```

## printing
```lua

print("you can print anything here")
```
## variables
```lua
local c  = "" -- the name can be anything (e.g local egg = "bla bla bla")
local d = can be a game id too or sum things! -- if you try to run this it will give you an error so add numbers in there or sum things
local function c() -- you can make functions too!
  print("b")
end)
```
## printing/using variables
```lua
local d = "c"
local f = 2
local c = 3
local function c() -- you can make functions too!(you can change the c to what you want)
  print("b")
end)

print(d) -- prints whats in the string in the variable in d
print(f + c) -- does math for you lol (2 + 3)
c() -- runs the c function(if you set it to anything other you need to change it then!)
```
## tables
```lua 
local table = {
  "table_1",
  "table_2"
}

print(table[1]) -- prints table_1 and if you do print(table[2]), it will print table_2
--------------------------------------------------------------------------------------------

mytable = {}


mytable[1]= "Lua" -- sets the first string of the table to Lua
```
## if statements
```lua

local b = false; -- says if its true or false

if b == false then -- if it b is false then it will print Hello World
    print("Hello World")
 end

local name = game.Players.LocalPlayer.Name -- the name of the localplayer (only for roblox games!)

if name == "idk" then -- if the name from the roblox player  is idk it will print whitelisted or sum thing, you can use this as an beginner whitelist!
  print("whitelisted or sum things")
end
```
## loops with while
```lua
while true do 
  print("idk make a loop or sum") -- loops print: idk make a loop or sum
  wait() -- do not remove this or else your game will crash
end
```
## getgenv (only used for exploits)
```lua
-- this for roblox games (not main lua)
getgenv().c = true;

while getgenv().c = true do -- you can use this to loop an function (you can stop it by changing getgenv().c to false!
  print("true")
  wait()
end
if getgenv().c == false then -- if getgenv().c = false it will print false
  print("false")
end
```

## part touched founction 
```lua
-- this for roblox games (not main lua)
local part = script.Parent.Parent.partnamehere -- this is if you script is in workspace
local part_other = game.Workspace.partnamehere -- if you use a script that is outside of Workspace

part.Touched:Connect(function() -- connects a function when the part is touched!
	wait(1) -- only added  the wait so it won't spamm Hello World but you can remove it!
	print("Hello World!") 
end)
```
## scripts for ui buttons
```lua
-- this for roblox games (not main lua)
local button = script.Parent.Parent.button name here -- button
local button_2 = script.Parent.Parent.framenamehere.buttonamehere -- if this button does not show up use this!

button.MouseButton1Down:Connect(function() -- connects a function when the button is clicked
	print("ok") -- if the button is clicked it will print ok
end)
```
