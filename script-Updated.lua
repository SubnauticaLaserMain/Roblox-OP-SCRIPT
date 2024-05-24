local Workspace = game.Workspace


local function addUi(part)
    local Hilight = Instance.new('Highlight', part)
    Hilight.Adornee = part
    Hilight.FillColor = Color3.new(1, 1, 1)
    Hilight.FillTransparency = 0.75
    Hilight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    Hilight.OutlineTransparency = 0



    local partGui = Instance.new('BillboardGui', part)
    partGui.Size = UDim2.new(1, 0, 1, 0)
    partGui.AlwaysOnTop = true
    partGui.Name = 'Item-ESP'
    local frame = Instance.new('Frame', partGui)
    frame.BackgroundColor3 = Color3.fromRGB(255, 80, 60)
    frame.BackgroundTransparency = 0.75
    frame.Size = UDim2.new(1, 0, 1, 0)
    frame.BorderSizePixel = 0
    local nameGui = Instance.new('BillboardGui', part)
    nameGui.Size = UDim2.new(3, 0, 1.5, 0)
    nameGui.SizeOffset = Vector2.new(0, 1)
    nameGui.AlwaysOnTop = true
    nameGui.Name = 'XD2'
    local text = Instance.new('TextLabel', nameGui)
    text.Text = part.Name
    text.TextColor3 = Color3.fromRGB(255, 80, 60)
    text.TextTransparency = 0.25
    text.BackgroundTransparency = 1
    text.TextScaled = true
    text.Size = UDim2.new(1, 0, 1, 0)
    text.Font = Enum.Font.GothamSemibold
    text.Name = 'Text'
end



for i, v in pairs(game:GetService('Players'):GetPlayers()) do
    if v and v.ClassName == 'Player' then
        addUi(v.Character)
    else
        print('Missed: '..tostring(v.Name))
    end
end


-- loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source', true))()








local Workspace = game:GetService('Workspace')



shared.VapeIndependent = true
shared.CustomSaveVape = "name of file to save"
local GuiLibrary = loadstring(game:HttpGet('https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua', true))()


local Combat = GuiLibrary.ObjectsThatCanBeSaved.CombatWindow.Api
local Blatant = GuiLibrary.ObjectsThatCanBeSaved.BlatantWindow.Api
local Render = GuiLibrary.ObjectsThatCanBeSaved.RenderWindow.Api
local Utility = GuiLibrary.ObjectsThatCanBeSaved.UtilityWindow.Api
local World = GuiLibrary.ObjectsThatCanBeSaved.WorldWindow.Api


