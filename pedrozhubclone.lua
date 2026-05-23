
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Clone tycoon",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Clone tycoon hub",
   LoadingSubtitle = "by Pedro",
   ShowText = "RY", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "ordepclonehub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})


Rayfield:Notify({
   Title = "Made by Pedro",
   Content = "Credits to N3xul",
   Duration = 6.5,
   Image = 4483362458,
})

-- Main tab only


local MainTab = Window:CreateTab("Main Tab", 4483362458) -- Title, Image


local Slider = MainTab:CreateSlider({
   Name = "Walkspeed",
   Range = {16, 250},
   Increment = 5,
   Suffix = "Speed",
   CurrentValue = 10,
   Flag = "Speedslider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "Jump Power",
   Range = {50, 600},
   Increment = 10,
   Suffix = "Jump",
   CurrentValue = 10,
   Flag = "Jumpslider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
   end,
})


local Button = MainTab:CreateButton({
   Name = "Click to tp tool",
   Callback = function()
   mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Click TP"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = game.Players.LocalPlayer.Backpack
   end,
})


local Button = MainTab:CreateButton({
   Name = "F3X Btools",
   Callback = function()
      loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
   end,
})

local Divider = MainTab:CreateDivider()

local Button = MainTab:CreateButton({
   Name = "Inf gold",
   Callback = function()
   --Made by N3xul.
local object = "Gold"
local price = -2e9
local Event = game:GetService("Workspace").Events.DataStores.LoadStep
Event:FireServer(object, price)
local Event = game:GetService("Workspace").Events.DataStores.SaveData
Event:InvokeServer()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Inf iron",
   Callback = function()
   --Made by N3xul.
local object = "Iron"
local price = -2e9
local Event = game:GetService("Workspace").Events.DataStores.LoadStep
Event:FireServer(object, price)
local Event = game:GetService("Workspace").Events.DataStores.SaveData
Event:InvokeServer()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Inf stone",
   Callback = function()
   --Made by N3xul.
local object = "Stone"
local price = -2e9
local Event = game:GetService("Workspace").Events.DataStores.LoadStep
Event:FireServer(object, price)
local Event = game:GetService("Workspace").Events.DataStores.SaveData
Event:InvokeServer()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Inf coal",
   Callback = function()
   --Made by N3xul.
local object = "Coal"
local price = -2e9
local Event = game:GetService("Workspace").Events.DataStores.LoadStep
Event:FireServer(object, price)
local Event = game:GetService("Workspace").Events.DataStores.SaveData
Event:InvokeServer()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Inf diamond",
   Callback = function()
   --Made by N3xul.
local object = "Diamonds"
local price = -2e9
local Event = game:GetService("Workspace").Events.DataStores.LoadStep
Event:FireServer(object, price)
local Event = game:GetService("Workspace").Events.DataStores.SaveData
Event:InvokeServer()
   end,
})


-- Misc tab only


local MiscTab = Window:CreateTab("Misc Tab", 4483362458) -- Title, Image

local Button = MiscTab:CreateButton({
   Name = "Destroy Hub",
   Callback = function()
   Rayfield:Destroy()
   end,
})


print ("Clone tycoon hub : Systems running now.")
