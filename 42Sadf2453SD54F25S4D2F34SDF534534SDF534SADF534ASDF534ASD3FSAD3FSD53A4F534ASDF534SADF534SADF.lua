local RawrHubEG = Instance.new("ScreenGui")
local DraggableThng = Instance.new("ImageButton")
local TextLabel = Instance.new("TextLabel")
local MainThing = Instance.new("ImageButton")
local Farm = Instance.new("ImageButton")
local TextLabel_2 = Instance.new("TextLabel")
local NoFarm = Instance.new("ImageButton")
local TextLabel_3 = Instance.new("TextLabel")
local ESP = Instance.new("ImageButton")
local TextLabel_4 = Instance.new("TextLabel")
local Credits = Instance.new("ImageButton")
local TextLabel_5 = Instance.new("TextLabel")
local MainThingLine = Instance.new("Frame")

RawrHubEG.Name = "RawrHub(EG)"
RawrHubEG.Parent = game.CoreGui
RawrHubEG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

DraggableThng.Name = "DraggableThıng"
DraggableThng.Parent = RawrHubEG
DraggableThng.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
DraggableThng.BackgroundTransparency = 1.000
DraggableThng.Position = UDim2.new(0.863850951, 0, 0.804668307, 0)
DraggableThng.Size = UDim2.new(0.126000002, 0, 0.179665834, 0)
DraggableThng.Image = "rbxassetid://1511196841"
DraggableThng.ImageColor3 = Color3.fromRGB(18, 18, 18)
DraggableThng.ScaleType = Enum.ScaleType.Slice
DraggableThng.SliceCenter = Rect.new(9, 11, 91, 89)
DraggableThng.Draggable = true

TextLabel.Parent = DraggableThng
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(1, 0, 0.114184164, 0)
TextLabel.Font = Enum.Font.Highway
TextLabel.Text = "Eg!"
TextLabel.TextColor3 = Color3.fromRGB(255, 107, 211)
TextLabel.TextScaled = true
TextLabel.TextSize = 30.000
TextLabel.TextWrapped = true

MainThing.Name = "MainThing"
MainThing.Parent = DraggableThng
MainThing.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
MainThing.BackgroundTransparency = 1.000
MainThing.Position = UDim2.new(0, 0, 0.157874346, 0)
MainThing.Size = UDim2.new(1.00000048, 0, 0.842125952, 0)
MainThing.Image = "rbxassetid://1511196841"
MainThing.ImageColor3 = Color3.fromRGB(34, 34, 34)
MainThing.ScaleType = Enum.ScaleType.Slice
MainThing.SliceCenter = Rect.new(9, 11, 91, 89)

Farm.Name = "Farm"
Farm.Parent = MainThing
Farm.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
Farm.BackgroundTransparency = 1.000
Farm.Position = UDim2.new(0.0543920659, 0, 0.0272965059, 0)
Farm.Size = UDim2.new(0.894614637, 0, 0.196499988, 0)
Farm.Image = "rbxassetid://1511196841"
Farm.ImageColor3 = Color3.fromRGB(255, 107, 211)
Farm.ScaleType = Enum.ScaleType.Slice
Farm.SliceCenter = Rect.new(9, 11, 91, 89)
Farm.MouseButton1Down:connect(function()
_G.loop = true
warn("loop: true")
while _G.loop do
    wait()
    for _,i in ipairs(game.Workspace:GetChildren()) do
        if tostring(i.Name) == "collectables" then
            if tostring(i.ClassName) == "Model" then
                for _,v in pairs(i:GetChildren()) do
                    if tostring(v:GetChildren()[2].Name) ~= "coin" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:GetChildren()[2].CFrame 
                    end
                end
            end
        end
    end
end
end)

TextLabel_2.Parent = Farm
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Size = UDim2.new(1, 0, 0.924271226, 0)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Start Farm"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 30.000
TextLabel_2.TextStrokeTransparency = 0.500
TextLabel_2.TextWrapped = true

NoFarm.Name = "NoFarm"
NoFarm.Parent = MainThing
NoFarm.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
NoFarm.BackgroundTransparency = 1.000
NoFarm.Position = UDim2.new(0.0543920659, 0, 0.282900929, 0)
NoFarm.Size = UDim2.new(0.895000041, 0, 0.196357846, 0)
NoFarm.Image = "rbxassetid://1511196841"
NoFarm.ImageColor3 = Color3.fromRGB(255, 107, 211)
NoFarm.ScaleType = Enum.ScaleType.Slice
NoFarm.SliceCenter = Rect.new(9, 11, 91, 89)
NoFarm.MouseButton1Down:connect(function()
_G.loop = false
warn("loop: false")
end)

TextLabel_3.Parent = NoFarm
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Size = UDim2.new(1, 0, 0.924271226, 0)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Stop Farm"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 30.000
TextLabel_3.TextStrokeTransparency = 0.500
TextLabel_3.TextWrapped = true

ESP.Name = "ESP"
ESP.Parent = MainThing
ESP.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
ESP.BackgroundTransparency = 1.000
ESP.Position = UDim2.new(0.0543920659, 0, 0.546369672, 0)
ESP.Size = UDim2.new(0.895000041, 0, 0.196357846, 0)
ESP.Image = "rbxassetid://1511196841"
ESP.ImageColor3 = Color3.fromRGB(255, 107, 211)
ESP.ScaleType = Enum.ScaleType.Slice
ESP.SliceCenter = Rect.new(9, 11, 91, 89)
ESP.MouseButton1Down:connect(function()
esp()
end)

