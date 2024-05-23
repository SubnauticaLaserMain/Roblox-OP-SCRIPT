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

                    HumanoidRootPart.CFrame = CFrame.new(201.816727, 604.297791, -114.012604, 0.982967436, -4.70650754e-08, 0.183779955, 4.55917935e-08, 1, 1.22419737e-08, -0.183779955, -3.65460395e-09, 0.982967436)

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
                end
            end
        end
    })


    Quest = CompleteQuests.CreateDropdown({
        Name = 'Quest',
        List = {'Mirror', 'Flag'},
        Function = function(val) end
    })
end
