
local unitHandlerFrame = CreateFrame('Frame', 'unitHandleFrame', UIParent)

--local hashCheck


function ApplyZurichoBordersToZPerl()
--    if moving or plaMoved == true then
  --      return
    --end
    --moving = true
   
    if tostring(XPerl_PlayernameFrame:GetBackdrop().edgeFile) ~= tostring("Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1" and IsAddOnLoaded("ZPerl")) then
        XPerl_Frame_Backdrop_32_16_3333.edgeFile = "Interface\\AddOns\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"
        XPerl_Frame_Backdrop_256_10_1211.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"
        XPerl_Tooltip_Edge_9.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"
        XPerl_Tooltip_Edge_6.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"



        XPerl_Frame_Backdrop_32_16_4444.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"
        
        XPerl_Frame_Backdrop_16_16_4444.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"
        
        XPerl_Frame_Backdrop_8_16_3333.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"
        
        XPerl_Icon_Backdrop_8_16_3333.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1" --""
        
        XPerl_Frame_Backdrop_256_10_1211.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"
        
        XPerl_Raid_Backdrop_16_9_3333.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"
        
        XPerl_Raid_Backdrop_32_16_3333.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"
        
        XPerl_Options_Backdrop_256_16_3333.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"
        
        XPerl_Options_Backdrop_256_16_5555.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"
        
        XPerl_UISlider_Backdrop_8_8_3366.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"
        
        XPerl_Frame_Backdrop_32_16_2222.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"

        XPerl_PlayernameFrame:SetBackdrop(
            {bgFile = "Interface\\Addons\\ZPerl\\Images\\XPerl_FrameBack",
            edgeFile =  "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1",
            tile = true,
            tileSize = 32,
            edgeSize = 16,
            insets = { left = 3, right = 3, top = 3, bottom = 3}
            })
        XPerl_PlayerportraitFrame:SetBackdrop(
            {bgFile = "Interface\\Addons\\ZPerl\\Images\\XPerl_FrameBack",
            edgeFile =  "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1",
            tile = true,
            tileSize = 32,
            edgeSize = 16,
            insets = { left = 3, right = 3, top = 3, bottom = 3}
            })
        XPerl_PlayerlevelFrame:SetBackdrop(
            {bgFile = "Interface\\Addons\\ZPerl\\Images\\XPerl_FrameBack",
            edgeFile =  "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1",
            tile = true,
            tileSize = 32,
            edgeSize = 16,
            insets = { left = 3, right = 3, top = 3, bottom = 3}
            })
        XPerl_PlayerstatsFrame:SetBackdrop(
            {bgFile = "Interface\\Addons\\ZPerl\\Images\\XPerl_FrameBack",
            edgeFile =  "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1",
            tile = true,
            tileSize = 32,
            edgeSize = 16,
            insets = { left = 3, right = 3, top = 3, bottom = 3}
            })
            --moving = nil
            --plaMoved = true 
        
            --hashCheck = XPerl_PlayernameFrame:GetBackdrop({edgeFile});


        end
    end

function unitHandlerFrame:OnEvent(event, addon)
	--Check if the talkinghead addon is being loaded
	

local moving
local plaMoved = false
local tarMoved = false
if (IsAddOnLoaded("ZPerl")) then
hooksecurefunc("XPerl_SetHealthBar", function()
    
ApplyZurichoBordersToZPerl()

end)

hooksecurefunc("XPerl_Unit_UpdatePortrait", function()
    
ApplyZurichoBordersToZPerl()

end)
hooksecurefunc("XPerl_BarUpdate",ApplyZurichoBordersToZPerl)