if game.PlaceId == 17427651911 then
    local MarkNPC = {Enabled = false}


    local PortalButton = Render.CreateOptionsButton({
        Name = 'ESP',
        Function = function(callback)
            local PortalFolder = Workspace:WaitForChild('Portals')


            for i, v in ipairs(PortalFolder:GetChildren()) do
                if v and v.Name == 'Portal' then
                    local ESP = Instance.new('Highlight', v)


                    ESP.Adornee = v
                    ESP.FillTransparency = 0.5
                    ESP.FillColor = Color3.new(1, 1, 1)
                    ESP.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    ESP.Name = 'ESP'
                end
            end


            if MarkNPC.Enabled == true then
                local NPC = Workspace:WaitForChild('HelperBot')
                if NPC and NPC.ClassName == 'Model' then
                    local ESP = Instance.new('Highlight', NPC)


                    ESP.Adornee = NPC
                    ESP.FillTransparency = 0.5
                    ESP.FillColor = Color3.new(1, 1, 1)
                    ESP.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    ESP.Name = 'ESP'
                end
            end
        end
    })


    MarkNPC = PortalButton.CreateToggle({
        Name = 'Mark NPC(s)',
        Function = function(callback) end,
        Default = false
    })

    local TokenTP = Blatant.CreateOptionsButton({
        Name = 'Token TP',
        Function = function(callback)

        end,
        HoverText = 'Teleports u to a token'
    })

    local GetAllCheckpoints = Blatant.CreateOptionsButton({
        Name = 'Get ALL Checkpoints/Portals',
        Function = function(callback)
            if callback then
                local PortalFolder = Workspace:WaitForChild('Checkpoints')

                
                local PortalsTable = {}


                for i, v in ipairs(PortalFolder:GetChildren()) do
                    if v and v.ClassName == 'Folder' then
                        table.insert(PortalsTable, v:WaitForChild('Checkpoint'):GetChildren()[1])
                    end
                end


                for i, v in ipairs(PortalsTable) do
                    if v and v.ClassName == 'Part' then
                        local HumanoidRootPart = game:GetService('Players').LocalPlayer.Character:WaitForChild('HumanoidRootPart')


                        local function TP(pos: CFrame)
                            HumanoidRootPart.CFrame = pos
                        end


                        if v.CFrame then
                            TP(v.CFrame)
                        end

                        task.wait(0.5)
                    end
                end
            end
        end
    })


    local Quest = {Value = 'Mirror'}


    local CompleteQuests = Blatant.CreateOptionsButton({
        Name = 'Complete Quest',
        Function = function(callback)
            if callback then
                local HumanoidRootPart = game:GetService('Players').LocalPlayer.Character:WaitForChild('HumanoidRootPart')
                local Humanoid = game:GetService('Players').LocalPlayer.Character:WaitForChild('Humanoid')


                if Quest.Value == 'Mirror' then
                    Humanoid.WalkSpeed = 0
                    HumanoidRootPart.CFrame = CFrame.new(-210.411865, 567.0979, -132.961212, 0.89278245, 3.78389196e-08, -0.450488091, 1.38743088e-08, 1, 1.11491644e-07, 0.450488091, -1.0578799e-07, 0.89278245)
                    
                    task.wait(0.5)

                    game:GetService('TextChatService').ChatInputBarConfiguration.TargetTextChannel:SendAsync('magic mirror')

                    task.wait(1)


                    HumanoidRootPart.CFrame = CFrame.new(-226.260071, 588.498169, -140.407639, 0.867985308, 5.7843998e-08, -0.496589869, -5.94227174e-08, 1, 1.261796e-08, 0.496589869, 1.85565163e-08, 0.867985308)
                    Humanoid.WalkSpeed = 16
                elseif Quest.Value == 'Flag' then
                    Humanoid.WalkSpeed = 0
                    HumanoidRootPart.CFrame = CFrame.new(-100.115479, 712.598083, 555.688965, 0.941672027, -1.05838147e-08, -0.336531937, 2.38761153e-08, 1, 3.53596654e-08, 0.336531937, -4.13322852e-08, 0.941672027)

                    task.wait(0.5)


                    HumanoidRootPart.CFrame = CFrame.new(201.816727, 604.297791, -114.012604, 0.982967436, -4.70650754e-08, 0.183779955, 4.55917935e-08, 1, 1.22419737e-08, -0.183779955, -3.65460395e-09, 0.982967436)

                    task.wait(0.3)

                    HumanoidRootPart.CFrame = CFrame.new(200.760056, 602.81781, -108.505028, -0.96263504, 1.2295045e-09, 0.270802081, 1.20655363e-09, 1, -2.5123062e-10, -0.270802081, 8.48938281e-11, -0.96263504)

                    task.wait(0.3)

                    HumanoidRootPart.CFrame = CFrame.new(-164.635696, 302.354828, 193.298355, 0.898908257, -0.127091661, 0.419298947, 1.88549585e-08, 0.957004547, 0.290072948, -0.438136846, -0.260748953, 0.860259295)

                    task.wait(0.5)

                    HumanoidRootPart.CFrame = CFrame.new(-100.115479, 712.598083, 555.688965, 0.941672027, -1.05838147e-08, -0.336531937, 2.38761153e-08, 1, 3.53596654e-08, 0.336531937, -4.13322852e-08, 0.941672027)

                    task.wait(0.3)

                    HumanoidRootPart.CFrame = CFrame.new(-100.007866, 711.5979, 548.395447, -0.850957036, 6.8993387e-08, -0.525235295, 3.52150025e-08, 1, 7.43037134e-08, 0.525235295, 4.47331061e-08, -0.850957036)

                    task.wait(0.3)

                    HumanoidRootPart.CFrame = CFrame.new(-100.115479, 712.598083, 555.688965, 0.941672027, -1.05838147e-08, -0.336531937, 2.38761153e-08, 1, 3.53596654e-08, 0.336531937, -4.13322852e-08, 0.941672027)

                    task.wait(0.5)

                    HumanoidRootPart.CFrame = CFrame.new(201.816727, 604.297791, -114.012604, 0.982967436, -4.70650754e-08, 0.183779955, 4.55917935e-08, 1, 1.22419737e-08, -0.183779955, -3.65460395e-09, 0.982967436)

                    task.wait(0.1)

                    Humanoid.WalkSpeed = 16
                elseif Quest.Value == 'Obby' then
                    Humanoid.WalkSpeed = 0
                    HumanoidRootPart.CFrame = CFrame.new(-140.96637, 288.42453, 331.041351, 0.417113602, 0.255825877, -0.872106254, 2.78804591e-10, 0.959566593, 0.281481713, 0.908854365, -0.117409855, 0.400248289)

                    task.wait(1.5)

                    HumanoidRootPart.CFrame = CFrame.new(-140.96637, 288.42453, 331.041351, 0.417113602, 0.255825877, -0.872106254, 2.78804591e-10, 0.959566593, 0.281481713, 0.908854365, -0.117409855, 0.400248289)

                    task.wait(1.5)

                    HumanoidRootPart.CFrame = CFrame.new(-208.893585, 308.55661, 103.556183, 0.989478111, -0.00822329801, 0.144448608, -7.23761329e-10, 0.998383462, 0.0568368621, -0.144682497, -0.0562388338, 0.987878621)

                    task.wait(1.5)

                    HumanoidRootPart.CFrame = CFrame.new(-109.653709, 341.148865, 103.220512, 0.941580176, 0.160246, -0.296222925, -6.36549968e-09, 0.879550576, 0.475805372, 0.336788952, -0.448008895, 0.828167379)

                    task.wait(1.5)

                    HumanoidRootPart.CFrame = CFrame.new(-108.96328, 343.424377, 20.8832264, -0.758345783, -0.115303598, 0.641573608, -7.39863637e-09, 0.984231353, 0.176886022, -0.651852489, 0.134140775, -0.74638772)

                    task.wait(1.5)

                    HumanoidRootPart.CFrame = CFrame.new(-13.7776165, 344.752716, 21.7951756, -0.828893304, -0.0167769846, 0.559155107, -3.68454778e-09, 0.999550164, 0.0299906656, -0.559406757, 0.0248590596, -0.828520417)

                    task.wait(1.5)

                    HumanoidRootPart.CFrame = CFrame.new(104.336014, 343.514618, 100.529449, 0.0404533297, 0.349198014, -0.936175346, 4.05234957e-09, 0.936942279, 0.349484086, 0.999181449, -0.0141377989, 0.0379024334)


                    task.wait(0.5)


                    Humanoid.WalkSpeed = 16
                end
            end
        end
    })


    Quest = CompleteQuests.CreateDropdown({
        Name = 'Quest',
        List = {'Mirror', 'Flag', 'Obby'},
        Function = function(val) end
    })


