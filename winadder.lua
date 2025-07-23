local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function localKick(reason)
    -- Tworzymy GUI
    local screenGui = Instance.new("ScreenGui")
    screenGui.ResetOnSpawn = false
    screenGui.Name = "LocalKickGui"
    screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0.4, 0, 0.3, 0)
    frame.Position = UDim2.new(0.3, 0, 0.35, 0)
    frame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
    frame.BorderSizePixel = 0
    frame.Parent = screenGui

    local textLabel = Instance.new("TextLabel")
    textLabel.Text = "Zostałeś wyrzucony:\n" .. reason
    textLabel.Size = UDim2.new(1, 0, 0.7, 0)
    textLabel.Position = UDim2.new(0, 0, 0, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.TextScaled = true
    textLabel.Parent = frame

    local button = Instance.new("TextButton")
    button.Text = "Wyjdź z gry"
    button.Size = UDim2.new(1, 0, 0.3, 0)
    button.Position = UDim2.new(0, 0, 0.7, 0)
    button.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
    button.TextColor3 = Color3.new(1, 1, 1)
    button.TextScaled = true
    button.Parent = frame

    button.MouseButton1Click:Connect(function()
        game:Shutdown() -- tylko działa w lokalnym testowaniu
    end)
end

-- Wywołanie (przykład):
localKick("Naruszenie zasad: używanie exploita")
