local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local Average = Instance.new("TextLabel")
local True = Instance.new("TextLabel")
local Games = Instance.new("TextLabel")
local Recent = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.Position = UDim2.new(0, 30, 0.937655866, -130)
Frame.Size = UDim2.new(0, 225, 0, 150)

UICorner.Parent = Frame

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0535714366, 0, 0, 0)
Title.Size = UDim2.new(0, 64, 0, 26)
Title.Font = Enum.Font.SourceSans
Title.Text = "AutoCrash"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 17.000
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.TextYAlignment = Enum.TextYAlignment.Bottom

Average.Name = "Average"
Average.Parent = Frame
Average.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Average.BackgroundTransparency = 1.000
Average.BorderSizePixel = 0
Average.Position = UDim2.new(0.0535714291, 0, 0.216666669, 0)
Average.Size = UDim2.new(0, 212, 0, 21)
Average.Font = Enum.Font.SourceSans
Average.Text = "Betting average:"
Average.TextColor3 = Color3.fromRGB(255, 255, 255)
Average.TextSize = 14.000
Average.TextXAlignment = Enum.TextXAlignment.Left

True.Name = "True"
True.Parent = Frame
True.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
True.BackgroundTransparency = 1.000
True.BorderSizePixel = 0
True.Position = UDim2.new(0.0535714291, 0, 0.773333311, 0)
True.Size = UDim2.new(0, 212, 0, 21)
True.Font = Enum.Font.SourceSans
True.Text = "True average:"
True.TextColor3 = Color3.fromRGB(255, 255, 255)
True.TextSize = 14.000
True.TextXAlignment = Enum.TextXAlignment.Left

Games.Name = "Games"
Games.Parent = Frame
Games.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Games.BackgroundTransparency = 1.000
Games.BorderSizePixel = 0
Games.Position = UDim2.new(0.0535714291, 0, 0.356666654, 0)
Games.Size = UDim2.new(0, 212, 0, 21)
Games.Font = Enum.Font.SourceSans
Games.Text = "Games:"
Games.TextColor3 = Color3.fromRGB(255, 255, 255)
Games.TextSize = 14.000
Games.TextXAlignment = Enum.TextXAlignment.Left

Recent.Name = "Recent"
Recent.Parent = Frame
Recent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Recent.BackgroundTransparency = 1.000
Recent.BorderSizePixel = 0
Recent.Position = UDim2.new(0.0535714291, 0, 0.49666667, 0)
Recent.Size = UDim2.new(0, 212, 0, 21)
Recent.Font = Enum.Font.SourceSans
Recent.Text = "Recent:"
Recent.TextColor3 = Color3.fromRGB(255, 255, 255)
Recent.TextSize = 14.000
Recent.TextXAlignment = Enum.TextXAlignment.Left

Status.Name = "Status"
Status.Parent = Frame
Status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Status.BackgroundTransparency = 1.000
Status.BorderSizePixel = 0
Status.Position = UDim2.new(0.0535714291, 0, 0.636666656, 0)
Status.Size = UDim2.new(0, 212, 0, 21)
Status.Font = Enum.Font.SourceSans
Status.Text = "Status:"
Status.TextColor3 = Color3.fromRGB(50, 255, 50)
Status.TextSize = 14.000
Status.TextXAlignment = Enum.TextXAlignment.Left

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(1, -67, 1, -35)
TextButton.Size = UDim2.new(0, 60, 0, 25)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Disable"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 14.000

UICorner_2.Parent = TextButton

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextBox.Position = UDim2.new(0.702222228, 0, 0.546666622, 0)
TextBox.Size = UDim2.new(0, 60, 0, 25)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "Bet"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14.000

UICorner_3.Parent = TextBox

-- Scripts:

local function ISHA_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local games = 0
	local highest = 4
	local total = 0
	local t_total = 0
	wins = 0
	losses = 0
	running = true
	script.Parent.MouseButton1Down:Connect(function()
		running = false
		script.Parent.Parent.Parent:Destroy()
	end)
	local folder = script.Parent.Parent
	local t_average = 0
	local average = 1.2
	while wait() do
		if running == true then
		repeat wait() until game.ReplicatedStorage.SharedValues.CrashValues.Status.Value == 0
		local args = {
			[1] = tonumber(script.Parent.Parent.TextBox.Text) or 250
		}
	
		game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.CrashService.RF.Join:InvokeServer(unpack(args))
		repeat wait() until game.ReplicatedStorage.SharedValues.CrashValues.Status.Value == 2 or game.ReplicatedStorage.SharedValues.CrashValues.Status.Value == 3
		repeat wait() until game.ReplicatedStorage.SharedValues.CrashValues.Multiplier.Value >= average or game.ReplicatedStorage.SharedValues.CrashValues.Status.Value == 3
		if game.ReplicatedStorage.SharedValues.CrashValues.Status.Value == 2 then
			game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.CrashService.RF.Cashout:InvokeServer()
			end
		repeat wait() until game.ReplicatedStorage.SharedValues.CrashValues.Status.Value == 3
		games += 1
	
		if tonumber(game.ReplicatedStorage.SharedValues.CrashValues.Multiplier.Value) <= 2.5 then
			total += tonumber(game.ReplicatedStorage.SharedValues.CrashValues.Multiplier.Value)
	
		else
	
			total += 2.5
	
		end
	
		t_total += tonumber(game.ReplicatedStorage.SharedValues.CrashValues.Multiplier.Value)
	
		t_average = t_total/games
	
		t_average = tonumber(string.sub(tostring(t_average), 1,4))
		average = total/games
			average = tonumber(string.sub(tostring(average), 1,4))
			if game.ReplicatedStorage.SharedValues.CrashValues.Multiplier.Value >= average then
				script.Parent.Parent.Status.TextColor3 = Color3.fromRGB(50,255,50)
				folder.Status.Text = "Status: won"
				wins += 1
			else
				script.Parent.Parent.Status.TextColor3 = Color3.fromRGB(255,50,50)
				folder.Status.Text = "Status: lost" 
				losses += 1
			end
	
			
			folder.Recent.Text = "Recent: " .. game.ReplicatedStorage.SharedValues.CrashValues.Multiplier.Value
			folder.Games.Text = "Games: " .. games
			folder.True.Text = "True average: " ..  t_average
			folder.Average.Text = "Average: " .. average
			pcall(function()
				if not isfile("UpdatedCrashAV.txt") then
					writefile("UpdatedCrashAV.txt","")	
				end
				
local percent = wins / losses
				write_s = "Average: " ..  tostring(average) .. " Losses: " .. tostring(losses) .. " Wins: " .. tostring(wins) .. " Win rate: " tostring(string.sub(tostring(percent*100), 1,4)) .. " end"
					delfile("UpdatedCrashAV.txt")
				writefile("UpdatedCrashAV.txt",write_s)
			end)
			
		end
	end
end
coroutine.wrap(ISHA_fake_script)()
