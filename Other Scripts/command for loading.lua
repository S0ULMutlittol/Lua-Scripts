local Player = game.Players.LocalPlayer
local playerHead = game.Players.LocalPlayer.Character.Head


Player.Chatted:connect(function(cht)
    if cht:match("your command") then
            "your script"
    end
end)
