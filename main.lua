if not game:IsLoaded() then
    game.Loaded:Wait()
end

if invis == true then
wait(0.1)

fireclickdetector(workspace.Lobby["Ghost"].ClickDetector)

wait(0.1)

game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()

wait(0.3)
end

repeat task.wait() until game.Players.LocalPlayer.Character ~= nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
    repeat task.wait()
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.Lobby.Teleport1, 0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.Lobby.Teleport1, 1)
    until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
wait(0.5)
for i, v in pairs(game.Workspace.CandyCorns:GetChildren()) do
                if game.Players.LocalPlayer.Character:FindFirstChild("Head") and v:FindFirstChildWhichIsA("TouchTransmitter") then
                    firetouchinterest(game.Players.LocalPlayer.Character.Head, v, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character.Head, v, 1)
                end
            end

loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/serverhop/main/main.lua'))()
