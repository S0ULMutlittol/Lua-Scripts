local playerHead = game.Players.LocalPlayer.Character.Head

for i, v in pairs(game:GetService("Workspace").Ignored:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
       firetouchinterest(playerHead, v.Parent, 0)
       wait(0.1)
       firetouchinterest(playerHead, v.Parent, 1)
    end
end