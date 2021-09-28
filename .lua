local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Kittenassist Legit Edition")




-- first page
local page = venyx:addPage("Silent")
local Secto = page:addSection("Main")

local silent2 = venyx:addPage("Silent V2")
local section1 = silent2:addSection("Main")
local section6 = silent2:addSection("FOV")
local section2 = silent2:addSection("Settings")
local section7 = silent2:addSection("Others")
local page2 = venyx:addPage("Settings")
local section3 = page2:addSection("Settings")
local section4 = page2:addSection("Fun")


Secto:addKeybind("Toggle UI", Enum.KeyCode.K, function(n)
   
            venyx:toggle(n)
        
   
    end)

section1:addToggle("Enable", nil, function(value)
    if value then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Stefanuk12/ROBLOX/master/Games/Da%20Hood/SilentAimAimLock.lua"))()
    
        Aiming.Enabled = true

        print("Toggle Off")
    else
        Aiming.Enabled = false

    end
end)

section1:addKeybind("Enable Keybind", Enum.KeyCode.Q, function()
	print("Activated Keybind")
end)



section2:addToggle("Visible Check", nil, function(value)
    if value then
        
    Aiming.Visible = true
else
    Aiming.Visible = false
end
	print("Toggled", value)
end)

section2:addToggle("Auto Settings", nil, function(value)
	print("Toggled", value)
end)
section2:addToggle("Crew Check", nil, function(value)
    if value then
        Aiming.TeamCheck = true
    else
        Aiming.TeamCheck = false
    end
	print("Toggled", value)
end)
section2:addToggle("Ground Check", nil, function(value)
    if value then
    Aiming.CheckHealth = 0
    else
        Aiming.CheckHealth = 100
    end
	print("Toggled", value)
end)


section6:addToggle("FOV Circle", nil, function(value)
    if value then
        Aiming.ShowFOV = true
    else
        Aiming.ShowFOV = false
    end
	print("Toggled", value)
end)
section6:addSlider("FOV", 40, 0, 300, function(a)
    Aiming.FOV = a
    
    
end)
section6:addColorPicker("FOV Colour",Color3.fromRGB(255,0,0), function(t)
    Aiming.FOVColour = t
print(t)
end)
section6:addDropdown("Body Part", {"Head", "HumanoidRootPart", "UpperTorso", "LowerTorso", "Random"}, function(text)
	Aiming.TargetPart = text
end)

section7:addToggle("ESP", nil, function(value)
    if value then
        local gui = Instance.new("BillboardGui");
gui.Name = "";
gui.AlwaysOnTop = true;
gui.LightInfluence = 0;
gui.Size = UDim2.new(1.75, 0, 1.75, 0);
local frame = Instance.new("Frame", gui);
frame.BackgroundColor3 = Color3.fromRGB(170, 0, 0);
frame.Size = UDim2.new(1, 0, 1, 0);
frame.BorderSizePixel = 1;
frame.BorderColor3 = Color3.fromRGB(0, 0, 0);
local gi = gui:Clone();
local body = frame:Clone();
body.Parent = gi;
body.BackgroundColor3 = Color3.fromRGB(0, 170, 170);
 
for _, v in pairs(game:GetService("Players"):GetPlayers()) do
   if v.Name ~= game:GetService("Players").LocalPlayer.Name and v.Character and v.Character:FindFirstChild("Head") then
       gui:Clone().Parent = v.Character.Head;
   end
end
        print("Toggle Off")
    else


    end
end)
section7:addKeybind("ESP Keybind", Enum.KeyCode.U, function()
	print("Activated Keybind")
end)


section2:addSlider("Settings (TURN AUTO OFF)", 155, 0, 1000, function(value)
	print("Dragged", value)
end)
section3:addButton("Save Settings", function()
	print("Clicked")
end)
section3:addButton("Open Config", function()
	print("Clicked")
end)
section3:addButton("Join Discord", function()

	print("Clicked")
end)



section4:addToggle("FOV Camera", nil, function(value)
	if value then
        game.Workspace.Camera.FieldOfView = _G.vaf
    else
        game.Workspace.Camera.FieldOfView = 70
    end
end)
section4:addSlider("FOV Camera Amount", 70, 0, 500, function(value, focusLost)
	if focusLost then
        _G.vaf = value
    end
end)


venyx:SelectPage(venyx.pages[1], true)