TextLabel_4.Parent = ESP
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Size = UDim2.new(1, 0, 0.924271226, 0)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "ESP"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 30.000
TextLabel_4.TextStrokeTransparency = 0.500
TextLabel_4.TextWrapped = true

Credits.Name = "Credits"
Credits.Parent = MainThing
Credits.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
Credits.BackgroundTransparency = 1.000
Credits.Position = UDim2.new(-0.0370009169, 0, 0.805033624, 0)
Credits.Size = UDim2.new(1.07400227, 0, 0.194967076, 0)
Credits.Image = "rbxassetid://1511196841"
Credits.ImageColor3 = Color3.fromRGB(17, 17, 17)
Credits.ScaleType = Enum.ScaleType.Slice
Credits.SliceCenter = Rect.new(9, 11, 91, 89)

TextLabel_5.Parent = Credits
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.Size = UDim2.new(1, 0, 0.924271226, 0)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "Rawr Hub"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 30.000
TextLabel_5.TextStrokeTransparency = 0.500
TextLabel_5.TextWrapped = true

MainThingLine.Name = "MainThingLine"
MainThingLine.Parent = DraggableThng
MainThingLine.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
MainThingLine.BorderSizePixel = 0
MainThingLine.Position = UDim2.new(0, 0, 0.114184268, 0)
MainThingLine.Size = UDim2.new(1, 0, 0.0666772649, 0)

function esp()
local Holder = Instance.new("Folder", game.CoreGui)
Holder.Name = "ESP"

local Box = Instance.new("BoxHandleAdornment")
Box.Name = "nilBox"
Box.Size = Vector3.new(4, 7, 4)
Box.Color3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
Box.Transparency = 0.7
Box.ZIndex = 0
Box.AlwaysOnTop = true
Box.Visible = true

local NameTag = Instance.new("BillboardGui")
NameTag.Name = "nilNameTag"
NameTag.Enabled = false
NameTag.Size = UDim2.new(0, 200, 0, 50)
NameTag.AlwaysOnTop = true
NameTag.StudsOffset = Vector3.new(0, 1.8, 0)
local Tag = Instance.new("TextLabel", NameTag)
Tag.Name = "Tag"
Tag.BackgroundTransparency = 1
Tag.Position = UDim2.new(0, -50, 0, 0)
Tag.Size = UDim2.new(0, 300, 0, 20)
Tag.TextSize = 20
Tag.TextColor3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
Tag.TextStrokeColor3 = Color3.new(0 / 255, 0 / 255, 0 / 255)
Tag.TextStrokeTransparency = 0.4
Tag.Text = "nil"
Tag.Font = Enum.Font.SourceSansBold
Tag.TextScaled = false

local LoadCharacter = function(v)
	repeat wait() until v.Character ~= nil
	v.Character:WaitForChild("Humanoid")
	local vHolder = Holder:FindFirstChild(v.Name)
	vHolder:ClearAllChildren()
	local b = Box:Clone()
	b.Name = v.Name .. "Box"
	b.Adornee = v.Character
	b.Parent = vHolder
	local t = NameTag:Clone()
	t.Name = v.Name .. "NameTag"
	t.Enabled = true
	t.Parent = vHolder
	t.Adornee = v.Character:WaitForChild("Head", 5)
	if not t.Adornee then
		return UnloadCharacter(v)
	end
	t.Tag.Text = v.Name
		local speed = 10 --Change to speed you want
        while true do
	    for i = 0,1,0.001*speed do
		b.Color3 = Color3.fromHSV(i,1,1)
			t.Tag.TextColor3 = Color3.fromHSV(i,1,1)--creates a color using i
		wait()
	end
end
	local Update
	local UpdateNameTag = function()
		if not pcall(function()
			v.Character.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
			local maxh = math.floor(v.Character.Humanoid.MaxHealth)
			local h = math.floor(v.Character.Humanoid.Health)
			t.Tag.Text = v.Name .. "\n" .. ((maxh ~= 0 and tostring(math.floor((h / maxh) * 100))) or "0") .. "%  " .. tostring(h) .. "/" .. tostring(maxh)
		end) then
			Update:Disconnect()
		end
	end
	UpdateNameTag()
	Update = v.Character.Humanoid.Changed:Connect(UpdateNameTag)
end

local UnloadCharacter = function(v)
	local vHolder = Holder:FindFirstChild(v.Name)
	if vHolder and (vHolder:FindFirstChild(v.Name .. "Box") ~= nil or vHolder:FindFirstChild(v.Name .. "NameTag") ~= nil) then
		vHolder:ClearAllChildren()
	end
end

local LoadPlayer = function(v)
	local vHolder = Instance.new("Folder", Holder)
	vHolder.Name = v.Name
	v.CharacterAdded:Connect(function()
		pcall(LoadCharacter, v)
	end)
	v.CharacterRemoving:Connect(function()
		pcall(UnloadCharacter, v)
	end)
	v.Changed:Connect(function(prop)
		if prop == "TeamColor" then
			UnloadCharacter(v)
			wait()
			LoadCharacter(v)
		end
	end)
	LoadCharacter(v)
end

local UnloadPlayer = function(v)
	UnloadCharacter(v)
	local vHolder = Holder:FindFirstChild(v.Name)
	if vHolder then
		vHolder:Destroy()
	end
end

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	spawn(function() pcall(LoadPlayer, v) end)
end

game:GetService("Players").PlayerAdded:Connect(function(v)
	pcall(LoadPlayer, v)
end)

game:GetService("Players").PlayerRemoving:Connect(function(v)
	pcall(UnloadPlayer, v)
end)

game:GetService("Players").LocalPlayer.NameDisplayDistance = 0
end
