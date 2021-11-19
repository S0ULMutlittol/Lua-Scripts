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