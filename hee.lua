if not game:IsLoaded() then 
    repeat game.Loaded:Wait() 
until game:IsLoaded() end

repeat wait()
    wait(10)
until game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam").Visible == true

spawn(function()
    while wait(3) do
        game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.Size = UDim2.new(0, 10000, 0, 10000)
        game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.Position = UDim2.new(-6, 0, -5, 0)
        game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ImageTransparency = 1
        if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam").Visible == false then
            wait(2)
            break
        end
    end
end)

spawn(function()
    while wait() do
        game:GetService'VirtualUser':Button1Down(Vector2.new(99999,99999))
        game:GetService'VirtualUser':Button1Up(Vector2.new(99999,99999))
        if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam").Visible == false then
            game:GetService'VirtualUser':Button1Down(Vector2.new(99999,99999))
            game:GetService'VirtualUser':Button1Up(Vector2.new(99999,99999))
            wait(2)
            break
        else
            game:GetService'VirtualUser':Button1Down(Vector2.new(99999,99999))
            game:GetService'VirtualUser':Button1Up(Vector2.new(99999,99999))
        end
    end
end)
