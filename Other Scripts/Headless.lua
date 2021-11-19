game.Players.LocalPlayer.Character.Head.Transparency = 1

for i,v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do 

	if (v:IsA("Decal")) then
		v:Destroy()
	end
end