-- 
    local TP_Options = {Value = 'GoldPot'}

    local TP = Blatant.CreateOptionsButton({
        Name = 'TP',
        Function = function(callback)
            if callback then
                local HumanoidRootPart = game:GetService('Players').LocalPlayer.Character:WaitForChild('HumanoidRootPart')


                if TP_Options.Value == 'GoldPot' then
                    HumanoidRootPart.CFrame = CFrame.new(79.153923, 595.79187, 512.2854, -0.873605728, -1.09014785e-07, -0.486634374, -9.61479927e-08, 1, -5.14130321e-08, 0.486634374, 1.87419791e-09, -0.873605728)
                elseif TP_Options.Value == 'VIP_Room' then
                    HumanoidRootPart.CFrame = CFrame.new(225.547287, 549.61969, 312.236237, 0.929435372, -0.132046297, 0.344548553, -4.87495777e-09, 0.933773875, 0.357863605, -0.368984997, -0.332611084, 0.867882431)
                elseif TP_Options.Value == 'Ice_Room' then
                    HumanoidRootPart.CFrame = CFrame.new(-10.2858124, 477.933197, 153.905945, 0.673626721, -0.328141451, 0.662231266, 5.43987611e-09, 0.896031082, 0.443991333, -0.739071727, -0.299084425, 0.603590488)
                end
            end
        end
    })


    TP_Options = TP.CreateDropdown({
        Name = 'Locations',
        Function = function(val) end,
        List = {'GoldPot', 'VIP_Room', 'Ice_Room'}
    })
end


setclipboard(tostring(game:GetService('Players').LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame))
