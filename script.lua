local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Watete Script Texting Simulator", "DarkTheme")

local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("Auto Farm")
local x = 1
local t = 0
local t1 = 0
local t2 = 0
Section:NewToggle("AutoFarm", "Auto Texting", function(state)
    if state then
		x = x - 1
		while x < 1 do
			wait()
			local args = {
		[1] = "Tablet"
	}

	game:GetService("ReplicatedStorage").Events.SendTexts:FireServer(unpack(args))
		end
    else
	x = x + 1
    end
end)

Section:NewDropdown("Auto Buy Egg ! its buy full inventory of pets !", "Auto Buy Egg + Auto Full Inv", {"Emoji Egg (500 Diamonds)", "Super Emoji (5000 Diamonds)", "AI Egg"}, function(currentOption)
    while currentOption == "Emoji Egg (500 Diamonds)" and t < 100 do
		wait()
		t = t + 1
		local args = {
			[1] = game:GetService("ReplicatedStorage").IngameItems.Crates:FindFirstChild("1")
		}

		game:GetService("ReplicatedStorage").Events.PurchaseCrate:FireServer(unpack(args))
	end
	while currentOption == "Super Emoji (5000 Diamonds)" and t1 < 100 do
		wait()
		t1 = t1 + 1
		local args = {
			[1] = game:GetService("ReplicatedStorage").IngameItems.Crates:FindFirstChild("2")
		}

		game:GetService("ReplicatedStorage").Events.PurchaseCrate:FireServer(unpack(args))
	end

	while currentOption == "AI Egg (100000 Diamonds)" and t2 < 100 do
		wait()
		t2 = t2 + 1
		local args = {
			[1] = game:GetService("ReplicatedStorage").IngameItems.Crates:FindFirstChild("3")
		}

		game:GetService("ReplicatedStorage").Events.PurchaseCrate:FireServer(unpack(args))
	end
end)

local Section = Tab:NewSection("More Eggs cooming soon")

local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("Player")
Section:NewSlider("WalkSpeed", "Change your walk speed", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section:NewSlider("JumpPower", "Change your jump power", 500, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
Section:NewButton("E to noclip", "press e to noclip", function()
    local StealthMode = true -- If game has an anticheat that checks the logs

local Indicator

if not StealthMode then
    local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
    print("NOCLIP: Press E to Activate")
    Indicator = Instance.new("TextLabel", ScreenGui)
    Indicator.AnchorPoint = Vector2.new(0, 1)
    Indicator.Position = UDim2.new(0, 0, 1, 0)
    Indicator.Size = UDim2.new(0, 200, 0, 50)
    Indicator.BackgroundTransparency = 1
    Indicator.TextScaled = true
    Indicator.TextStrokeTransparency = 0
    Indicator.TextColor3 = Color3.new(0, 0, 0)
    Indicator.TextStrokeColor3 = Color3.new(1, 1, 1)
    Indicator.Text = "Noclip: Enabled"
end

local noclip = false
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local mouse = player:GetMouse()

mouse.KeyDown:Connect(function(key)
    if key == "e" then
        noclip = not noclip

        if not StealthMode then
            Indicator.Text = "Noclip: " .. (noclip and "Enabled" or "Disabled")
        end
    end
end)

while true do
    player = game.Players.LocalPlayer
    character = player.Character

    if noclip then
        for _, v in pairs(character:GetDescendants()) do
            pcall(function()
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end)
        end
    end

    game:GetService("RunService").Stepped:wait()
end
end)
Section:NewButton("Btools", "Give you  btools", function()
    Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 4
Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 3
Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 2
Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 1
end)



Section:NewButton("Fly(credit to me_ozoneYT)", "Give you fly gui", function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()

end)