_G["XPerl_Globals"]:HookScript("OnUpdate", function()
    --if tContains(XPerl_PlayernameFrame:GetBackdrop({edgeFile}), "Interface\\AddOns\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1") then
    
        --ApplyZurichoBordersToZPerl()

        --print(tContains(XPerl_PlayernameFrame:GetBackdrop({edgeFile}), "Interface\\AddOns\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"))
    --end
    --if tostring(XPerl_PlayernameFrame:GetBackdrop().edgeFile) ~= tostring("Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1") then
        --print(XPerl_PlayernameFrame:GetBackdrop().edgeFile)
        
        --print(XPerl_PlayernameFrame:GetBackdrop().edgeFile)
        
    --end

    ApplyZurichoBordersToZPerl()

    if moving or plaMoved == true then
        return
    end
    moving = true
    if (IsAddOnLoaded("ZPerl")) then


        XPerl_Frame_Backdrop_32_16_3333.edgeFile = "Interface\\AddOns\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"
        XPerl_Frame_Backdrop_256_10_1211.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"
        XPerl_Tooltip_Edge_9.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"
        XPerl_Tooltip_Edge_6.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"



        XPerl_Frame_Backdrop_32_16_4444.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"
        
        XPerl_Frame_Backdrop_16_16_4444.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"
        
        XPerl_Frame_Backdrop_8_16_3333.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"
        
        XPerl_Icon_Backdrop_8_16_3333.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1" --""
        
        XPerl_Frame_Backdrop_256_10_1211.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"
        
        XPerl_Raid_Backdrop_16_9_3333.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"
        
        XPerl_Raid_Backdrop_32_16_3333.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"
        
        XPerl_Options_Backdrop_256_16_3333.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"
        
        XPerl_Options_Backdrop_256_16_5555.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"
        
        XPerl_UISlider_Backdrop_8_8_3366.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"
        
        XPerl_Frame_Backdrop_32_16_2222.edgeFile = "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1"

        XPerl_PlayernameFrame:SetBackdrop(
            {bgFile = "Interface\\Addons\\ZPerl\\Images\\XPerl_FrameBack",
            edgeFile =  "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1",
            tile = true,
            tileSize = 32,
            edgeSize = 16,
            insets = { left = 3, right = 3, top = 3, bottom = 3}
            })
        XPerl_PlayerportraitFrame:SetBackdrop(
            {bgFile = "Interface\\Addons\\ZPerl\\Images\\XPerl_FrameBack",
            edgeFile =  "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1",
            tile = true,
            tileSize = 32,
            edgeSize = 16,
            insets = { left = 3, right = 3, top = 3, bottom = 3}
            })
        XPerl_PlayerlevelFrame:SetBackdrop(
            {bgFile = "Interface\\Addons\\ZPerl\\Images\\XPerl_FrameBack",
            edgeFile =  "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1",
            tile = true,
            tileSize = 32,
            edgeSize = 16,
            insets = { left = 3, right = 3, top = 3, bottom = 3}
            })
        XPerl_PlayerstatsFrame:SetBackdrop(
            {bgFile = "Interface\\Addons\\ZPerl\\Images\\XPerl_FrameBack",
            edgeFile =  "Interface\\Addons\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1",
            tile = true,
            tileSize = 32,
            edgeSize = 16,
            insets = { left = 3, right = 3, top = 3, bottom = 3}
            })

        local targetAnchorAdjustmentValue = 0;  
        if ZPerlConfigNew[GetRealmName()][UnitName("Player")].target.level == 1 then -- These can return nil exceptions if the profiles do not exist, considering to use global instead. Although it is heavily considered to Add the profiles fully within ZurichoUI menu.
            targetAnchorAdjustmentValue = 960 + (99 + (XPerl_Player.levelFrame:GetWidth() + 2)*2);
            --print(targetAnchorAdjustmentValue)
        else
            targetAnchorAdjustmentValue = 960 + 99;
        end
        local playerAnchorAdjustmentValue = 0;
        if ZPerlConfigNew[GetRealmName()][UnitName("Player")].target.level == 1 then
            playerAnchorAdjustmentValue = 960 - (99 + XPerl_Player:GetWidth() + XPerl_Player.levelFrame:GetWidth() + 2);
            --print(playerAnchorAdjustmentValue)
        else
            playerAnchorAdjustmentValue = 960 - (99 + XPerl_Player:GetWidth());
        end

        --ZperlConfigNew.global["savedPositions"[GetRealmName()[UnitName("Player")["XPerl_Player"]]]] = {["top"] = ,["height"] = false,["left"]=,["width"]=false,   610   1117}
        ZPerlConfigNew.savedPositions[GetRealmName()][UnitName("Player")].XPerl_Player = {["top"] = 269.2003804418673 ,["height"] = false,["left"]= (playerAnchorAdjustmentValue),["width"]=false,}
        ZPerlConfigNew.savedPositions[GetRealmName()][UnitName("Player")].XPerl_Target = {["top"] = 269.2003804418673 ,["height"] = false,["left"]= (targetAnchorAdjustmentValue),["width"]=false,}
        ZPerlConfigNew.savedPositions[GetRealmName()][UnitName("Player")].XPerl_Player_Pet = {
            ["top"] = 93.70140068698947,
            ["height"] = false,
            ["left"] = playerAnchorAdjustmentValue,
            ["width"] = false,
        }

        ZPerlConfigNew.savedPositions[GetRealmName()][UnitName("Player")].XPerl_PetTarget = {
            ["height"] = false,
            ["top"] = 93.70001213720843,
            ["left"] = 699.8810427685967,
            ["width"] = false,
        }
        ZPerlConfigNew.savedPositions[GetRealmName()][UnitName("Player")].XPerl_Focus = {
            ["height"] = false,
            ["top"] = 863.0000128597021,
            ["left"] = 604.800594949731,
            ["width"] = false,
        }
        ZPerlConfigNew.savedPositions[GetRealmName()][UnitName("Player")].XPerl_TargetTarget = {
            ["height"] = false,
            ["top"] = 270.2004226446079,
            ["left"] = 1341.662513772717,
            ["width"] = false,
        }

        
            
        --print("ZurichoUI Says ZPerl Is loaded")
        XPerl_RestoreAllPositions()
    

    end
    moving = nil
    plaMoved = true 

end)
end
_G["PlayerFrame"]:HookScript("OnUpdate", function()
    if moving or plaMoved == true then
        return
    end
    moving = true
    PlayerFrame:SetMovable(true)
    PlayerFrame:SetUserPlaced(true)
    PlayerFrame:ClearAllPoints()
    PlayerFrame:SetPoint("BOTTOM", nil, "BOTTOM",-260,180)
    PlayerFrame:SetScale(1.0) -- optional
    --TalkingHeadFrame:SetWidth() -- optional
    --TalkingHeadFrame:SetHeight(150) -- optional 
    --PlayerFrame:SetMovable(false)
    moving = nil
    plaMoved = true 

   -- print("Should be setting point to new position")
end)
_G["TargetFrame"]:HookScript("OnUpdate", function()
--hooksecurefunc("TargetFrame_OnLoad", function()
    if moving or tarMoved == true then
        return
    end
    moving = true
    TargetFrame:SetMovable(true)
    TargetFrame:SetUserPlaced(true)
    TargetFrame:ClearAllPoints()
    TargetFrame:SetPoint("BOTTOM", nil, "BOTTOM",260,180)
    TargetFrame:SetScale(1.0) -- optional
    --TalkingHeadFrame:SetWidth() -- optional
    --TalkingHeadFrame:SetHeight(150) -- optional 
    --TargetFrame:SetMovable(false)
    moving = nil 
    tarMoved = true
   --print("Should be setting point to new position")
end)
end




unitHandlerFrame:RegisterEvent("ADDON_LOADED")
unitHandlerFrame:HookScript("OnEvent", unitHandlerFrame.OnEvent)



