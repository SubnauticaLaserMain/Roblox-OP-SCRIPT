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
end
