-- Create Functions
local Func_Farms = {
    ["Auto Level"] = false,
    ["Auto Bone"] = false,
    ["Auto Katakuri"] = false,
    ["Auto Mastery"] = false,
    ["Type Mastery"] = "Fruit",
    ["Skills Press"] = {}
}
local Func_Settings = {
    ["Fast Attack"] = {
        ["Value"] = true,
        ["Speed"] = "Normal"
    },
    ["Hop Delay"] = 4,
    ["Auto Ken"] = false,
    ["Double Quest"] = false,
    ["Triple Quest Cake Or Bone"] = false,
    ["Tween Speed"] = 300,
    ["Claim Quest Cake And Haunted"] = false,
    ["Open Dimension"] = false,
    ["Stop Health"] = 25,
    ["Choose Tool Spam"] = {},
    ["Low Health Tween"] = false
}
local Func_Other = {
    ["Random Suprise"] = false,
    ["Awakening V4"] = false
}
local Func_Sub = {
    ["Auto Full Mastery All Sword"] = false,
    ["Auto Saber"] = false, 
    ["Auto Cursed Dual Katana"] = false,
    ["Auto Yama"] = false,
    ["Auto Tushita Fully"] = false,
    ["Auto Melee"] = {
        ["Superhuman"] = false,
        ["Death Step"] = false,
        ["Sharkman Karate"] = false,
        ["Dragon Talon"] = false,
        ["God Human"] = false
    },
    ["Auto Shark Anchor"] = false,
    ["Auto Soul Reaper"] = false,
    ["Auto Soul Guitar"] = false
}
local Func_UpgradeRace = {
    ["Auto Fully V2"] = false,
    ["Auto Fully V3"] = false,
    ["Find Mirage Island"] = false,
    ["Cam To Moon"] = false,
    ["Auto Fully Trial"] = false, 
    ["Auto Kill Players Trial Completed"] = false,
    ["Skill Press [Trial]"] = false,
    ["Multiple Trial"] = {}
}
local Func_SeaEvent = {
    ["Boat Name"] = "PirateGrandBrigade",
    ["Tween Boat To Zone 6"] = false,
    ["Auto Kill Fish Mon"] = false,
    ["Auto Kill Terror Shark"] = {
        ["Normal Kill"] = true,
        ["Dogde Skill"] = false
    },
    ["Auto Kill Ghost/Fish Ship"] = false,
    ["Auto Dogde Rough Sea"] = false,
    ["Auto Sea Beast"] = false,
    ["Auto Tween To Frozen Dimension"] = false,
    ["Auto Find Frozen Dimension"] = false,
    ["Auto Kill Leviathan"] = false
}
local Func_Neccessary = {
    ["Auto Fully Raid"] = false
}
getgenv().HopFunc = {
    ["Soul Guitar"] = false
}
getgenv()["SelectTool"] = "Melee"
local StatusLabel = "None"
local TaskString = "None"
-- Loader Library
local LibLoader = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
-- Load Hub
local function UIOpen()
    function ClearTask()
        StatusLabel = "None"
        TaskString = "None"
    end
    -- Task UI
    local ScreenGui = Instance.new("ScreenGui");
    local DropShadowHolder = Instance.new("Frame");
    local DropShadow = Instance.new("ImageLabel");
    local Main = Instance.new("Frame");
    local UICorner = Instance.new("UICorner");
    local UIStroke = Instance.new("UIStroke");
    local UIGradient = Instance.new("UIGradient");
    local Top = Instance.new("TextLabel");
    local UIGradient1 = Instance.new("UIGradient");
    local Under = Instance.new("TextLabel");
    local UIGradient2 = Instance.new("UIGradient");
    local cc = game:GetService("TweenService")
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do 
        if v.Name == 'CoinCard' then 
            v:Destroy() 
        end
    end
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ScreenGui.Parent = game:GetService("Players").LocalPlayer.PlayerGui
    ScreenGui.Name = 'CoinCard'
    DropShadowHolder.AnchorPoint = Vector2.new(0.5, 0.5)
    DropShadowHolder.BackgroundTransparency = 1
    DropShadowHolder.BorderSizePixel = 0
    DropShadowHolder.Position = UDim2.new(0.5, 0, 0.1, 0)
    DropShadowHolder.Size = UDim2.new(0, 500, 0, 68)
    DropShadowHolder.ZIndex = 0
    DropShadowHolder.Name = "DropShadowHolder"
    DropShadowHolder.Parent = ScreenGui

    DropShadow.Image = ""
    DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    DropShadow.ImageTransparency = 0.5
    DropShadow.ScaleType = Enum.ScaleType.Slice
    DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
    DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
    DropShadow.BackgroundTransparency = 1
    DropShadow.BorderSizePixel = 0
    DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
    DropShadow.Size = UDim2.new(1, 47, 1, 47)
    DropShadow.ZIndex = 0
    DropShadow.Name = "DropShadow"
    DropShadow.Parent = DropShadowHolder

    Main.AnchorPoint = Vector2.new(0.5, 0.5)
    Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Main.BackgroundTransparency = 0.5
    Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Main.BorderSizePixel = 0
    Main.Position = UDim2.new(0.5, 0, 0.5, 0)
    Main.Size = UDim2.new(1, -47, 1, -47)
    Main.Name = "Main"
    Main.Parent = DropShadow

    UICorner.CornerRadius = UDim.new(0, 5)
    UICorner.Parent = Main

    UIStroke.Color = Color3.fromRGB(255, 255, 255)
    UIStroke.Thickness = 2.5
    UIStroke.Parent = Main

    UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(192, 192, 192)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(192, 192, 192))
    }
    UIGradient.Parent = UIStroke

    Top.Font = Enum.Font.GothamBold
    Top.Text = "Nigga"
    Top.TextColor3 = Color3.fromRGB(255, 255, 255)
    Top.TextSize = 16.5
    Top.TextYAlignment = Enum.TextYAlignment.Bottom
    Top.AnchorPoint = Vector2.new(0.5, 0)
    Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Top.BackgroundTransparency = 0.9990000128746033
    Top.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Top.BorderSizePixel = 0
    Top.Position = UDim2.new(0.5, 0, 0, 15)
    Top.Size = UDim2.new(0, 500, 0, 18)
    Top.Name = "Top"
    Top.Parent = Main

    UIGradient1.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(192, 192, 192)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(192, 192, 192))
    }
    UIGradient1.Parent = Top

    Under.Font = Enum.Font.GothamBold
    Under.Text = "Script started!"
    Under.TextColor3 = Color3.fromRGB(255, 255, 255)
    Under.TextSize = 18
    Under.TextYAlignment = Enum.TextYAlignment.Bottom
    Under.AnchorPoint = Vector2.new(0.5, 0)
    Under.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Under.BackgroundTransparency = 0.9990000128746033
    Under.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Under.BorderSizePixel = 0
    Under.Position = UDim2.new(0.5, 0, 0, 35)
    Under.Size = UDim2.new(0, 500, 0, 18)
    Under.Name = "Under"
    Under.Parent = Main

    UIGradient2.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(192, 192, 192)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(192, 192, 192))
    }
    UIGradient2.Parent = Under
    Top.Size = UDim2.new(0, Top.TextBounds.X, 0, 18)
    Under.Size = UDim2.new(0, Under.TextBounds.X, 0, 18)
    if Top.Size.X.Offset > Under.Size.X.Offset then
        DropShadowHolder.Size = UDim2.new(0, Top.TextBounds.X + 50, 0, 68)
    else
        DropShadowHolder.Size = UDim2.new(0, Under.TextBounds.X + 50, 0, 68)
    end
    Top:GetPropertyChangedSignal("Text"):Connect(function()
        Top.Size = UDim2.new(0, Top.TextBounds.X, 0, 18)
        if Top.Size.X.Offset > Under.Size.X.Offset then
            DropShadowHolder.Size = UDim2.new(0, Top.TextBounds.X + 50, 0, 68)
        else
            DropShadowHolder.Size = UDim2.new(0, Under.TextBounds.X + 50, 0, 68)
        end
    end)
    Under:GetPropertyChangedSignal("Text"):Connect(function()
        Under.Size = UDim2.new(0, Under.TextBounds.X, 0, 18)
        if Top.Size.X.Offset > Under.Size.X.Offset then
            DropShadowHolder.Size = UDim2.new(0, Top.TextBounds.X + 50, 0, 68)
        else
            DropShadowHolder.Size = UDim2.new(0, Under.TextBounds.X + 50, 0, 68)
        end
    end)
    spawn(function()
        while wait() do
            Top.Text = "Status: "..StatusLabel
            Under.Text = "Task: "..TaskString
        end
    end)
    -- Functions Unnecessary
    function noti(name, content, subc, time)
        if name == nil or name == "" then
            name = "Not Titled"
        end
        if content == nil or content == "" then
            content = "No Any Descriptions"
        end
        if subc == nil or subc == "" then
            subc = "No Any Sub Descriptions"
        end
        if type(I) ~= "number" then
            time = 10
        end
        LibLoader:Notify({Title = name,Content = content, SubContent = subc,Duration = time})
    end
    -- Functions Necessary
    local Q = require(game.ReplicatedStorage.Quests)
    local R = {"BartiloQuest", "Trainees", "MarineQuest", "CitizenQuest"}
    local function S()
        local T = game.Players.LocalPlayer.Data.Level.Value
        local min = 0
        if T >= 1450 and game.PlaceId == 4442272183 then
            Mob1 = "Water Fighter"
            Mob2 = "ForgottenQuest"
            Mob3 = 2
        elseif T >= 700 and game.PlaceId == 2753915549 then
            Mob1 = "Galley Captain"
            Mob2 = "FountainQuest"
            Mob3 = 2
        else
            for r, v in pairs(Q) do
                for M, N in pairs(v) do
                    local U = N.LevelReq
                    for O, P in pairs(N.Task) do
                        if T >= U and U >= min and N.Task[O] > 1 and not table.find(R, tostring(r)) then
                            min = U
                            Mob1 = tostring(O)
                            Mob2 = r
                            Mob3 = M
                        end
                    end
                end
            end
        end
    end
    function CFrameQuest()
        local GuideModule = require(game.ReplicatedStorage.GuideModule)
        for list,NPCListC in pairs(GuideModule["Data"]["NPCList"]) do
            if NPCListC["NPCName"] == GuideModule["Data"]["LastClosestNPC"] then
                return list["CFrame"]
            end
        end
    end
    local Q = require(game.ReplicatedStorage.Quests)
    local a3 = require(game.ReplicatedStorage:WaitForChild("GuideModule"))
    function CheckDataQuest()
        for r, v in next, a3.Data do
            if r == "QuestData" then
                return true
            end
        end
        return false
    end
    function CheckNameMobDoubleQuest()
        local a
        if CheckDataQuest() then
            for r, v in next, a3.Data.QuestData.Task do
                a = r
            end
        end
        return a
    end
    function CheckDoubleQuestSkidcuaYMF()
        S()
        local a5 = {}
        if game.Players.LocalPlayer.Data.Level.Value >= 10 and Func_Settings["Double Quest"] and CheckDataQuest() and CheckNameMobDoubleQuest() == Mob1 and #CheckNameMobDoubleQuest() > 2 then
            for r, v in pairs(Q) do
                for M, N in pairs(v) do
                    for O, P in pairs(N.Task) do
                        if tostring(O) == Mob1 then
                            for a6, a7 in next, v do
                                for a8, a9 in next, a7.Task do
                                    if a8 ~= Mob1 and a9 > 1 then
                                        if a7.LevelReq <= game.Players.LocalPlayer.Data.Level.Value then
                                            a5["Name"] = tostring(a8)
                                            a5["Mob2"] = r
                                            a5["ID"] = a6
                                        else
                                            a5["Name"] = Mob1
                                            a5["Mob2"] = Mob2
                                            a5["ID"] = Mob3
                                        end
                                        return a5
                                    end
                                end
                            end
                        end
                    end
                end
            end
        else
            a5["Name"] = Mob1
            a5["Mob2"] = Mob2
            a5["ID"] = Mob3
            return a5
        end
        a5["Name"] = Mob1
        a5["Mob2"] = Mob2
        a5["ID"] = Mob3
        return a5
    end
    function MobLevel1OrMobLevel2()
        local aa = {}
        for r, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if not table.find(aa, v.Name) and v:IsA("Model") and v.Name ~= "PirateBasic" and not string.find(v.Name, "Brigade") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") then
                table.insert(aa, v.Name)
            end
        end
        for r, v in pairs(aa) do
            local ab = v
            v = tostring(v:gsub(" %pLv. %d+%p", ""))
            if tostring(v) == CheckNameMobDoubleQuest() then
                return tostring(ab)
            end
        end
        return false
    end
    function ClickRaid()
        if game.PlaceId == 4442272183 then
            fireclickdetector(game.Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
        elseif game.PlaceId == 7449423635 then
            fireclickdetector(game.Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
        end
    end
    function GetQuest()
        local Distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest().Position).Magnitude
        if Distance <= 20 then
            game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("StartQuest", tostring(CheckDoubleQuestSkidcuaYMF().Mob2), CheckDoubleQuestSkidcuaYMF().ID)
        else
            ToTween(CFrameQuest())
        end
    end
    function GetMob()
        local tablegetmob = {}
        for i,v in pairs(game.Workspace.MobSpawns:GetChildren()) do
            if not table.find(tablegetmob, v.Name) then
                table.insert(tablegetmob, v.Name)
            end
        end
        if string.find(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()[1].Name, "Lv.") then
            for i, v in pairs(tablegetmob) do
                local b = v
                v = RemoveLevelTitle(v)
                if v == CheckNameMobDoubleQuest() then
                    return b
                end
            end
        else
            return CheckNameMobDoubleQuest()
        end
    end
    -- Function Attack
    function Clicking()
        local VirtualUser = game:GetService("VirtualUser")
        VirtualUser:CaptureController()
        VirtualUser:ClickButton1(Vector2.new(1e4, 1e4))
    end
    function KillAura()
        for _,v in pairs(game.Workspace.Enemies:GetDescendants()) do
            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                repeat wait(.1)
                    v.Humanoid.Health = 0
                    v.HumanoidRootPart.CanCollide = false
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                until not v or not v:FindFirstChild("Humanoid") or v.Humanoid.Health == 0
            end
        end
    end
    function HopServer(bO)
        if not bO then
            bO = 10
        end
        ticklon = tick()
        repeat
            task.wait()
        until tick() - ticklon >= 1
        local function Hop()
            for r = 1, math.huge do
                if ChooseRegion == nil or ChooseRegion == "" then
                    ChooseRegion = "Singapore"
                else
                    game.Players.LocalPlayer.PlayerGui.ServerBrowser.Frame.Filters.SearchRegion.TextBox.Text =
                        ChooseRegion
                end
                local bP = game.ReplicatedStorage.__ServerBrowser:InvokeServer(r)
                for k, v in pairs(bP) do
                    if k ~= game.JobId and v["Count"] < bO then
                        game.ReplicatedStorage.__ServerBrowser:InvokeServer("teleport", k)
                    end
                end
            end
            return false
        end 
        if not getgenv().Loaded then
            local function bQ(v)
                if v.Name == "ErrorPrompt" then
                    if v.Visible then
                        if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                            HopServer()
                            v.Visible = false
                        end
                    end
                    v:GetPropertyChangedSignal("Visible"):Connect(
                        function()
                            if v.Visible then
                                if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                                    HopServer()
                                    v.Visible = false
                                end
                            end
                        end
                    )
                end
            end
            for k, v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren()) do
                bQ(v)
            end
            game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(bQ)
            getgenv().Loaded = true
        end
        while not Hop() do
            wait()
        end
    end
    function CheckItem(item)
        for i, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
            if v.Name == item then
                return v
            end
        end
    end
    function TorchDimension(nameDimension) 
        Dimension = nameDimension == "Tushita" and "HeavenlyDimension" or "HellDimension"
        DimensionInMap = game.Workspace.Map:FindFirstChild(Dimension) 
        if not DimensionInMap then 
            return 
        end
        if game.Workspace.Map:FindFirstChild(Dimension) then 
            for _,DimensionPath in pairs(DimensionInMap) do
                if string.find(DimensionPath.Name, "Torch") then
                    if DimensionPath.ProximityPrompt.Enabled == true then
                        return DimensionPath
                    end
                end
            end
        end
    end  
    local v1 = game:GetService("UserInputService")
    v2 = game.Players.LocalPlayer:GetMouse()
    v3 = ( v1.TouchEnabled and v1.TouchTapInWorld ) or v2.Button1Down 
    function tap() 
        for _, v4 in getconnections(v3) do
            if debug.getinfo(v4.Function).name == "inputAndReload" then 
                  v4.Function()
            end  
        end 
    end
    function HopUI(timec, reason)
        if not reason then
            reason = "Laggy"
        end
        local ScreenGui = Instance.new("ScreenGui")
        local Frame = Instance.new("Frame")
        local shadowHolder = Instance.new("Frame")
        local umbraShadow = Instance.new("ImageLabel")
        local penumbraShadow = Instance.new("ImageLabel")
        local ambientShadow = Instance.new("ImageLabel")
        local Hubname = Instance.new("TextLabel")
        local HopSecond = Instance.new("TextLabel")
        local Reason = Instance.new("TextLabel")
        local InstanceFrame = Instance.new("LocalScript", Frame)
        
        ScreenGui.Parent = game:GetService("CoreGui")
        ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        
        Frame.Parent = ScreenGui
        Frame.AnchorPoint = Vector2.new(0.5, 0.5)
        Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Frame.BackgroundTransparency = 1.000
        Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Frame.BorderSizePixel = 0
        Frame.Position = UDim2.new(0.5, 0, -1, 0)
        Frame.Size = UDim2.new(0, 1424, 0, 776)
        
        InstanceFrame.Parent:TweenPosition(UDim2.new(0.5, 0, 0.5, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 1, false)
        
        shadowHolder.Name = "shadowHolder"
        shadowHolder.Parent = Frame
        shadowHolder.BackgroundTransparency = 1.000
        shadowHolder.Size = UDim2.new(1, 0, 1, 0)
        shadowHolder.ZIndex = 0
        
        umbraShadow.Name = "umbraShadow"
        umbraShadow.Parent = shadowHolder
        umbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
        umbraShadow.BackgroundTransparency = 1.000
        umbraShadow.Position = UDim2.new(0.5, 0, 0.5, 6)
        umbraShadow.Size = UDim2.new(1, 100, 1, 300)
        umbraShadow.ZIndex = 0
        umbraShadow.Image = "rbxassetid://1316045217"
        umbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
        umbraShadow.ImageTransparency = 0.860
        umbraShadow.ScaleType = Enum.ScaleType.Slice
        umbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)
        
        penumbraShadow.Name = "penumbraShadow"
        penumbraShadow.Parent = shadowHolder
        penumbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
        penumbraShadow.BackgroundTransparency = 1.000
        penumbraShadow.Position = UDim2.new(0.5, 0, 0.5, 6)
        penumbraShadow.Size = UDim2.new(1, 100, 1, 300)
        penumbraShadow.ZIndex = 0
        penumbraShadow.Image = "rbxassetid://1316045217"
        penumbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
        penumbraShadow.ImageTransparency = 0.880
        penumbraShadow.ScaleType = Enum.ScaleType.Slice
        penumbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)
        
        ambientShadow.Name = "ambientShadow"
        ambientShadow.Parent = shadowHolder
        ambientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
        ambientShadow.BackgroundTransparency = 1.000
        ambientShadow.Position = UDim2.new(0.499297738, 0, 0.392268056, 6)
        ambientShadow.Size = UDim2.new(1, 100, 1, 300)
        ambientShadow.ZIndex = 0
        ambientShadow.Image = "rbxassetid://1316045217"
        ambientShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
        ambientShadow.ImageTransparency = 0.880
        ambientShadow.ScaleType = Enum.ScaleType.Slice
        ambientShadow.SliceCenter = Rect.new(10, 10, 118, 118)
        
        Hubname.Name = "Hubname"
        Hubname.Parent = Frame
        Hubname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Hubname.BackgroundTransparency = 1.000
        Hubname.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Hubname.BorderSizePixel = 0
        Hubname.Position = UDim2.new(0.287219107, 0, 0.390463918, 0)
        Hubname.Size = UDim2.new(0, 605, 0, 85)
        Hubname.Font = Enum.Font.Michroma
        Hubname.Text = "Experience Script"
        Hubname.TextColor3 = Color3.fromRGB(170, 255, 255)
        Hubname.TextSize = 100.000
        
        HopSecond.Name = "HopSecond"
        HopSecond.Parent = Frame
        HopSecond.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        HopSecond.BackgroundTransparency = 1.000
        HopSecond.BorderColor3 = Color3.fromRGB(0, 0, 0)
        HopSecond.BorderSizePixel = 0
        HopSecond.Position = UDim2.new(0.287219107, 0, 0.461340219, 0)
        HopSecond.Size = UDim2.new(0, 605, 0, 85)
        HopSecond.Font = Enum.Font.Gotham
        HopSecond.Text = "Hopping Server in: ?s"
        HopSecond.TextColor3 = Color3.fromRGB(255, 255, 255)
        HopSecond.TextSize = 40.000
        timed = timec
        spawn(function()
            while wait(1) do
                local a = math.random(1,255)
                local b = math.random(1,255)
                local c = math.random(1,255)
                timed -= 1
                HopSecond.Text = "Hopping Server in: "..timed
                if timed <= 0 then
                    HopSecond.Text = "HOP!"
                    HopSecond.TextColor3 = Color3.fromRGB(a, b, c)
                end
                if timed <= 0 then
                    wait(2)
                    InstanceFrame.Parent:TweenPosition(UDim2.new(0.5, 0, -1, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.5, false)
                    wait(1)
                    ScreenGui:Destroy()
                    print("Hop")
                    HopServer()
                end
            end
        end)
        Reason.Name = "Reason"
        Reason.Parent = Frame
        Reason.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Reason.BackgroundTransparency = 1.000
        Reason.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Reason.BorderSizePixel = 0
        Reason.Position = UDim2.new(1, 0, 0.512886584, 0)
        Reason.Size = UDim2.new(0, 605, 0, 85)
        Reason.Font = Enum.Font.Gotham
        Reason.Text = "Reason: "..reason
        Reason.TextColor3 = Color3.fromRGB(255, 255, 127)
        Reason.TextSize = 50.000
        local script3 = Instance.new("LocalScript", Reason)
        local script1 = Instance.new("LocalScript", Hubname)
        local script2 = Instance.new("LocalScript", HopSecond)
        for i = 1,0,-0.02 do
            script1.Parent.TextTransparency = i
            script2.Parent.TextTransparency = i
            script3.Parent.TextTransparency = i
            task.wait(0.02)
        end
        script3.Parent:TweenPosition(UDim2.new(0.286516845, 0, 0.512886584, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.5, false)
    end
    function Buso()
        NoClip()
        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Buso")
        end
    end
    function CheckEnemySpawns(b)
        for i,v in game.Workspace._WorldOrigin.EnemySpawns:GetChildren() do
            if type(b) == "table" then
                if table.find(b, v.Name) then
                    return v
                end
            else
                if v.Name == b then
                    return v
                end
            end
        end
    end
    function RequestEntraceTemple()
        local CFRAMETEMPLE = CFrame.new(28734.3945,14888.2324,-109.071777,-0.650207579,4.1780531e-08,-0.759756625,1.97876595e-08,1,3.80575109e-08,0.759756625,9.71147784e-09,-0.650207579)
        for i = 1,3 do
            if GetDistance(CFRAMETEMPLE) > 1200 then
                Temple()
            end
        end
    end
    function PullLever()
        local bn = CFrame.new(28576.4688, 14939.2832, 76.5164413, -1, 0, 0, 0, 0.707134247, -0.707079291, -0, -0.707079291, -0.707134247)
        local bo = CFrame.new(28576.4688, 14935.9512, 75.469101, -1, -4.22219593e-08, 1.13133396e-08, 0, -0.258819044, -0.965925813, 4.37113883e-08, -0.965925813, 0.258819044)
        local bp = 0.2
        if game:GetService("Workspace").Map["Temple of Time"].Lever.Lever.CFrame.Z > bo.Z + bp or game:GetService("Workspace").Map["Temple of Time"].Lever.Lever.CFrame.Z < bo.Z - bp then
            RequestEntraceTemple()
            ToTween(game:GetService("Workspace").Map["Temple of Time"].Lever.Part.CFrame)
            for r, v in pairs(game:GetService("Workspace").Map["Temple of Time"].Lever:GetDescendants()) do
                if v.Name == "ProximityPrompt" then
                    fireproximityprompt(v)
                end
            end
        end
    end
    function GetNameRaid()
        local table_GetNameRaid = {}
        local Rc = require(game:GetService("ReplicatedStorage").Raids).raids
        local Rb = require(game:GetService("ReplicatedStorage").Raids).advancedRaids
        for _,RaidName in pairs({Rc, Rb}) do
            for _,RaidName2 in pairs(RaidName) do
                if RaidName2 ~= " " and RaidName2 ~= "" then
                    table.insert(table_GetNameRaid, RaidName2)
                end
            end
        end
        return table_GetNameRaid
    end
    function GetstatusIsland()
        if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
            return "Island 5"
        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
            return "Island 4"
        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
            return "Island 3"
        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
            return "Island 2"
        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
            return "Island 1"
        end
    end
    function GetNextIs(islandNumber)
        local min = 4500
        local ClosetIs = nil
        local worldOrigin = game:GetService("Workspace")["_WorldOrigin"]
        for _,IslandM in pairs(worldOrigin.Locations:GetChildren()) do
            if IslandM.Name == "Island "..islandNumber then
                local distance = GetDistance(IslandM)
                if distance < min then
                    min = distance
                    ClosetIs = IslandM
                end
            end
        end
        return ClosetIs
    end
    function NextIS()
        for i,v in pairs({5,4,3,2,1}) do
            if GetNextIs(v) and (GetNextIs(v).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4500 then
                return GetNextIs(v)
            end
        end
    end
    function Temple()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586))
    end
    function SendKeyEvents(vb ,cc)
        if not cc then
            cc = 0
        end
        game:GetService("VirtualInputManager"):SendKeyEvent(true, vb, false, game)
        task.wait(cc)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, vb, false, game)
    end
    function GetRandomTween(ck)
        local RandomL,R2 = math.random(30,100), math.random(10,40)
        return ck * CFrame.new(RandomL, 30, R2)
    end
    function NoClip(Cc)
        if not Cc then
            Cc = true
        end
        if Cc then
            if not game.Players.LocalPlayer.Character.Head:FindFirstChild("BodyVelocity") then
                local bv = Instance.new("BodyVelocity")
                bv.Velocity = Vector3.new(0, 0, 0)
                bv.MaxForce = Vector3.new(9999999, 9999999, 9999999)
                bv.P = 15000
                bv.Parent = game.Players.LocalPlayer.Character.Head
            end
            for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end
        else
            if game.Players.LocalPlayer.Character.Head:FindFirstChild("BodyVelocity") then
                game.Players.LocalPlayer.Character.Head:FindFirstChild("BodyVelocity"):Destroy()
            end
        end
    end
    function ResetTP(Pos)
        if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
            if (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                for i = 1,4 do
                    InstantTeleport(Pos)
                end
                task.wait()
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
            end
        else
            ToTween(Pos)
        end
    end
    function TpEntrance(P)
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", P)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
        wait(0.5)
    end
    function Func1()
        Mobs = game.workspace.Enemies:GetChildren()
        if #Mobs <= 0 then 
            return 
        else
            for _,MobsFolder in pairs(Mobs) do 
                if DetectingPart(MobsFolder) and MobsFolder.Humanoid.Health > 0 then 
                    return MobsFolder 
                end
            end
        end
    end    
    function GetNameQuestHaze()
        for _,QuestHazeF in pairs(game.Players.LocalPlayer.QuestHaze:GetChildren()) do
            if QuestHazeF.Value > 0 then
                return QuestHazeF.Name
            end
        end
    end
    function CheckNearestMobSpawnHaze()
        thefuck = {}
        for _,v in pairs(game:GetService("Players").LocalPlayer.QuestHaze:GetChildren()) do
            if v.Value > 0 then
                table.insert(thefuck, RemoveLevelTitle(v.Name))
            end
        end
        nameg = ""
        distancemss = math.huge
        for i, v in pairs(thefuck) do
            if CheckMobSpawns(v) then
                if GetDistance(CheckMobSpawns(v)) < distancemss then
                    distancemss = GetDistance(CheckMobSpawns(v))
                end
            end
        end
        for i, v in pairs(thefuck) do
            if CheckMobSpawns(v) then
                if GetDistance(CheckMobSpawns(v)) <= distancemss then
                    nameg = v
                end
            end
        end
        return nameg
    end
    function CheckHazeESP()
        for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v:IsA("Model") and DetectingPart(v) and v:FindFirstChild("HazeESP") and v.Humanoid.Health > 0 then
                v.HazeESP.Size = Vector3.new(30, 30, 30)
                return v
            end
        end
        for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v.Name == GetNameQuestHaze() then
                if v:IsA("Model") and DetectingPart(v) and v.Humanoid.Health > 0 then
                    return v
                end 
            end
        end
    end
    function CheckNamePedestal()
        local Good = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good").Good
        local Evil = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good").Evil
        local Pedestals
        if Good == 4 and Evil == 3 then
            Pedestals = "Pedestal2"
        elseif Good == 3 and Evil == 4 then
            Pedestals = "Pedestal1"
        end
        return a
    end
    function HazeLeft()
        oasg = 0
        pcall(function()
            for _,v in pairs(game:GetService("Players").LocalPlayer.QuestHaze:GetChildren()) do
                if v.Value > 0 then
                    oasg = oasg + v.Value
                end
            end
        end)
        return oasg
    end
    CheckQuestCDK = function()
        if not game.PlaceId == 7449423635 then 
            return "None" 
        end
        if getgenv().HaveCursedDualKatana then 
            noti("Experience Script", "Auto Cursed Dual Katana", "You Have Already Cursed Dual Katana", 5)
            return
        end 
        if not CheckItemBPCR("Tushita") or not CheckItemBPCR("Yama") or CheckItemBPCR("Cursed Dual Katana") then 
            if CheckItemBPCR("Cursed Dual Katana") then 
                getgenv().HaveCursedDualKatana = true 
            end  
            return
        end
        local LvlQCDK = {Good = 666, Evil = 666}
        Check,CheckValue = pcall(function()
            for num,v in pairs(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good")) do 
                LvlQCDK[num] = v 
            end
        end)
        if LvlQCDK.Good == -2 or LvlQCDK.Good == 4 then 
            getgenv().StartQuestEvil = true 
        end   
        task.spawn(function()
            if not getgenv().StartQuestEvil then 
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good")
            else
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil")
            end
        end)
        if CheckNamePedestal() then
            return "Pedestal"
        end  
        if LvlQCDK.Evil == 4 and LvlQCDK.Good == 4 then
            return "Kill Final Boss"
        end  
        if LvlQCDK.Good ~= -2 then 
            if GetDistance(game:GetService("Workspace")["_WorldOrigin"].Locations["Heavenly Dimension"]) < 2000 then 
                return "Tushita Dimension"
            end
            if LvlQCDK.Good == -3 or LvlQCDK.Good == -4 then 
                return "Easy Quest Tushita "..tostring(LvlQCDK.Good)
            end 
            if LvlQCDK.Good == -5 and CheckBoss("Cake Queen") then 
                return "Cake Queen"
            end
        else 
            if GetDistance(game:GetService("Workspace")["_WorldOrigin"].Locations["Hell Dimension"]) <= 2000 then 
                return "Yama Dimension"
            end
            if LvlQCDK.Evil == -3 or LvlQCDK.Evil == -4 then 
                return "Easy Quest Yama "..tostring(LvlQCDK.Evil)
            end  
            local a1,b1,c1,d1 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Bones", "Check")
            if (c1 and c1 > 0) or (CheckEnemies("Soul Reaper", true) or CheckItemBPCR("Hallow Essence")) then 
                return "Soul Reaper"
            end
        end
        return "None"
    end 
    CursedDualKatana = function()
        TaskString = "Auto Cursed Dual Katana"
        if CheckItem("Cursed Dual Katana") then
            noti("Experience Script", "Auto Cursed Dual Katana", "You Have Already Cursed Dual Katana", 5)
            return
        end
        CurrentLevelCDK = CheckQuestCDK()
        if CurrentLevelCDK ~= "None" then  
            if CurrentLevelCDK == "Final Boss" then  
                repeat task.wait()
                    if GetDistance(game.Workspace.Map.Turtle.Cursed.Pedestal3) > 10 and game.Workspace.Map.Turtle.Cursed.PlacedGem.Transparency ~= 0 then
                        ToTween(game.Workspace.Map.Turtle.Cursed.Pedestal3.CFrame * CFrame.new(0,0,-2)) 
                    end 
                    if game.Workspace.Map.Turtle.Cursed.PlacedGem.Transparency == 0 then 
                        if not CheckEnemies("Cursed Skeleton Boss") then
                            ToTween(CFrame.new(-12341.66796875, 603.3455810546875, -6550.6064453125))
                        else
                            local DetectedBoss = CheckEnemies("Cursed Skeleton Boss")
                            KillMonster(DetectedBoss.Name, false, CheckStatusFeature(Func_Sub["Auto Cursed Dual Katana"]) == "FALSE")
                        end
                    else 
                        if GetDistance(game.Workspace.Map.Turtle.Cursed.Pedestal3) < 10 then 
                            fireproximityprompt(game.Workspace.Map.Turtle.Cursed.Pedestal3.ProximityPrompt) 
                            wait(5)
                        end
                    end 
                until CheckStatusFeature(Func_Sub["Auto Cursed Dual Katana"]) == "FALSE" or CheckItem("Cursed Dual Katana")
                return
            end
            if CurrentLevelCDK == "Soul Reaper" or CurrentLevelCDK == "Yama Dimension" or CurrentLevelCDK == "Easy Quest Yama "..game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good").Evil then
                Claiming_Yama(CurrentLevelCDK)
            else
                Claiming_Tushita(CurrentLevelCDK)
            end
        end 
    end
    Claiming_Yama = function(idk)
        if idk == "None" then return end 
        if idk == "Yama Dimension" then 
            StatusLabel = "Successing Dimension [Yama] | Cursed Dual Katana"
            repeat task.wait()
                if game:GetService("Workspace").Map.HellDimension.Exit.BrickColor == BrickColor.new("Olivine") then 
                    CancelTween()
                    Tweento(game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
                    wait(2) 
                else
                    if Func1() then
                        CurrentCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
                        repeat task.wait()
                            ToTween(CurrentCFrame * CFrame.new(0,225,0))
                        until not Func1()
                        ToTween(CurrentCFrame)
                    else
                        if TorchDimension("Yama") then 
                            Torch = TorchDimension("Yama")
                            ToTween(Torch.CFrame)  
                            wait(.5)
                            fireproximityprompt(Torch.ProximityPrompt)
                        end
                    end
                end
            until CheckStatusFeature(Func_Sub["Auto Cursed Dual Katana"]) == "FALSE" or GetDistance(game:GetService("Workspace")["_WorldOrigin"].Locations["Hell Dimension"]) > 2000  
        elseif idk == "Easy Quest Yama -3" then 
            StatusLabel = "Successing Quest 1 [Yama] | Cursed Dual Katana"
            if CheckEnemies("Pirate Millionaire") then
                repeat wait()
                    ToTween(v.HumanoidRootPart.CFrame)
                until game.Players.localPlayer.Character.Humanoid.Health <= 0 or CheckStatusFeature(Func_Sub["Auto Cursed Dual Katana"]) == "FALSE"
            else
                ToTween(CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375))
            end
        elseif idk == "Easy Quest Yama -4" then  
            StatusLabel = "Successing Quest 2 [Yama] | Cursed Dual Katana"
            repeat task.wait()
                HazeMob = CheckHazeESP()
                if HazeMob then 
                    KillMonster(HazeMob.Name, true, CheckStatusFeature(Func_Sub["Auto Cursed Dual Katana"]) == "FALSE")
                else
                    NewHazeMob = CheckNearestMobSpawnHaze()
                    if not CheckHazeESP() then 
                        ToTween(CheckMobSpawns(NewHazeMob).CFrame * CFrame.new(0,20,0)) 
                    end
                end
            until not CheckNearestMobSpawnHaze() or CheckStatusFeature(Func_Sub["Auto Cursed Dual Katana"]) == "FALSE"
            if HazeLeft() <= 0 then
                HopUI(Func_Settings["Hop Delay"], "Not Have Mob Haze")
            end
        elseif idk == "Soul Reaper" then 
            StatusLabel = "Successing Quest 3 [Yama] | Cursed Dual Katana"
            if not CheckEnemies("Soul Reaper") then
                if CheckItemBPCR("Hallow Essence") then
                    ToTween(CFrame.new(-8930.6083984375, 144.92068481445312, 6066.2236328125))
                else
                    local v316, v317, v318, v319 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Bones", "Check")
                    if v318 and v318 > 0 then  
                        for i = 1,11 do 
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
                        end
                        KillMonster(CheckEnemies({"Reborn Skeleton","Living Zombie","Demonic Soul","Posessed Mummy"}).Name, true, CheckStatusFeature(Func_Sub["Auto Cursed Dual Katana"]) == "FALSE")  
                    elseif v316 < 500 then 
                        KillMonster(CheckEnemies({"Reborn Skeleton","Living Zombie","Demonic Soul","Posessed Mummy"}).Name, true, CheckStatusFeature(Func_Sub["Auto Cursed Dual Katana"]) == "FALSE")  
                    end
                end
            else
                local v = CheckEnemies("Soul Reaper")
                if v then
                    pcall(function()
                        repeat task.wait()
                            ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,2,-0.5))
                        until CheckStatusFeature(Func_Sub["Auto Cursed Dual Katana"]) == "FALSE" or game.Players.LocalPlayer.Character.Humanoid.Health <= 0 or GetDistance(game:GetService("Workspace")["_WorldOrigin"].Locations["Hell Dimension"]) < 2000
                    end)
                end
            end
        end
    end
    Claiming_Tushita = function(idk)
        if idk == "None" then return end
        if idk == "Tushita Dimension" then 
            StatusLabel = "Successing Dimension [Tushita] | Cursed Dual Katana"
            repeat task.wait()
                if game:GetService("Workspace").Map.HeavenlyDimension.Exit.BrickColor == BrickColor.new("Cloudy grey") then 
                    CancelTween()
                    ToTween(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
                    wait(2) 
                else
                    if Func1() then
                        CurrentCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
                        repeat task.wait()
                            ToTween(CurrentCFrame * CFrame.new(0,225,0))
                        until not Func1()
                        ToTween(CurrentCFrame)
                    else
                        if TorchDimension("Tushita") then 
                            Torch = TorchDimension("Tushita")
                            ToTween(Torch.CFrame)  
                            wait(.5)
                            fireproximityprompt(Torch.ProximityPrompt)
                        end
                    end
                end
            until CheckStatusFeature(Func_Sub["Auto Cursed Dual Katana"]) == "FALSE" or GetDistance(game:GetService("Workspace")["_WorldOrigin"].Locations["Heavenly Dimension"]) > 2000  
        elseif idk == "Cake Queen" then 
            StatusLabel = "Successing Quest 3 [Tushita] | Cursed Dual Katana"
            if CheckEnemies("Cake Queen") then 
                KillMonster(CheckEnemies("Cake Queen").Name, true, CheckStatusFeature(Func_Sub["Auto Cursed Dual Katana"]) == "FALSE")
            else
                local tickv2 = tick()
                repeat task.wait() until tick()-tickv2 >= 3
                HopUI(Func_Settings["Hop Delay"], "Not Found Cake Queen")
            end 
        elseif idk == "Easy Quest Tushita -4" then 
            StatusLabel = "Successing Quest 2 [Tushita] | Cursed Dual Katana"
            if CheckMonCastle() then 
                KillMonster(CheckMonCastle().Name, true, CheckStatusFeature(Func_Sub["Auto Cursed Dual Katana"]) == "FALSE")
            else
                ToTween(CFrame.new(-5543.5327148438, 313.80062866211, -2964.2585449219))
                local tickv1 = tick()
                repeat task.wait() until tick()-tickv1 >= 20
                HopUI(Func_Settings["Hop Delay"], "Not Found Raid Castle")
            end
        elseif idk == "Easy Quest Tushita -3" then 
            StatusLabel = "Successing Quest 1 [Tushita] | Cursed Dual Katana"
            for _,nilinstanceg in pairs(getnilinstances()) do
                if nilinstanceg.Name:match("Luxury Boat Dealer") then
                    InstantTeleport(nilinstanceg.HumanoidRootPart.CFrame)
                    local args = {[1] = "CDKQuest", [2] = "BoatQuest", [3] = workspace.NPCs:FindFirstChild("Luxury Boat Dealer")}
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            end
        end
    end
    function CountZombie(x)
        local Counter = 0
        for i, v in pairs(game.workspace.Enemies:GetChildren()) do
            if v.Name == "Living Zombie" and v.Humanoid.Health > 0 then
                if not x or (v.HumanoidRootPart.Position - Vector3.new(-10171.7607421875, 138.62667846679688, 6008.0654296875)).Magnitude < 30 then
                    Counter = Counter + 1
                end
            end
        end
        return Counter
    end 
    function CountZombieInWorkspace()
        Counter = 0
        for i, v in pairs(game.workspace.Enemies:GetChildren()) do
            if v.Name == "Living Zombie" and v.Humanoid.Health > 0 then
                Counter = Counter + 1
            end
        end
        return Counter
    end
    SoulGuitarBringFunction = function()
        pcall(function()
            for _,v in pairs(game.workspace.Enemies:GetChildren()) do
                if v.Name == "Living Zombie" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                    if GetDistance(v.HumanoidRootPart,CFrame.new(-10171.7607421875, 138.62667846679688, 6008.0654296875)) > 5 then 
                        TweenObject(CFrame.new(-10171.7607421875, 138.62667846679688, 6008.0654296875),v.HumanoidRootPart,1500)
                        v.Humanoid:ChangeState(11)
                        v.HumanoidRootPart.Size = Vector3.new(4,4,4)
                        v.Humanoid.JumpPower = 0
                        v.Humanoid.WalkSpeed = 0
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                    end
                end
            end
        end)
    end
    SoulGuitar = function()
        if game.Players.LocalPlayer.Data.Level.Value < 2300 then return end
        if not CheckItem("Soul Guitar") then
            if not game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check") then
                if game.Lighting.Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" and (game.Lighting.ClockTime > 15 or game.Lighting.ClockTime < 5) then
                    if (game.Lighting.ClockTime > 18 or game.Lighting.ClockTime < 5) then 
                        if GetDistance(CFrame.new(-8654.314453125, 140.9499053955078, 6167.5283203125)) > 10 then
                            ToTween(CFrame.new(-8654.314453125, 140.9499053955078, 6167.5283203125))
                        else
                            CheckRemote = game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("gravestoneEvent", 2) 
                            if CheckRemote ~= true then return end 
                        end
                    else
                        if getgenv().HopFunc["Soul Guitar"] then
                            HopUI(Func_Settings["Hop Delay"], "Hop Found Full Moon")
                        else
                            StatusLabel = "Waiting Full Moon"
                        end
                    end
                end
            else
                if game.Players.LocalPlayer.PlayerGui.Main.Dialogue.Visible then
                    game:GetService("VirtualUser"):Button1Down(Vector2.new(0, 0))
                    game:GetService("VirtualUser"):Button1Down(Vector2.new(0, 0))
                end 
                if not game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check").Swamp then
                    if GetDistance(CFrame.new(-10171.7607421875, 138.62667846679688, 6008.0654296875)) > 100 then
                        ToTween(CFrame.new(-10171.7607421875, 138.62667846679688, 6008.0654296875))
                    else
                        if CheckPlayerNearestInCFrame(CFrame.new(-10171.7607421875, 138.62667846679688, 6008.0654296875), 1500) then
                            HopUI(Func_Settings["Hop Delay"], "Some Players Farming There, Cannot Do Puzzle")
                        else
                            StatusLabel = "Bring, Killing: Living Zombie, Doing Puzzle"
                            if CountZombie() == 6 then
                                for i, v in pairs(game.workspace.Enemies:GetChildren()) do
                                    if v.Name == "Living Zombie" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then  
                                        repeat task.wait()
                                            KillMonster(v.Name, true, CheckStatusFeature(Func_Sub["Auto Soul Guitar"]) == "FALSE")
                                        until v.Humanoid.Health <= 0 or not v.Parent
                                    end
                                end
                            elseif CountZombieInWorkspace() == 6 then
                                SoulGuitarBringFunction()
                            end
                        end
                    end
                elseif not game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check").Gravestones then
                    if GetDistance(CFrame.new(-8761.4765625, 142.10487365722656, 6086.07861328125)) > 50 then
                        ToTween(CFrame.new(-8761.4765625, 142.10487365722656, 6086.07861328125))
                    else
                        StatusLabel = "Doing Sign Puzzle"
                        local ClickSigns = {
                            game.workspace.Map["Haunted Castle"].Placard1.Right.ClickDetector,
                            game.workspace.Map["Haunted Castle"].Placard2.Right.ClickDetector,
                            game.workspace.Map["Haunted Castle"].Placard3.Left.ClickDetector,
                            game.workspace.Map["Haunted Castle"].Placard4.Right.ClickDetector,
                            game.workspace.Map["Haunted Castle"].Placard5.Left.ClickDetector,
                            game.workspace.Map["Haunted Castle"].Placard6.Left.ClickDetector,
                            game.workspace.Map["Haunted Castle"].Placard7.Left.ClickDetector
                        }
                        for i, v in pairs(ClickSigns) do
                            fireclickdetector(v)
                        end
                    end
                elseif not game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check").Ghost then
                    StatusLabel = "Tween to Ghost NPC"
                    if GetDistance(CFrame.new(-9755.6591796875, 271.0661315917969, 6290.61474609375)) > 30 then
                        ToTween(CFrame.new(-9755.6591796875, 271.0661315917969, 6290.61474609375))
                    else
                        game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Ghost")
                    end
                elseif not game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check").Trophies then
                    if GetDistance(CFrame.new(-9530.0126953125, 6.104853630065918, 6054.83349609375)) > 30 then
                        ToTween(CFrame.new(-9530.0126953125, 6.104853630065918, 6054.83349609375))
                    else
                        StatusLabel = "Doing Trophies Puzzle"
                        local DepTraiv4 = game.workspace.Map["Haunted Castle"].Tablet
                        for i, v in pairs(BlankTablets) do
                            local x = DepTraiv4[v]
                            if x.Line.Position.X ~= 0 then
                                repeat task.wait()
                                    fireclickdetector(x.ClickDetector)
                                until x.Line.Position.X == 0
                            end
                        end
                        for i, v in pairs(Trophy) do
                            local x = game.workspace.Map["Haunted Castle"].Trophies.Quest[v].Handle.CFrame
                            x = tostring(x)
                            x = x:split(", ")[4]
                            local c = "180"
                            if x == "1" or x == "-1" then
                                c = "90"
                            end
                            if not string.find(tostring(DepTraiv4[i].Line.Rotation.Z), c) then
                                repeat
                                    wait()
                                    fireclickdetector(DepTraiv4[i].ClickDetector)
                                until string.find(tostring(DepTraiv4[i].Line.Rotation.Z), c)
                                print(i, c)
                            end
                        end
                    end
                elseif not game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check").Pipes then
                    for i, v in pairs(Pipes) do
                        local x = game.workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model[i]
                        if x.BrickColor.Name ~= v then
                            repeat task.wait()
                                fireclickdetector(x.ClickDetector)
                            until x.BrickColor.Name == v
                        end
                    end
                else
                    game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("soulGuitarBuy", true)
                    return
                end
            end
        end
    end
    function CheckMonCastle()
        for _,v in pairs(game.workspace.Enemies:GetChildren()) do
            if v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - Vector3.new(-5543.5327148438, 313.80062866211, -2964.2585449219)).Magnitude <= 1000 and v.Humanoid.Health > 0 then
                return v 
            end
        end
    end
    function CheckPlayerNearestInCFrame(CframeR, minInput)
        min3 = minInput
        local min5
        for i, v in pairs(game.Players:GetChildren()) do
            pcall(function()
                if v.Name ~= game.Players.LocalPlayer.Name and GetDistance(v.Character.HumanoidRootPart, CframeR) < min3 then
                    min3 = GetDistance(v.Character.HumanoidRootPart, CframeR)
                end
            end)
        end
        for i, v in pairs(game.Players:GetChildren()) do
            pcall(function()
                if v.Name ~= game.Players.LocalPlayer.Name and GetDistance(v.Character.HumanoidRootPart, CframeR) <= min3 then
                    min5 = v
                end
            end)
        end
        return min5
    end
    function ResetTPNearest(Pos)
        if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
            if (Vector3.new(-5058.77490234375, 314.5155029296875, -3155.88330078125) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2800 then
                TpEntrance(Vector3.new(-5058.77490234375, 314.5155029296875, -3155.88330078125))
            else
                ResetTP(Pos)
            end
        end
    end
    function InstantTeleport(P)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
    end
    local statusTween = ""
    ToTween = function(Pos)
        local tween
        Distance = GetDistance(Pos)
        if Distance <= 350 then
            InstantTeleport(Pos)
        end
        tween = game:GetService("TweenService"):Create(
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance/Func_Settings["Tween Speed"], Enum.EasingStyle.Linear),
            {CFrame = Pos}
        )
        tween:Play()
        statusTween = tween.PlaybackState
        tween.Completed:Wait()
        statusTween = tween.PlaybackState
        if not tween then
            return
        end
    end
    spawn(function()
        while task.wait() do
            if tween then
                local conmemay = tostring(string.gsub(tostring(statusTween), "Enum.PlaybackState.", ""))
                if conmemay == "Playing"  then
                    NoClip()
                else
                    if not Func_Farms["Auto Mastery"] or Func_SeaEvent["Tween Boat To Zone 6"] then
                        wait(2)
                        if game.Players.LocalPlayer.Character.Head:FindFirstChild("BodyVelocity") then
                            game.Players.LocalPlayer.Character.Head:FindFirstChild("BodyVelocity"):Destroy()
                        end
                    end
                end
            end
         end
    end)
    function DisableAll()
        if game.Players.LocalPlayer.Character.Head:FindFirstChild("BodyVelocity") then
            game.Players.LocalPlayer.Character.Head:FindFirstChild("BodyVelocity"):Destroy()
        end
    end
    function GetMasteryTool(tooltip)
        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Tool") and v.ToolTip == tooltip then
                return v.Level.Value
            end
        end
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") and v.ToolTip == tooltip then
                return v.Level.Value
            end
        end
    end
    function CheckStatusFeature(feature)
        InputedFeature = feature
        if InputedFeature == true then
            return "TRUE"
        else
            return "FALSE"
        end
        return "FALSE"
    end
    function DetectingPart(v1)
        return v1 and FFC(v1, "HumanoidRootPart") and FFC(v1, "Humanoid")
    end
    function StopTween(value)
        if not value then
            ToTween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
            pcall(function()
                if tween then
                    tween:Cancel()
                end
                if game.Players.LocalPlayer.Character.Head:FindFirstChild("BodyVelocity") then
                    game.Players.LocalPlayer.Character.Head:FindFirstChild("BodyVelocity"):Destroy()
                end
            end)
        end
    end
    function CheckEnemies(k, replicated)
        if not replicated then
            replicated = false
        end
        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
            if type(k) == "table" then
                if table.find(k, RemoveLevelTitle(v.Name)) and DetectingPart(v) and v.Humanoid.Health > 0 then
                    return v
                end
            else
                if RemoveLevelTitle(v.Name) == k and DetectingPart(v) and v.Humanoid.Health > 0 then
                    return v
                end
            end
        end
        if replicated then
            for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
                if type(k) == "table" then
                    if table.find(k, RemoveLevelTitle(v.Name)) then
                        return v
                    end
                else
                    if RemoveLevelTitle(v.Name) == k then
                        return v
                    end
                end
            end
        end
    end
    function TweenObject(TweenCFrame,obj,ts)
        if not ts then ts = 350 end
        local tween_s = game:service "TweenService"
        local info = TweenInfo.new((TweenCFrame.Position - obj.Position).Magnitude / ts, Enum.EasingStyle.Linear)
        tween = tween_s:Create(obj, info, {CFrame = TweenCFrame})
        tween:Play() 
    end	
    local StatusQuest = "Claim Quest 1"
    function CheckI()
        if Func_Settings["Triple Quest Cake Or Bone"] or Func_Settings["Claim Quest Cake And Haunted"] then
	        if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                return "CAN'T CHECKED"
	        else
	            return "CHECKED"
    	    end
    	end
    end
    function DisableCollisions(object, enable)
        local parts = object:GetDescendants()
        local batch = {}
        local batchSize = 0
        for _, v in ipairs(parts) do
            if v:IsA("BasePart") then
                table.insert(batch, v)
                batchSize = batchSize + 1
    
                if batchSize >= 200 then
                    for _, part in ipairs(batch) do
                        part.CanCollide = enable
                    end
                    batch = {}
                    batchSize = 0
                end
            end
        end
        for _, part in ipairs(batch) do
            part.CanCollide = enable
        end
    end
    local CheckTripleQuestAndGetQuest = function()
        local plrHuman = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        local LevelData = game.Players.LocalPlayer.Data.Level.Value
        if Func_Farms["Auto Bone"] then
            targetquest1,targetquest2 = "HauntedQuest1", "HauntedQuest2"
            QuestPOS1, QuestPOS2 = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0), CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            lvlreq = {["R1"] = 2000, ["R2"] = 2025, ["R3"] = 2050}
        elseif Func_Farms["Auto Katakuri"] then
            targetquest1,targetquest2 = "CakeQuest1", "CakeQuest2"
            QuestPOS1, QuestPOS2 = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931), CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            lvlreq = {["R1"] = 2225, ["R2"] = 2250, ["R3"] = 2275}
        end
        local table_triple = {
        	["Quest 1"] = {
                ["Name Quest"] = targetquest1,
                ["Level Quest"] = 2
            },
            ["Quest 2"] = {
                ["Name Quest"] = targetquest2,
                ["Level Quest"] = 1
            },
            ["Quest 3"] = {
                ["Name Quest"] = targetquest2,
                ["Level Quest"] = 2
            }
        }
        if CheckI() == "CAN'T CHECKED" then 
            if Func_Settings["Triple Quest Cake Or Bone"] and Func_Settings["Claim Quest Cake And Haunted"]  then
                if StatusQuest == "Claim Quest 1" then
                    if LevelData >= lvlreq["R1"] then
                        if (QuestPOS1.Position - plrHuman).Magnitude <= 10 then
                            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest",table_triple["Quest 1"]["Name Quest"],table_triple["Quest 1"]["Level Quest"])
                            StatusQuest = "Claim Quest 2"
                        else
                            ToTween(QuestPOS1)
                        end
                    else
                        noti("Experience Script", "Not Enough Level Requirements", "zzz", 5)
                        TripleQuest:SetValue(false)
                        ClaimQuest:SetValue(false)
                    end
                elseif StatusQuest == "Claim Quest 2" then
                    if LevelData >= lvlreq["R2"] then
                        if (QuestPOS2.Position - plrHuman).Magnitude <= 10 then
                            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest",table_triple["Quest 2"]["Name Quest"],table_triple["Quest 2"]["Level Quest"])
                            StatusQuest = "Claim Quest 3"
                        else
                            ToTween(QuestPOS2)
                        end
                    else
                        noti("Experience Script", "Not Enough Level Requirements ", "To Claim Quest 2", 5)
                        StatusQuest = "Claim Quest 1"
                    end
                elseif StatusQuest == "Claim Quest 3" then
                    if LevelData >= lvlreq["R3"] then
                        if (QuestPOS2.Position - plrHuman).Magnitude <= 10 then
                            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest",table_triple["Quest 3"]["Name Quest"],table_triple["Quest 3"]["Level Quest"])
                            StatusQuest = "Claim Quest 1"
                        else
                            ToTween(QuestPOS2)
                        end
                    else
                        noti("Experience Script", "Not Enough Level Requirements", "To Claim Quest 3", 5)
                        StatusQuest = "Claim Quest 1"
                    end
                end
            elseif Func_Settings["Claim Quest Cake And Haunted"] then
                if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    if LevelData >= lvlreq["R3"] then
                        if (QuestPOS2.Position - plrHuman).Magnitude <= 10 then
                            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest",table_triple["Quest 3"]["Name Quest"],table_triple["Quest 3"]["Level Quest"])
                        else
                            ToTween(QuestPOS2)
                        end
                    else
                        noti("Experience Script", "Not Enough Level Requirements", "zzz", 5)
                        ClaimQuest:SetValue(false)
                    end
                end
            end
        elseif CheckI() == "CHECKED" then
            return
        end
    end
    loadstring(
        [[
        local gg = getrawmetatable(game)
        local old = gg.__namecall
        setreadonly(gg, false)
        gg.__namecall =
            newcclosure(
            function(...)
                local method = getnamecallmethod()
                local args = {...}
                if tostring(method) == "FireServer" then
                    if tostring(args[1]) == "RemoteEvent" then
                        if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                            if getgenv().Aim and getgenv().AimPos then
                                if getgenv().AimPos then 
                                    args[2] = getgenv().AimPos 
                                end
                            end
                            return old(unpack(args))
                        end
                    end
                end
                return old(...)
            end
        )
    ]]
    )()
    function CheckBossCake()
        for _,Boss in pairs(game.Workspace.Enemies:GetChildren()) do
            if Boss.Name == "Cake Prince" or Boss.Name == "Dough King" and DetectingPart(Boss) and Boss.Humanoid.Health > 0 then
                return Boss
            end
        end
        for _,Boss in pairs(game.ReplicatedStorage:GetChildren()) do
            if Boss.Name == "Cake Prince" or Boss.Name == "Dough King" then
                return Boss
            end
        end
    end
    Bring = function(nameMob,BringC,DistanceF,radius)
        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v.Name == nameMob and DetectingPart(v) and v.Humanoid.Health > 0 and DistanceF.Magnitude <= radius then
                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                v.Humanoid:ChangeState(14)
                v.HumanoidRootPart.CanCollide = false
                v.Head.CanCollide = false
                TweenObject(BringC, v.HumanoidRootPart, 1400)
                if FFC(v.Humanoid, "Animator") then
                    v.Humanoid.Animator:Destroy()
                end
                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
            end
        end
    end
    -- Sea Event Functions
    function GetGhostShip()
        local boat = {"PirateBrigade", "PirateGrandBrigade"}
        for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
            if table.find(boat, v.Name) and FFC(v, "VehicleSeat") then
                return v
            end
        end
    end
    function FFC(part, name)
        return part:FindFirstChild(name)
    end
    function GetSeaBeast()
        for _,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
            if string.find(v.Name, "SeaBeast") then
                success,errors = pcall(function()
                    local s = v.HealthBBG.Frame.TextLabel.Text
                    local x = s:gsub("/%d+,%d+", "")
                    local a = v.HealthBBG.Frame.TextLabel.Text
                    local b
                    if string.find(x, ",") then
                        b = a:gsub("%d+,%d+/", "")
                    else
                        b = a:gsub("%d+/", "")
                    end
                    local c = b:gsub(",", "")
                    if tonumber(c) >= 70000 then
                        return v
                    end
                end)
                if success and errors then return errors end
            end
        end
    end
    function IsOwnedBoat(yourBoat)
        return FFC(yourBoat, "Owner") and yourBoat.Owner.Value == game.Players.LocalPlayer
    end
    function GetFishShip()
        for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v.Name == "FishBoat" and FFC(v, "VehicleSeat") then
                return v
            end
        end
    end
    function GetBoat(wtf)
        for _,BoatsFolder in pairs(game.Workspace.Boats:GetChildren()) do
            if BoatsFolder:IsA("Model") and BoatsFolder.Name == wtf and IsOwnedBoat(BoatsFolder) then
                return BoatsFolder
            end
        end
    end
    function CheckAllSeaMonster()
        local e = game.Workspace.Enemies
        if GetGhostShip() or GetSeaBeast() or FFC(e, "Shark") or FFC(e, "Piranha") or FFC(e, "Terrorshark") or FFC(e, "Fish Crew Member") or FFC(e, "FishBoat") then
            return true
        end
        return false
    end
    -- MobSpawns (Tsuo Hub)
    plr = game.Players.LocalPlayer
    if FFC(game.Workspace, "MobSpawns") then
        for i, v in pairs(game.Workspace:GetChildren()) do
            if v.Name == "MobSpawns" then
                v:Destroy()
            end
        end
    end
    local CreateFoldermmb = Instance.new("Folder")
    CreateFoldermmb.Parent = game.Workspace
    CreateFoldermmb.Name = "MobSpawns"
    function RemoveLevelTitle(v)
        return tostring(tostring(v):gsub(" %pLv. %d+%p", ""):gsub(" %pRaid Boss%p", ""):gsub(" %pBoss%p", ""))
    end 
    task.spawn(
        function()
            while task.wait() do 
                pcall(function()
                    for i,v in pairs(game.workspace.MobSpawns:GetChildren()) do  
                        v.Name = RemoveLevelTitle(v.Name)
                    end
                end)
                task.wait(50)
            end
        end
    )
    function MobDepTrai()
        MobDepTraiTable = {}
        for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
            table.insert(MobDepTraiTable, v)
        end
        local tablefoldermmb = {}
        for i, v in next, require(game:GetService("ReplicatedStorage").Quests) do
            for i1, v1 in next, v do
                for i2, v2 in next, v1.Task do
                    if v2 > 1 then
                        table.insert(tablefoldermmb, i2)
                    end
                end
            end
        end
        for i, v in pairs(getnilinstances()) do
            if table.find(tablefoldermmb, RemoveLevelTitle(v.Name)) then
                table.insert(MobDepTraiTable, v)
            end
        end
        return MobDepTraiTable
    end
    local MobSpawnList = MobDepTrai()
    function ReloadFolderMob()
        for i, v in next, game.Workspace.MobSpawns:GetChildren() do
            v:Destroy()
        end
        for i, v in pairs(MobSpawnList) do
            if v then
                if v:IsA("Model") and FFC(v, "HumanoidRootPart") then
                    MobNew = Instance.new("Part")
                    MobNew.CFrame = v.HumanoidRootPart.CFrame
                    MobNew.Name = v.Name
                    MobNew.Parent = game.Workspace.MobSpawns
                elseif v:IsA("Part") then
                    MobNew = v:Clone()
                    MobNew.Parent = game.Workspace.MobSpawns
                end
            end
        end
    end
    ReloadFolderMob()
    function CheckMobSpawns(ic)
        for _,MobSpawnsFolder in pairs(game.Workspace.MobSpawns:GetChildren()) do
            if MobSpawnsFolder.Name == ic then
                return MobSpawnsFolder
            end
        end
    end
    function CheckHealth(healthNeed)
        return math.floor((game.Players.LocalPlayer.Character.Humanoid.Health/game.Players.LocalPlayer.Character.Humanoid.MaxHealth*100)*100)/100 <= healthNeed
    end
    -- Other2 
    function AddHitbox(numberRadius)
        local CRV = getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework")))[2]
        CRV.activeController.hitboxMagnitude = numberRadius
    end
    -- Kill Mob Functions
    local KillMonster = function(mob,bringmobvalue,value)
        if CheckEnemies(mob) and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
            local v = CheckEnemies(mob)
            task.spawn(function()
                if CheckStatusFeature(bringmobvalue) == "TRUE" then
                    pcall(function()
                        Bring(v.Name,v.HumanoidRootPart.CFrame,(v.HumanoidRootPart.CFrame.Position - v.HumanoidRootPart.Position), 350)
                    end)
                end
            end)
            if DetectingPart(v) and v.Humanoid.Health > 0 then
                if game.Players.LocalPlayer.Character.Humanoid.Sit then
                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                end
                repeat task.wait()
                    Buso()
                    if CheckStatusFeature(Func_Settings["Low Health Tween"]) == "TRUE" then
                        if CheckHealth <= 30 then
                            InstantTeleport(v.HumanoidRootPart.CFrame * CFrame.new(0,300,0))
                        else
                            ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                        end
                    else
                        ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                    end
                    if CheckStatusFeature(Func_Farms["Auto Mastery"]) == "TRUE" and v.Humanoid.MaxHealth < 200000 then
                        StatusLabel = "Auto Mastery"
                        if v.Humanoid.Health <= v.Humanoid.MaxHealth * Func_Settings["Stop Health"] / 100 then
                            repeat task.wait()
                                StatusLabel = "Auto Mastery | Press Skill"
                                NoClip()
                                spawn(function()
                                    if Func_Farms["Type Mastery"] == "Gun" then
                                        tap()
                                    end
                                    TweenObject(v.HumanoidRootPart.CFrame, v.HumanoidRootPart, 1400)
                                    local EW,PressSkill = IsSkillTwoTool()
                                    EquipName(EW)
                                    SendKeyEvents(PressSkill)
                                end)
                                v.HumanoidRootPart.CanCollide = false
                                getgenv().AimPos = v.HumanoidRootPart.Position
                                getgenv().Aim = true
                            until v.Humanoid.Health <= 0 or CheckStatusFeature(Func_Farms["Auto Mastery"]) == "FALSE"
                        else
                            StatusLabel = "Auto Mastery | Attack: "..v.Name
                            AddHitbox(60)
                            Clicking()
                            EquipTool()
                        end
                    else
                        StatusLabel = "Killing: "..v.Name
                        EquipTool()
                    end
                until value or FFC(v, "Humanoid") or not FFC(v, "HumanoidRootPart") or v.Humanoid.Health <= 0
                getgenv().AimPos = nil
                getgenv().Aim = false
            end
        end
    end
    -- Other Function
    function GetMobSpawnList(a)
        a = RemoveLevelTitle(a)
        k = {}
        for i, v in pairs(game.Workspace.MobSpawns:GetChildren()) do
            if v.Name == a then
                table.insert(k, v)
            end
        end
        return k
    end
    CakeA = "ngu"
    function RemainingCake()
        local remainingCake = tonumber(string.match(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner", true), "%d+"))
        if remainingCake then
            return "KILL REMAINING: " .. remainingCake
        elseif CheckBossCake() then
            return "BOSS HAS SPAWNED"
        else
            return "KILL REMAINING: N/A"
        end 
    end
    if CheckEnemies("Reborn Skeleton", true) then
        print(CheckEnemies("Reborn Skeleton", true).Name)
    end
    function SoulReaperS()
        if CheckEnemies("Soul Reaper", true) then
            return "Spawned"
        else
            return "Not Spawned"
        end
    end
    function sortSwordsByRarity(swords)
        table.sort(swords, function(a, b)
            return a.Rarity > b.Rarity
        end) 
        return swords[1]
    end
    function getNextSword()
        local Swords = {}
        for _, itemData in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do 
            if itemData.Type == 'Sword' and itemData.Mastery < 600 then 
                table.insert(Swords, itemData)
            end 
        end
        if #Swords > 0 then 
            local NNN = sortSwordsByRarity(Swords) 
            return NNN,NNN.MasteryRequirements.X
        end
        return nil,0
    end  
    function GetDistance(Pos1, Pos2)
        if not Pos2 then
            Pos2 = game.Players.LocalPlayer.Character.HumanoidRootPart
        end
        if not Pos1 then return end
        return (Pos1.Position - Pos2.Position).Magnitude
    end
    function ChangeSword()
        local args = {[1] = "LoadItem",[2] = getNextSword()["Name"]}
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(args))     
    end
    function CheckItemBPCR(name)
        chbp = {game.Players.LocalPlayer.Character,game.Players.LocalPlayer.Backpack}
        for i, v in pairs(chbp) do
            if FFC(v, name) then
                return FFC(v, name)
            end
        end
    end
    -- Trial Function
    function GetSeaBeastTrial()
        if not FFC(game.Workspace.Map, "FishmanTrial") then
            SpamSkill(false)
            return 
        end
        local FishmanTrial 
        if FFC(game:GetService("Workspace")["_WorldOrigin"].Locations, "Trial of Water") then
            FishmanTrial = FFC(game:GetService("Workspace")["_WorldOrigin"].Locations, "Trial of Water")
        end
        if FishmanTrial then
            for i, v in next, game:GetService("Workspace").SeaBeasts:GetChildren() do
                if string.find(v.Name, "SeaBeast") and FFC(v, "HumanoidRootPart") and GetDistance(v.HumanoidRootPart,FishmanTrial) <= 1500 then
                    if v.Health.Value > 0 then
                        return v
                    end
                end
            end
        end
    end
    function GetPlayersTrial()
        local MidPos = CFrame.new(28718.068359375, 14887.5625, -60.5482177734375)
        for _,CharactersFolder in pairs(game.Workspace.Characters:GetChildren()) do
            if DetectingPart(CharactersFolder) and CharactersFolder.Name ~= game.Players.LocalPlayer.Name and GetDistance(CharactersFolder.HumanoidRootPart, CFrame.new(28718.068359375, 14887.5625, -60.5482177734375)) <= 250 and not table.find(Func_UpgradeRace["Multiple Trial"], CharactersFolder.Name) then
                return CharactersFolder
            end
        end 
    end
    function TeleportSeabeast(x)
        if FFC(x, "Engine") then 
            ToTween(x.Engine.CFrame * CFrame.new(0,-15,0))
            return
        end
        local a = Vector3.new(0,FFC(x, "HumanoidRootPart").Position.Y,0) 
        local b = Vector3.new(0,game:GetService("Workspace").Map["WaterBase-Plane"].Position.Y,0)
        if (a-b).Magnitude <= 175 then
            ToTween(x.HumanoidRootPart.CFrame * CFrame.new(0,300,50))
        else
            ToTween(CFrame.new(x.HumanoidRootPart.Position.X,game:GetService("Workspace").Map["WaterBase-Plane"].Position.Y+200,x.HumanoidRootPart.Position.Z))
        end		
    end
    AutoTrial = function()
        if getgenv().Trial then 
            StatusLabel = "Trial Succeed"
            task.wait()
            getgenv().Trial = false
            return 
        end
        if game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible then
            local Race = game.Players.LocalPlayer.Data.Race.Value
            StatusLabel = "Successing Trial Race: "..Race
            if Race == "Human" then 
                if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Trial of Strength") then
                    TrialOfStrength = game:GetService("Workspace")["_WorldOrigin"].Locations["Trial of Strength"].CFrame
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TrialOfStrength.Position).Magnitude <= 1000 then
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if GetDistance(v.HumanoidRootPart - TrialOfStrength) <= 1000 then 
                                KillAura()
                            end
                        end
                    end
                end
            elseif Race == "Skypiea" then 
                if game:GetService("Workspace")["_WorldOrigin"].Locations["Trial of the King"] and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-game:GetService("Workspace")["_WorldOrigin"].Locations["Trial of the King"].CFrame.Position).Magnitude <= 1000 then
                    local FinishPart = game:GetService("Workspace").Map.SkyTrial.Model.FinishPart
                    ToTween(FinishPart.CFrame)
                    task.wait(3)
                end
            elseif Race == "Fishman" then
                local FishmanTrial 
                if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Trial of Water") then
                    TrialofWater = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Trial of Water")
                end
                if FishmanTrial and (FishmanTrial.Position-plr.Character.HumanoidRootPart.Position).Magnitude < 1500 then
                    if GetSeaBeastTrial() then
                        SpamSkill(true)
                        TeleportSeabeast(GetSeaBeastTrial())
                        getgenv().AimPos = GetSeaBeastTrial().HumanoidRootPart.CFrame
                        getgenv().Aim = true
                    else
                        getgenv().AimPos = nil
                        getgenv().Aim = false
                        SpamSkill(false)
                    end
                end
            elseif Race == "Mink" then
                if GetDistance(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace")["_WorldOrigin"].Locations["Trial of Speed"]) <= 1000 then
                    ToTween(game:GetService("Workspace").StartPoint.CFrame * CFrame.new(0,2,0))
                end
            elseif Race == "Ghoul" then 
                if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Trial of Carnage") then
                    if GetDistance(game.Players.LocalPlayer.Character.HumanoidRootPart - game:GetService("Workspace")["_WorldOrigin"].Locations["Trial of Carnage"]) <= 1000 then
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if GetDistance(v.HumanoidRootPart - game:GetService("Workspace")["_WorldOrigin"].Locations["Trial of Carnage"]) <= 1000 then
                                ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,75,0))
                                KillAura()
                            end
                        end
                    end
                end
            elseif Race == "Cyborg" then
                CyborgBypassCFrame = CFrame.new(-20021.8691,10090.4893,-16.37994,-0.976144373,6.71342875e-08,-0.217122361,8.46145412e-08,1,-7.1212007e-08,0.217122361,-8.78849065e-08,-0.976144373)
                if GetDistance(CyborgBypassCFrame,game.Players.LocalPlayer.Character.HumanoidRootPart) <= 2000 then
                    ToTween(CyborgBypassCFrame)
                    task.wait(3)
                end
            end
        end
    end
    spawn(function()
        while task.wait() do
            if Func_UpgradeRace["Auto Fully Trial"] then
                if CheckNotification("completed your trial!") or CheckNotification("All trials have been completed!") then
                    getgenv().Trial = true
                else
                    getgenv().Trial = false
                end
            end
        end
    end)
    -- Mastery Function
    function CheckNotification(text)
        for i,v in pairs(game.Players.LocalPlayer.PlayerGui.Notifications:GetDescendants()) do
            if v:IsA("TextLabel") then 
                if string.find(v.Text, text) then
                    return true
                end
            end
        end
        return false
    end
    function EquipName(nameTarget)
        if not nameTarget then return end
        ToolSelector = nameTarget
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSelector) then
            wait(.4)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSelector))
        end
    end
    function GetNameTool(toolType)
        local backpack = game.Players.LocalPlayer.Backpack
        local character = game.Players.LocalPlayer.Character
        for _,v in pairs(backpack:GetChildren()) do
            if v:IsA("Tool") and v.ToolTip == toolType then
                return v.Name
            end
        end
        for _,v in pairs(character:GetChildren()) do
            if v:IsA("Tool") and v.ToolTip == toolType then
                return v.Name
            end
        end
    end
    function EquipTool()
        if getgenv()["SelectTool"] == "Melee" then
            EquipName(melee())
        elseif getgenv()["SelectTool"] == "Sword" then
            EquipName(sword())
        end
    end
    function melee()
        return GetNameTool("Melee")
    end
    function sword()
        return GetNameTool("Sword")
    end
    function gun()
        return GetNameTool("Gun")
    end
    function GetSkillPlayerGui(path)
        if CheckItemBPCR(path) then
            if game.Players.LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(path) then
                for _,v in pairs(game.Players.LocalPlayer.PlayerGui.Main.Skills[path]:GetChildren()) do
                    if v:IsA("Frame") and table.find(Func_Farms["Skills Press"], v.Name) then
                        if v.Name ~= "Template" and v.Title.TextColor3 == Color3.new(1, 1, 1) and v.Cooldown.Size == UDim2.new(0, 0, 1, -1) or v.Cooldown.Size == UDim2.new(1, 0, 1, -1) then
                            return path, v.Name
                        end
                    end
                end
            else
                EquipName(path)
            end
        end
    end
    SpamSkill = function(value)
        if value then
            if table.find(Func_Settings["Choose Tool Spam"], "Melee") then
                EquipName(GetNameTool("Melee"))
                SendKeyEvents("Z")
                SendKeyEvents("X")
                SendKeyEvents("C")
            end
            if table.find(Func_Settings["Choose Tool Spam"], "Sword") then
                EquipName(GetNameTool("Sword"))
                SendKeyEvents("Z")
                SendKeyEvents("X")
            end
            if table.find(Func_Settings["Choose Tool Spam"], "Gun") then
                EquipName(GetNameTool("Gun"))
                SendKeyEvents("Z")
                SendKeyEvents("X")
            end
            if table.find(Func_Settings["Choose Tool Spam"], "Fruit") then
                EquipName(game.Players.LocalPlayer.Data.DevilFruit.Value)
                SendKeyEvents("Z")
                SendKeyEvents("X")
                SendKeyEvents("C")
                SendKeyEvents("V")
            end
        else
            return
        end
    end
    function IsSkillTwoTool()
        if Func_Farms["Type Mastery"] == "Gun" then
            if game.Players.LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(gun()) then
                for _,v in pairs(game.Players.LocalPlayer.PlayerGui.Main.Skills[gun()]:GetChildren()) do
                    if v:IsA("Frame") and table.find(Func_Farms["Skills Press"], v.Name) then
                        if v.Name ~= "Template" and v.Title.TextColor3 == Color3.new(1, 1, 1) and v.Cooldown.Size == UDim2.new(0, 0, 1, -1) or v.Cooldown.Size == UDim2.new(1, 0, 1, -1) then
                            return gun(), v.Name
                        end
                    end
                end
            else
                EquipName(gun())
            end
        elseif Func_Farms["Type Mastery"] == "Fruit" then
            local FruitData = game.Players.LocalPlayer.Data.DevilFruit.Value
            if CheckItemBPCR(FruitData) then
                if game.Players.LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(FruitData) then
                    for _,v in pairs(game.Players.LocalPlayer.PlayerGui.Main.Skills[FruitData]:GetChildren()) do
                        if v:IsA("Frame") and table.find(Func_Farms["Skills Press"], v.Name) then
                            if v.Name ~= "Template" and v.Title.TextColor3 == Color3.new(1, 1, 1) and v.Cooldown.Size == UDim2.new(0, 0, 1, -1) or v.Cooldown.Size == UDim2.new(1, 0, 1, -1) then
                                return FruitData, v.Name
                            end
                        end
                    end
                else
                    EquipName(FruitData)
                end
            end
        end
    end
    -- Create Window
    local Window = LibLoader:CreateWindow({Title = "Experience Script", SubTitle = "by Memories and Flontium", TabWidth = 160, Size = UDim2.fromOffset(500,270), Acrylic = true, Theme = "Darker", MinimizeKey = Enum.KeyCode.LeftShift})
    -- Create Tabs
    local A = Window:AddTab({ Title = "Farm Tab", Icon = "rbxassetid://4483345998"})
    local B = Window:AddTab({ Title = "Setting Tab", Icon = "settings"})
    local C = Window:AddTab({ Title = "Status Tab", Icon = "bar-chart-horizontal"})
    local D = Window:AddTab({ Title = "Other", Icon = "frame"})
    local E = Window:AddTab({ Title = "Sub Tab", Icon = "file"})
    local F = Window:AddTab({ Title = "Necessary Tab", Icon = "cylinder"})
    local G = Window:AddTab({ Title = "Race Tab", Icon = "power"})
    local H = Window:AddTab({ Title = "Sea Event Tab", Icon = "droplet"}) 
    local I = Window:AddTab({ Title = "Shop Tab", Icon = "store"}) 
    -- Create Features
    -- Farm Tab
    local LevelFarming = A:AddToggle("Auto Level", {Title = "Auto Level",Description = " Farming Function Important", Default = false})
    if game.PlaceId == 7449423635 then
        local BoneFarming = A:AddToggle("Auto Bone", {Title = "Auto Bone", Description = " Farming Function Third Sea", Default = false})
        local KatakuriFarming = A:AddToggle("Auto Katakuri", {Title = "Auto Katakuri", Description = " Farming Function Third Sea", Default = false})
        BoneFarming:OnChanged(function(v)
            Func_Farms["Auto Bone"] = v
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
            StopTween(v)
            ClearTask()
        end)
        KatakuriFarming:OnChanged(function(v)
            Func_Farms["Auto Katakuri"] = v
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
            StopTween(v)
            ClearTask()
        end)
    end
    local TypeMas = A:AddDropdown("Select Type Mastery", {Title = "Select Type Mastery", Values = {"Fruit", "Gun"}, Multi = false, Default = "Fruit"})
    local MasteryAuto = A:AddToggle("Auto Mastery", {Title = "Auto Mastery", Default = false})
    LevelFarming:OnChanged(function(v)
        Func_Farms["Auto Level"] = v
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        StopTween(v)
        ClearTask()
    end)
    MasteryAuto:OnChanged(function(v)
        Func_Farms["Auto Mastery"] = v
    end)
    TypeMas:OnChanged(function(v)
        Func_Farms["Type Mastery"] = v
    end)
    task.spawn(function()
        while task.wait() do
            if CheckStatusFeature(Func_Farms["Auto Level"]) == "TRUE" then
                TaskString = "Auto Level"
                if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible then
                    if not MobLevel1OrMobLevel2() then
                        for i, v in pairs(GetMobSpawnList(GetMob())) do
                            pcall(function()
                                if not MobLevel1OrMobLevel2() and Func_Farms["Auto Level"] then
                                    ToTween(GetRandomTween(v.CFrame))
                                    StatusLabel = "Wait Mobs Spawn"
                                end
                            end)
                        end
                    else
                        pcall(function()
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == MobLevel1OrMobLevel2() and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible then
                                    repeat task.wait()
                                        KillMonster(v.Name, true, CheckStatusFeature(Func_Farms["Auto Level"]) == "FALSE")
                                    until not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 or CheckStatusFeature(Func_Farms["Auto Level"]) == "FALSE"
                                end
                            end
                        end)
                    end
                else
                    StatusLabel = "Get Quest"
                    GetQuest()
                end
            end
        end
    end)
    task.spawn(function()
        while task.wait() do
            if CheckStatusFeature(Func_Farms["Auto Bone"]) == "TRUE" then
                TaskString = "Auto Bone"
                local table_BoneMobs = {"Reborn Skeleton","Living Zombie","Demonic Soul","Posessed Mummy"}
                if CheckEnemies(table_BoneMobs) then
                    local v = CheckEnemies(table_BoneMobs)
                    if v and DetectingPart(v) and v.Humanoid.Health > 0 then
                        pcall(function()
                            if Func_Settings["Triple Quest Cake Or Bone"] or Func_Settings["Claim Quest Cake And Haunted"] then
                                if CheckI() == "CAN'T CHECKED" then
                                    StatusLabel = "Get Quest"
                                    CheckTripleQuestAndGetQuest()
                                elseif CheckI() == "CHECKED" then
                                    repeat task.wait()
                                        KillMonster(v.Name, true, CheckStatusFeature(Func_Farms["Auto Bone"]) == "FALSE")
                                    until not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 or CheckStatusFeature(Func_Farms["Auto Bone"]) == "FALSE"
                                end
                            else
                                repeat task.wait()
                                    KillMonster(v.Name, true, CheckStatusFeature(Func_Farms["Auto Bone"]) == "FALSE")
                                until not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 or CheckStatusFeature(Func_Farms["Auto Bone"]) == "FALSE"
                            end
                        end)
                    end
                else
                    StatusLabel = "Waiting Tween/TP to Island"
                    if (CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                        ResetTPNearest(CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375))
                    else
                        ToTween(CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375))
                    end
                end
            end
        end
    end)
    task.spawn(function()
        while task.wait() do
            if CheckStatusFeature(Func_Farms["Auto Katakuri"]) == "TRUE" then
                TaskString = "Auto Katakuri"
                local table_CakeMobs = {"Cookie Crafter","Cake Guard","Baking Staff","Head Baker"}
                local table_CakePrinceBosses = {"Dough King","Cake Prince"}
                if CheckBossCake() then
                    if GetDistance(CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875)) > 1700 then
                        ToTween(CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875))
                    else
                        local v = CheckBossCake()
                        pcall(function()
                            repeat task.wait()
                                KillMonster(v.Name, false, CheckStatusFeature(Func_Farms["Auto Katakuri"]) == "FALSE")
                            until not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 or CheckStatusFeature(Func_Farms["Auto Katakuri"]) == "FALSE"
                        end)
                    end
                elseif CheckEnemies(table_CakeMobs) then
                    local v = CheckEnemies(table_CakeMobs)
                    pcall(function()
                        if Func_Settings["Triple Quest Cake Or Bone"] or Func_Settings["Claim Quest Cake And Haunted"] then
                            if CheckI() == "CAN'T CHECKED" then
                                StatusLabel = "Get Quest"
                                CheckTripleQuestAndGetQuest()
                            elseif CheckI() == "CHECKED" then
                                repeat task.wait()
                                    KillMonster(v.Name, true, CheckStatusFeature(Func_Farms["Auto Katakuri"]) == "FALSE")
                                until not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 or CheckStatusFeature(Func_Farms["Auto Katakuri"]) == "FALSE"
                            end
                        else
                            repeat task.wait()
                                KillMonster(v.Name, true, CheckStatusFeature(Func_Farms["Auto Katakuri"]) == "FALSE")
                            until not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 or CheckStatusFeature(Func_Farms["Auto Katakuri"]) == "FALSE"
                        end
                    end)
                else
                    StatusLabel = "Waiting Tween/TP to Island"
                    if (CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                        ResetTPNearest(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375))
                    else
                        ToTween(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375))
                    end
                end
            end
        end
    end)
    -- Settings Tab
    -- local BringRadius = B:AddSlider("Bring Radius", {Title = "Bring Radius", Description = "", Default = 250, Min = 1, Max = 500, Rounding = 1,
    --     Callback = function(v)
    --         VBringRadius = v
    --     end
    -- })
    B:AddButton({Title = "Hop Server", Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Hop Server",
                Content = "Are You Sure?",
                Buttons = {
                    {Title = "Yes",Callback = function()
                        SendKeyEvents("LeftShift")
                        HopUI(Func_Settings["Hop Delay"])
                    end},
                    {Title = "No", Callback = function()
                    end}
                }
            })
        end
    })
    B:AddButton({Title = "Disable All BodyVelo", Description = "",
        Callback = function()
            DisableAll()
        end
    })
    B:AddButton({Title = "Remove Sea Terror/Fog", Description = "",
        Callback = function()
            local c = game.Lighting
            c.FogEnd = 100000
            for r, v in pairs(c:GetDescendants()) do
                if v:IsA("Atmosphere") then
                    v:Destroy()
                end
            end
            c.LightingLayers:Destroy()
            c.SeaTerrorCC:Destroy()
        end
    })
    local StopHeath = B:AddSlider("Stop Health", {Title = "Stop Health", Description = "", Default = 25, Min = 10, Max = 80, Rounding = 1,
         Callback = function(v)
             Func_Settings["Stop Health"] = v
         end
     })
    local OpenDoor = B:AddToggle("Open Cake Dimension", {Title = "Open Cake Dimension", Description = "Apply Auto Katakuri", Default = false})
    OpenDoor:OnChanged(function(v)
        Func_Settings["Open Dimension"] = v
    end)
    task.spawn(function()
        while wait() do
            if CheckStatusFeature(Func_Settings["Open Dimension"]) == "TRUE" then
                if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner", true):find("open the portal now") then
                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                end
            end
        end
    end)     
    local LOWhealth = B:AddToggle("Option: Low Health Tween Y", {Title = "Option: Low Health Tween Y", Description = "", Default = false})
    LOWhealth:OnChanged(function(v)
        Func_Settings["Low Health Tween"] = v
    end)
    local MasterySkills = B:AddDropdown("Select Skills Press", {Title = "Select Skills Press", Values = {"Z", "X", "C", "V"}, Multi = true, Default = {}})
    getgenv().TableInput1 = {}
    MasterySkills:OnChanged(function(vPress)
        for Skill,Notfv in pairs(vPress) do
            getgenv().TableInput1[Skill] = not getgenv().TableInput1[Skill]
        end
        for FormS,kv in pairs(getgenv().TableInput1) do
            if kv then
                table.insert(Func_Farms["Skills Press"], FormS)
            end
        end
    end)
    getgenv().TableInput2 = {}
    local ToolSpam = B:AddDropdown("Select Tool Spam Skill", {Title = "Select Tool Spam Skill", Values = {"Melee", "Sword", "Gun", "Fruit"}, Multi = true, Default = {}})
    ToolSpam:OnChanged(function(vTool)
        for ToolSp,Notfv in pairs(vTool) do
            getgenv().TableInput2[ToolSp] = not getgenv().TableInput2[ToolSp]
        end
        for FormS,kv in pairs(getgenv().TableInput2) do
            if kv then
                table.insert(Func_Settings["Choose Tool Spam"], FormS)
            end
        end
    end)
    local FastAttackSpeed = B:AddDropdown("Fast Attack Speed", {Title = "Fast Attack Speed", Values = {"Slow", "Normal", "No Countdown"}, Multi = false, Default = "Normal",})
    FastAttackSpeed:OnChanged(function(v)
        Func_Settings["Fast Attack"]["Speed"] = v
    end)
    local DoubleQuest = B:AddToggle("Double Quest", {Title = "Double Quest", Description = "Apply To Auto Level", Default = false})
    DoubleQuest:OnChanged(function(v)
        Func_Settings["Double Quest"] = v
    end)
    local ClaimQuest = B:AddToggle("Claim Quest", {Title = "Option: Claim Quest", Description = "Apply to Auto Bone And Auto Katakuri", Default = false})
    ClaimQuest:OnChanged(function(v)
        Func_Settings["Claim Quest Cake And Haunted"] = v
    end)
    local TripleQuest = B:AddToggle("Triple Quest", {Title = "Option: Triple Quest", Description = "Apply to Auto Bone And Auto Katakuri\nRequirement: Turn On Claim Quest", Default = false})
    TripleQuest:OnChanged(function(v)
        Func_Settings["Triple Quest Cake Or Bone"] = v
    end)
    local TweenSpeed = B:AddSlider("Tween Speed", {Title = "Tween Speed", Description = "", Default = 300, Min = 1, Max = 400, Rounding = 1,
        Callback = function(v)
            Func_Settings["Tween Speed"] = v
        end
    })
    local HopDelay = B:AddSlider("Hop Delay", {Title = "Hop Delay", Description = "", Default = 4, Min = 1, Max = 20, Rounding = 1,
        Callback = function(v)
            Func_Settings["Hop Delay"] = v
        end
    })
    local Usesword = B:AddToggle("Select Sword", {Title = "Select Sword", Description = "Switching Use Sword", Default = false})
    Usesword:OnChanged(function(v)
            if v == true then
                getgenv()["SelectTool"] = "Sword"
            else
                getgenv()["SelectTool"] = "Melee"
            end
        end
    )
    -- Status Tab
    CakeStatus = C:AddParagraph({Title = "Cake Island", Content = "nil"})
    BoneStatus = C:AddParagraph({Title = "Haunted Castle", Content = "nil"})
    FunctionStatus = C:AddParagraph({Title = "Function Status", Content = "nil"})
    spawn(function()
        while task.wait() do
            if game.PlaceId == 7449423635 then
                CakeStatus:SetDesc(tostring(RemainingCake()))
                BoneStatus:SetDesc("Your Bone: "..tostring(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Bones", "Check")).."\nSoul Reaper: "..SoulReaperS())
            end
            FunctionStatus:SetDesc(StatusLabel)
        end
    end)
    -- Other Tab
    local RandomSup = D:AddToggle("Random Suprise", {Title = "Random Suprise", Description = "", Default = false})
    RandomSup:OnChanged(function(v)
        Func_Other["Random Suprise"] = v
    end)
    local AwkV4 = D:AddToggle("Awakening V4", {Title = "Awakening V4", Description = "", Default = false})
    AwkV4:OnChanged(function(v)
        Func_Other["Awakening V4"] = v
    end)
    task.spawn(function()
        while task.wait() do
            if CheckStatusFeature(Func_Other["Random Suprise"]) == "TRUE" then
               if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Bones", "Check") > 0 then
                    for i = 1,100 do
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
                    end
                end
            end
            if CheckStatusFeature(Func_Other["Awakening V4"]) == "TRUE" then
                if game.Players.LocalPlayer.Character:FindFirstChild("RaceEnergy") and game.Players.LocalPlayer.Character.RaceEnergy.Value >= 1 and not game.Players.LocalPlayer.Character.RaceTransformed.Value then
                    SendKeyEvents("Y")
                end
            end
        end
    end)
    -- Sub Tab
    local FullMas = E:AddToggle("Auto Max Mastery", {Title = "Auto Max Mastery", Description = "Apply To Sword", Default = false})
    FullMas:OnChanged(function(v)
        Func_Sub["Auto Full Mastery All Sword"] = v
        if not v then
            Usesword:SetValue(false)
        end
    end)
    local SoulReaper = E:AddToggle("Auto Soul Reaper", {Title = "Auto Soul Reaper", Description = "Haunted Castle (Sea 3)", Default = false})
    SoulReaper:OnChanged(function(v)
        Func_Sub["Auto Soul Reaper"] = v
    end)
    local CDK = E:AddToggle("Auto Cursed Dual Katana", {Title = "Auto Cursed Dual Katana", Description = "Mythical Sword Fully (Sea 3) \nRequirement: Not Have Alucard Fragment In Inventory Items", Default = false})
    CDK:OnChanged(function(v)
        Func_Sub["Auto Cursed Dual Katana"] = v
    end)
    local SG = E:AddToggle("Auto Soul Guitar", {Title = "Auto Soul Guitar", Description = "Mythical Gun Fully (Sea 3)", Default = false})
    SG:OnChanged(function(v)
        Func_Sub["Auto Soul Guitar"] = v
    end)
    local SGH = E:AddToggle("Hop (Soul Guitar)", {Title = "Hop (Soul Guitar)", Description = "Option Hop", Default = false})
    SGH:OnChanged(function(v)
        getgenv().HopFunc["Soul Guitar"] = v
    end)
    task.spawn(function()
        while task.wait() do
            if CheckStatusFeature(Func_Sub["Auto Soul Guitar"]) == "TRUE" then
                if CheckItem("Soul Guitar") then
                    noti("Experience Script", "Auto Soul Guitar", "You Has Already Have Soul Guitar", 5)
                    SG:SetValue(false)
                end
                TaskString = "Auto Soul Guitar"
                SoulGuitar()
            end
        end
    end)
    task.spawn(function()
        while task.wait() do
            if CheckStatusFeature(Func_Sub["Auto Cursed Dual Katana"]) == "TRUE" then
                TaskString = "Auto Cursed Dual Katana"
                if CheckItem("Cursed Dual Katana") then
                    CDK:SetValue(false)
                end
                CursedDualKatana()
            end
        end
    end)
    task.spawn(function()
        while task.wait() do
            if CheckStatusFeature(Func_Sub["Auto Full Mastery All Sword"]) == "TRUE" then
                if GetMasteryTool("Sword") >= 600 then
                    ChangeSword()
                else
                    Usesword:SetValue(true)
                end
            end
        end
    end)
    task.spawn(function()
        while task.wait() do
            if CheckStatusFeature(Func_Sub["Auto Soul Reaper"]) == "TRUE" then
                TaskString = "Auto Soul Reaper"
                if CheckEnemies("Soul Reaper", true) then
                    local v = CheckEnemies("Soul Reaper", true)
                    repeat task.wait()
                        KillMonster(v.Name, false, CheckStatusFeature(Func_Sub["Auto Soul Reaper"]) == "FALSE")
                    until not v or v.Humanoid.Health <= 0 or CheckStatusFeature(Func_Sub["Auto Soul Reaper"]) == "FALSE"
                else
                    StatusLabel = "Summoning Soul Reaper"
                    if CheckItemBPCR("Hallow Essence") then
                        ToTween(CFrame.new(-8930.6083984375, 144.92068481445312, 6066.2236328125))
                    end
                end
            end
        end
    end) 
    -- Necessary Tab
    local RaidSelect = F:AddDropdown("Select Raid", {Title = "Select Raid", Values = GetNameRaid(), Multi = false, Default = "Flame",})
    RaidSelect:OnChanged(function(v)
        getgenv().RaidSelect = v
    end)
    local RaidFully = F:AddToggle("Auto Fully Raid", {Title = "Auto Fully Raid", Description = "", Default = false})
    RaidFully:OnChanged(function(v)
        Func_Neccessary["Auto Fully Raid"] = v
        StopTween(v)
        ClearTask()
    end)
    task.spawn(function()
        while task.wait() do
            if CheckStatusFeature(Func_Neccessary["Auto Fully Raid"]) == "TRUE" then
                TaskString = "Auto Fully Raid"
                if CheckItemBPCR("Special Microchip") then
                    ClickRaid()
                elseif NextIS() and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                    repeat task.wait()
                        StatusLabel = "Successing: "..tostring(GetstatusIsland())
                        ToTween(NextIS().CFrame * CFrame.new(0,60,0))
                        KillAura()
                        NoClip()
                    until not game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible or CheckStatusFeature(Func_Neccessary["Auto Fully Raid"]) == "FALSE"
                    ClearTask()
                else
                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", getgenv().RaidSelect)
                end
            end
        end
    end)
    -- Race Tab
    G:AddButton({Title = "Pull Lever [Temple Of Time]", Description = "",
        Callback = function()
            PullLever()
        end
    })
    G:AddButton({Title = "Tween To Current Race Door", Description = "",
        Callback = function()
            local CurrentDoor = game.Workspace.Map["Temple of Time"][game.Players.LocalPlayer.Data.Race.Value.."Corridor"].Door.Door.RightDoor.Union
            if GetDistance(CFrame.new(28282.5703125, 14896.8505859375, 105.1042709350586)) > 2000 then 
                RequestEntraceTemple()
                wait(1)
                repeat task.wait()
                    ToTween(CurrentDoor.CFrame)
                until (CurrentDoor.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 8
            else
                repeat task.wait()
                    ToTween(CurrentDoor.CFrame)
                until (CurrentDoor.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 8
            end
        end
    })
    local TrialFully = G:AddToggle("Auto Fully Trial", {Title = "Auto Fully Trial", Description = "Race V4 [Third Sea]", Default = false})
    TrialFully:OnChanged(function(v)
        Func_UpgradeRace["Auto Fully Trial"] = v
        StopTween(v)
        ClearTask()
    end)
    local KillTrial = G:AddToggle("Auto Kill Players Trial", {Title = "Auto Kill Players Trial", Description = "Race V4 [Third Sea]", Default = false})
    KillTrial:OnChanged(function(v)
        Func_UpgradeRace["Auto Kill Players Trial Completed"] = v
        StopTween(v)
        ClearTask()
    end)
    local AllPlayers = {}
    for _,NPlayers in pairs(game.Workspace.Characters:GetChildren()) do
        table.insert(AllPlayers, NPlayers.Name)
    end
    local MultipleTrial = G:AddDropdown("Multiple Trial [Players]", {Title = "Multiple Trial [Players]", Values = AllPlayers, Multi = true, Default = {}})
    getgenv().TableInput3 = {}
    MultipleTrial:OnChanged(function(v)
        for Players,Notfv in pairs(v) do
            getgenv().TableInput3[Players] = not getgenv().TableInput3[Players]
        end
        for FormS,kv in pairs(getgenv().TableInput3) do
            if kv then
                table.insert(Func_UpgradeRace["Multiple Trial"], FormS)
            end
        end
    end)
    G:AddButton({Title = "Refresh Players [Multiple Trials]", Description = "",
        Callback = function()
            table.clear(AllPlayers)
            wait(0.5)
            for _,NPlayers in pairs(game.Workspace.Characters:GetChildren()) do
                table.insert(AllPlayers, NPlayers.Name)
            end
        end
    })
    task.spawn(function()
        while task.wait() do
            if CheckStatusFeature(Func_UpgradeRace["Auto Fully Trial"]) == "TRUE" then
                TaskString = "Auto Fully Trial"
                AutoTrial()
            end
        end
    end)
    task.spawn(function()
        while task.wait() do
            if CheckNotification("FIGHT!") then 
                KillingTrial = true
            end
        end
    end)
    task.spawn(function()
        while task.wait() do
            if CheckStatusFeature(Func_UpgradeRace["Auto Kill Players Trial Completed"]) == "TRUE" then
                TaskString = "Auto Kill Players Trial Complete"
                if KillingTrial and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible then
                    if GetPlayersTrial() then
                        repeat task.wait()
                            TaskString = "Killing: "..GetPlayersTrial().Name
                            ToTween(GetPlayersTrial().HumanoidRootPart.CFrame * CFrame.new(0,0,4))
                            EquipTool()
                            if not CheckItemBPCR("Electric Claw") then
                                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw")
                            end
                            spawn(function()
                                SendKeyEvents("C")
                                SendKeyEvents("Z", 1)
                                SendKeyEvents("X")
                            end)
                            getgenv().AttackPlayers = true
                            AddHitbox(60)
                            Clicking()
                        until GetPlayersTrial().Humanoid.Health <= 0 or not GetPlayersTrial():FindFirstChild("Humanoid") or not GetPlayersTrial():FindFirstChild("HumanoidRootPart") or CheckStatusFeature(Func_UpgradeRace["Auto Kill Players Trial Completed"]) == "FALSE"
                        getgenv().AttackPlayers = false
                    end
                elseif not game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible and KillingTrial then
                    TaskString = "Killed All Players / Upgrade Gear in Infinity Stairs"
                    KillingTrial = false
                end
            end
        end
    end)
    -- Sea Event Tab
    local BoatSelect = H:AddDropdown("Select Boat", {Title = "Select Boat", Values = {"PirateGrandBrigade", "PirateBrigade", "Guardian", "BeastHunter"}, Multi = false, Default = "PirateGrandBrigade",})
    BoatSelect:OnChanged(function(v)
        Func_SeaEvent["Boat Name"] = v
    end)
    local SailBoat = H:AddToggle("Tween Boat To Zone 6", {Title = "Tween Boat To Zone 6", Description = "Sea Event [Third Sea]", Default = false})
    SailBoat:OnChanged(function(v)
        Func_SeaEvent["Tween Boat To Zone 6"] = v
        StopTween(v)
        ClearTask()
    end)
    local AllSharks = H:AddToggle("Auto Kill All Fishes", {Title = "Auto Kill All Fishes", Description = "Sea Event [Third Sea]", Default = false})
    AllSharks:OnChanged(function(v)
        Func_SeaEvent["Auto Kill Fish Mon"] = v
    end)
    local SeaBeast = H:AddToggle("Auto Kill Sea Beasts", {Title = "Auto Kill Sea Beasts", Description = "Sea Event [Third Sea]", Default = false})
    SeaBeast:OnChanged(function(v)
        Func_SeaEvent["Auto Sea Beast"] = v
    end)
    local ShipKiller = H:AddToggle("Auto Ghost/Fish Ship", {Title = "Auto Ghost/Fish Ship", Description = "Sea Event [Third Sea]", Default = false})
    ShipKiller:OnChanged(function(v)
        Func_SeaEvent["Auto Kill Ghost/Fish Ship"] = v
    end)
    local Terror = H:AddToggle("Auto Kill Terror Shark", {Title = "Auto Kill Terror Shark", Description = "Sea Event [Third Sea]", Default = false})
    Terror:OnChanged(function(v)
        Func_SeaEvent["Auto Kill Terror Shark"]["Normal Kill"] = v
    end)
    local DSKD = H:AddToggle("Option: Dodge Skills", {Title = "Option: Dodge Skills", Description = "Apply To Terrorshark", Default = false})
    DSKD:OnChanged(function(v)
        Func_SeaEvent["Auto Kill Terror Shark"]["Dogde Skill"] = v
    end)
    spawn(function()
        while task.wait() do
            if CheckStatusFeature(Func_SeaEvent["Tween Boat To Zone 6"]) == "TRUE" then
                TaskString = "Tween Boat To Zone 6"
                if not CheckAllSeaMonster() and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                    local NPCBoatBuyer = CFrame.new(-16208.3945, 9.06366062, 404.428528, -0.0355736837, 8.33082723e-08, -0.999367058, -6.39925517e-08, 1, 8.56389306e-08, 0.999367058, 6.69985383e-08, -0.0355736837)
                    local Zone6_CFrame = CFrame.new(-29560.6387, 4.16074038, -35478.9805, -0.559413493, 0.25548467, 0.788532913, 0.0100672524, 0.953337312, -0.301739246, -0.82882762, -0.160858646, -0.535881758)
                    if not GetBoat(Func_SeaEvent["Boat Name"]) and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                        StatusLabel = "Going to NPC Boat And Buying"
                        if GetDistance(NPCBoatBuyer) < 20 then
                            local args = {[1] = "BuyBoat", [2] = Func_SeaEvent["Boat Name"]}
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        else
                            ToTween(NPCBoatBuyer)
                        end
                    end
                    if GetBoat(Func_SeaEvent["Boat Name"]) and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                        StatusLabel = "Tween Boat To Zone"
                        local getCurrentOwnerBoat = GetBoat(Func_SeaEvent["Boat Name"])
                        if not game.Players.LocalPlayer.Character.Humanoid.Sit then
                            ToTween(getCurrentOwnerBoat.VehicleSeat.CFrame)
                        else
                            if GetDistance(Zone6_CFrame, getCurrentOwnerBoat.VehicleSeat.CFrame) > 50 then
                                DisableCollisions(getCurrentOwnerBoat, false)
                                if not FFC(game.Workspace._WorldOrigin.Locations, "Rough Sea") then
                                    TweenObject(Zone6_CFrame, getCurrentOwnerBoat.VehicleSeat, 350)
                                else
                                    TweenObject(CFrame.new(-28464.876953125, 12.553319931030273, 6896.8076171875), getCurrentOwnerBoat.VehicleSeat, 350)
                                end
                            end
                        end
                    end
                end
            end
        end
    end)
    spawn(function()
        while task.wait() do
            if CheckStatusFeature(Func_SeaEvent["Auto Kill Fish Mon"]) == "TRUE" then
                repeat task.wait()
                    local v1,v2,v3 = CheckEnemies("Shark"), CheckEnemies("Piranha"), CheckEnemies("Fish Crew Member")
                    if CheckEnemies("Shark") then
                        KillMonster(v1.Name, false, CheckStatusFeature(Func_SeaEvent["Auto Kill Fish Mon"]) == "FALSE")
                    end
                    if CheckEnemies("Piranha") then
                        KillMonster(v2.Name, false, CheckStatusFeature(Func_SeaEvent["Auto Kill Fish Mon"]) == "FALSE")
                    end
                    if CheckEnemies("Fish Crew Member") then
                        KillMonster(v3.Name, false, CheckStatusFeature(Func_SeaEvent["Auto Kill Fish Mon"]) == "FALSE")
                    end
                until not CheckEnemies("Shark") or not CheckEnemies("Piranha") or not CheckEnemies("Fish Crew Member") or CheckStatusFeature(Func_SeaEvent["Auto Kill Fish Mon"]) == "FALSE"
            end
            if CheckStatusFeature(Func_SeaEvent["Auto Kill Terror Shark"]["Normal Kill"]) == "TRUE" then
                if CheckEnemies("Terrorshark") then
                    local CheckedT = CheckEnemies("Terrorshark")
                    local JumpDetection = CheckedT:FindFirstChild("Humanoid").JumpPower >= 10
                    if Func_SeaEvent["Auto Kill Terror Shark"]["Dogde Skill"] then
                        if not JumpDetection then
                            KillMonster(CheckedT.Name, true, CheckStatusFeature(Func_SeaEvent["Auto Kill Terror Shark"]["Normal Kill"]) == "FALSE")
                        else
                            InstantTeleport(CheckedT.HumanoidRootPart.CFrame * CFrame.new(0,350,0))
                        end
                    else
                        KillMonster(CheckedT.Name, true, CheckStatusFeature(Func_SeaEvent["Auto Kill Terror Shark"]["Normal Kill"]) == "FALSE")
                    end
                end
            end
            if CheckStatusFeature(Func_SeaEvent["Auto Sea Beast"]) == "TRUE" then
                if GetSeaBeast() then
                    repeat task.wait()
                        if game.Players.LocalPlayer.Character.Humanoid.Sit then
                            game.Players.LocalPlayer.Character.Humanoid.Sit = false
                        end
                        Buso()
                        SpamSkill(true)
                        TeleportSeabeast(GetSeaBeast())
                        getgenv().AimPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-5,0)
                        getgenv().Aim = true
                    until GetSeaBeast().Humanoid.Health <= 0 or CheckStatusFeature(Func_SeaEvent["Auto Sea Beast"]) == "FALSE"
                    getgenv().AimPos = nil
                    getgenv().Aim = false
                    SpamSkill(false)
                end
            end
            if CheckStatusFeature(Func_SeaEvent["Auto Kill Ghost/Fish Ship"]) == "TRUE" then
                if GetGhostShip() then
                    repeat task.wait()
                        ToTween(GetGhostShip().Engine.CFrame * CFrame.new(0,-1,2))
                        if game.Players.LocalPlayer.Character.Humanoid.Sit then
                            game.Players.LocalPlayer.Character.Humanoid.Sit = false
                        end
                        if GetDistance(GetGhostShip().Engine.CFrame) <= 70 then
                            SpamSkill(true)
                        else
                            SpamSkill(false)
                        end
                        Buso()
                        getgenv().AimPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-5,0)
                        getgenv().Aim = true
                    until not GetGhostShip():FindFirstChild("Health") or GetGhostShip().Health.Value <= 0
                    SpamSkill(false)
                    getgenv().AimPos = nil
                    getgenv().Aim = false
                end
                if GetFishShip() then
                    repeat task.wait()
                        ToTween(GetGhostShip().Engine.CFrame * CFrame.new(0,-1,2))
                        if game.Players.LocalPlayer.Character.Humanoid.Sit then
                            game.Players.LocalPlayer.Character.Humanoid.Sit = false
                        end
                        Buso()
                        if GetDistance(GetFishShip().Engine.CFrame) <= 70 then
                            SpamSkill(true)
                        else
                            SpamSkill(false)
                        end
                        getgenv().AimPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-5,0)
                        getgenv().Aim = true
                    until not GetFishShip():FindFirstChild("Health") or GetFishShip().Health.Value <= 0
                    SpamSkill(false)
                    getgenv().AimPos = nil
                    getgenv().Aim = false
                end
            end
        end
    end)
    -- Shop Tab
    local BuyMelee = I:AddDropdown("Select Melee", {Title = "Select Melee", Values = {"BlackLeg", "Electro", "FishmanKarate", "DragonClaw", "Superhuman", "DeathStep", "ElectricClaw", "SharkmanKarate", "DragonTalon", "Godhuman", "SanguineArt"}, Multi = false, Default = "",})
    BuyMelee:OnChanged(function(v)
        if v == "SharkmanKarate" then
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuySharkmanKarate")
        elseif v == "DragonClaw" then
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
        else
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Buy"..v)
        end
    end)
    -- Hide FX
    loadstring(game:HttpGet("https://hvauto.click/raw/Destroy-Effect.txt"))()
    -- Fast AttacK Function
    local fastattack = 0
    task.spawn(function()
        while wait() do
            if CheckStatusFeature(Func_Settings["Fast Attack"]["Value"]) == "TRUE" then
                local table_listcountdown = {["Slow"] = 0.3,["Normal"] = 0.175,["No Countdown"] = 0.05}
                fastattack = table_listcountdown[Func_Settings["Fast Attack"]["Speed"]] or 0.175
            end
        end
    end)
    local RunService = game:GetService("RunService")
    local CombatFramework = require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
    local CombatFrameworkR = debug.getupvalues(CombatFramework)[2]
    BladeHits = function(Value)
        local Hits = {}
        for _, Hit in ipairs(game.Workspace.Enemies:GetChildren()) do
            local Humanoid = Hit and Hit:FindFirstChildOfClass("Humanoid")
            if Humanoid and Humanoid.Health > 0 then
                local RootPart = Humanoid.RootPart
                if RootPart and game.Players.LocalPlayer:DistanceFromCharacter(RootPart.Position) < Value then
                    table.insert(Hits, RootPart)
                end
            end
        end
        return Hits
    end
    PlayerHits = function(Value)
        local Hits = {}
        for _, Char in ipairs(game.Workspace.Characters:GetChildren()) do
            if Char.Name ~= game.Players.LocalPlayer.Name then
                local Humanoid = Char and Char:FindFirstChildOfClass("Humanoid")
                if Humanoid and Humanoid.RootPart and Humanoid.Health > 0 then
                    if game.Players.LocalPlayer:DistanceFromCharacter(Humanoid.RootPart.Position) < Value then
                        table.insert(Hits, Humanoid.RootPart)
                    end
                end
            end
        end
        return Hits
    end
    AddAttack = function(Hit)
        local ac = CombatFrameworkR.activeController
        if ac and ac.equipped then
            if #Hit > 0 then
                local agrs1 = getupvalue(ac.attack, 5)
                local agrs2 = getupvalue(ac.attack, 6)
                local agrs3 = getupvalue(ac.attack, 4)
                local agrs4 = getupvalue(ac.attack, 7)
                local agrs5 = (agrs1 * 798405 + agrs3 * 727595) % agrs2
                local agrs6 = agrs3 * 798405
                agrs5 = (agrs5 * agrs2 + agrs6) % 1099511627776
                agrs1 = math.floor(agrs5 / agrs2)
                agrs3 = agrs5 - agrs1 * agrs2
                agrs4 = agrs4 + 1
                setupvalue(ac.attack, 5, agrs1)
                setupvalue(ac.attack, 6, agrs2)
                setupvalue(ac.attack, 4, agrs3)
                setupvalue(ac.attack, 7, agrs4)
                local Blade = ac.currentWeaponModel
                if Blade then
                    game.ReplicatedStorage.RigControllerEvent:FireServer("weaponChange", Blade.Name)
                    ac.animator.anims.basic[1]:Play(0.01, 0.01, 0.01)
                    game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(agrs5 / 1099511627776 * 16777215), agrs4)
                    game.ReplicatedStorage.RigControllerEvent:FireServer("hit", Hit, 1, "")
                end
            end
        end
    end
    AttackFunc = function()
        AddAttack(BladeHits(65))
        if getgenv().AttackPlayers then
            AddAttack(PlayerHits(65))
        end
    end
    task.spawn(function()
        while task.wait() do
            if getgenv().CurrentlyFast then
                pcall(function()
                    local controller = CurveFrame.activeController
                    controller.timeToNextAttack = -1
                    controller.focusStart = 0
                    controller.hitboxMagnitude = 40
                    controller.humanoid.AutoRotate = true
                    controller.increment = 2          
                    game:GetService("VirtualUser"):Button1Down(Vector2.new())
                    game:GetService("VirtualUser"):Button1Up(Vector2.new())      
                end)
            end
        end
    end)
    local Tick = tick()
    local Delay = fastattack
    DetectFastAttack = function()
        task.spawn(function()
            while task.wait() do 
                if not Func_Farms["Auto Mastery"] then
                    if (tick() - Tick) >= math.clamp(Delay, 0.100, 1) then
                        task.spawn(AttackFunc)
                        getgenv().CurrentlyFast = true
                        Tick = tick()
                    end
                end
            end 
        end)
    end
    DetectFastAttack()
    -- Other
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Memories0912/UI/main/UI.lua"))()
    noti("Experience Script", "Status", "Script Has Been Loaded!", 5)
    noti("Experience Script", "Status", "Effect Hidden: Damage Counter, Death Effect, Respawn Effect", 5)
end
UIOpen()
