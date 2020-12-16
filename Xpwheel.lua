PowerBarColor = {};
PowerBarColor["MANA"] = { r = 0.00, g = 0.00, b = 1.00 };
PowerBarColor["RAGE"] = { r = 1.00, g = 0.00, b = 0.00, fullPowerAnim=true };
PowerBarColor["FOCUS"] = { r = 1.00, g = 0.50, b = 0.25, fullPowerAnim=true };
PowerBarColor["ENERGY"] = { r = 1.00, g = 1.00, b = 0.00, fullPowerAnim=true };
PowerBarColor["COMBO_POINTS"] = { r = 1.00, g = 0.96, b = 0.41 };
PowerBarColor["RUNES"] = { r = 0.50, g = 0.50, b = 0.50 };
PowerBarColor["RUNIC_POWER"] = { r = 0.00, g = 0.82, b = 1.00 };
PowerBarColor["SOUL_SHARDS"] = { r = 0.50, g = 0.32, b = 0.55 };
PowerBarColor["LUNAR_POWER"] = { r = 0.30, g = 0.52, b = 0.90, atlas="_Druid-LunarBar" };
PowerBarColor["HOLY_POWER"] = { r = 0.95, g = 0.90, b = 0.60 };
PowerBarColor["MAELSTROM"] = { r = 0.00, g = 0.50, b = 1.00, atlas = "_Shaman-MaelstromBar", fullPowerAnim=true };
PowerBarColor["INSANITY"] = { r = 0.40, g = 0, b = 0.80, atlas = "_Priest-InsanityBar"};
PowerBarColor["CHI"] = { r = 0.71, g = 1.0, b = 0.92 };
PowerBarColor["ARCANE_CHARGES"] = { r = 0.1, g = 0.1, b = 0.98 };
PowerBarColor["FURY"] = { r = 0.788, g = 0.259, b = 0.992, atlas = "_DemonHunter-DemonicFuryBar", fullPowerAnim=true };
PowerBarColor["PAIN"] = { r = 255/255, g = 156/255, b = 0, atlas = "_DemonHunter-DemonicPainBar", fullPowerAnim=true };
-- vehicle colors
PowerBarColor["AMMOSLOT"] = { r = 0.80, g = 0.60, b = 0.00 };
PowerBarColor["FUEL"] = { r = 0.0, g = 0.55, b = 0.5 };
PowerBarColor["STAGGER"] = { {r = 0.52, g = 1.0, b = 0.52}, {r = 1.0, g = 0.98, b = 0.72}, {r = 1.0, g = 0.42, b = 0.42},};

-- these are mostly needed for a fallback case (in case the code tries to index a power token that is missing from the table,
-- it will try to index by power type instead)
PowerBarColor[0] = PowerBarColor["MANA"];
PowerBarColor[1] = PowerBarColor["RAGE"];
PowerBarColor[2] = PowerBarColor["FOCUS"];
PowerBarColor[3] = PowerBarColor["ENERGY"];
PowerBarColor[4] = PowerBarColor["CHI"];
PowerBarColor[5] = PowerBarColor["RUNES"];
PowerBarColor[6] = PowerBarColor["RUNIC_POWER"];
PowerBarColor[7] = PowerBarColor["SOUL_SHARDS"];
PowerBarColor[8] = PowerBarColor["LUNAR_POWER"];
PowerBarColor[9] = PowerBarColor["HOLY_POWER"];
PowerBarColor[11] = PowerBarColor["MAELSTROM"];
PowerBarColor[13] = PowerBarColor["INSANITY"];
PowerBarColor[17] = PowerBarColor["FURY"];
PowerBarColor[18] = PowerBarColor["PAIN"];


ClassColorTable = {};
ClassColorTable[0] = {r = 0.00 ,g = 0.00 ,b = 0.00, a = 1.00};
ClassColorTable[1] = {r = 0.78, g = 0.61, b = 0.43, a = 1.00};
ClassColorTable[2] = {r = 0.96,	g = 0.55, b = 0.73, a = 1.00};
ClassColorTable[3] = {r = 0.67, g = 0.83, b = 0.45, a = 1.00};
ClassColorTable[4] = {r = 1.00, g =	0.96, b = 0.41, a = 1.00};
ClassColorTable[5] = {r = 1.00, g = 1.00, b = 1.00, a = 1.00};
ClassColorTable[6] = {r = 0.77, g = 0.12, b = 0.23, a = 1.00};
ClassColorTable[7] = {r = 0.00, g = 0.44, b = 0.87, a = 1.00};
ClassColorTable[8] = {r = 0.25, g = 0.78, b = 0.92, a = 1.00};
ClassColorTable[9] = {r = 0.53, g = 0.53, b = 0.93, a = 1.00};
ClassColorTable[10] = {r = 0.00, g = 1.00, b = 0.60, a = 1.00};
ClassColorTable[11] = {r = 1.00, g = 0.49, b = 0.04, a = 1.00};
ClassColorTable[12] = {r = 0.64, g = 0.19, b = 0.79, a = 1.00};
--[[
None = 0
Warrior = 1
Paladin = 2
Hunter = 3
Rogue = 4
Priest = 5
DeathKnight = 6
Shaman = 7
Mage = 8
Warlock = 9
Monk = 10
Druid = 11
Demon Hunter = 12
]]
local factionGroupColor = {}
factionGroupColor["HORDE"] = {r = 1, g = 0.278, b = 0, a = 1}
factionGroupColor["ALLIANCE"] = {r = 0, g = 0.678, b = 0.937, a = 1} 
factionGroupColor["ZODIACBLUE"] = "|c00162c57"
factionGroupColor["DYNAMIC"] = {r = 1, g = 1, b = 1, a = 1}  


--[[ if(ClassColorPaladin==nil) then
SetCVar(ClassColorPaladin,false)
end

if(ClassColorDruid==nil) then
SetCVar(ClassColorDruid,false)
end

if(ClassColorAll==nil) then
SetCVar(ClassColorAll,false)
end

if(StanceShow==nil) then
SetCVar(StanceShow,false)
end ]]


local localizedClass, englishClass, classIndex = UnitClass("Player");

local BARZEROING = 180
local BARZEROING2 = 160 --  ?? maybe i was wrong about this __ (Yes i was wrong but something else is wrong)=> has to be negative because RING2_ is looping clockwise not anticlockwise like _RING




function Barzeroing2(i)


    local temp = BARZEROING2
    if(i+BARZEROING2>360) then
        temp = (i+BARZEROING2)-360
    else
        temp = i+BARZEROING2
    end


    return temp

end
function Barzeroing(i)


    local temp = BARZEROING
    if(i+BARZEROING<0) then
        temp = (i+BARZEROING)+360
    else
        temp = i+BARZEROING
    end


    return temp

end

StatusTrackingBarManager:Hide()



local UPDATE_HONOR_TRACKING
local xpwheel = CreateFrame("Frame", "StatusWheel", UIParent, BackdropTemplateMixin and "BackdropTemplate")
xpwheel:RegisterEvent("PLAYER_ENTERING_WORLD")
xpwheel:RegisterEvent("PLAYER_XP_UPDATE")
xpwheel:RegisterEvent("UPDATE_EXHAUSTION")
xpwheel:RegisterEvent("AZERITE_ITEM_POWER_LEVEL_CHANGED")
xpwheel:RegisterEvent("AZERITE_ITEM_EXPERIENCE_CHANGED")
xpwheel:RegisterEvent("UPDATE_FACTION")
xpwheel:RegisterEvent("CVAR_UPDATE")
xpwheel:RegisterEvent("HONOR_XP_UPDATE");
xpwheel:RegisterEvent("ZONE_CHANGED");
xpwheel:RegisterEvent("ZONE_CHANGED_NEW_AREA");
xpwheel:RegisterEvent("ADDON_LOADED")
xpwheel:RegisterEvent("DISABLE_XP_GAIN")
xpwheel:RegisterEvent("PLAYER_LEVEL_UP");
xpwheel:RegisterEvent("ENABLE_XP_GAIN")
xpwheel:RegisterEvent("PET_BATTLE_OPENING_START");
xpwheel:RegisterEvent("PET_BATTLE_OVER");
--PVPQueueFrame.HonorInset.CasualPanel.HonorLevelDisplay
DropDownList1Button1:HookScript("OnClick", function() xpwheel:SetXPBar() end)




xpwheel.percRING_ = {}
xpwheel.percRINGOUTLINE_ = {}
xpwheel.ReputationBarRing = {}
xpwheel.HonorBarRing = {}



xpwheel:HookScript("OnEvent", function(self, event, ...)
    return self[event] and self[event](self, ...)
end)
xpwheel:SetScript("OnEnter", function(self, event, ...)
    return self[event] and self[event](self, ...)
end)
xpwheel:SetScript("OnLeave", function(self, event, ...)
    return self[event] and self[event](self, ...)
end)



xpwheel:SetPoint("CENTER",0,-UIParent:GetHeight()/2 + 60)

xpwheel:SetHeight(200)
xpwheel:SetWidth(200)
xpwheelOverlay = CreateFrame("Frame","XpWheelOverlay",xpwheel, BackdropTemplateMixin and "BackdropTemplate" )
--xpwheelOverlay:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArtGoldenTop",
_G["XpWheelOverlay"]:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XPTOPCOLORLESS2",
--edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", tile=false,tileSize=32,edgeSize=32,
insets= {left=11,right=12,top=12,bottom=11}})
--xpwheelOverlay:SetBackdropColor(0.753, 0.753, 0.753,1)



--xpwheelOverlay:SetBackdropColor(0.831, 0.686,0.216,1) -- GOLD
xpwheelOverlay:SetPoint(xpwheel:GetPoint(),0,0)
xpwheelOverlay:SetHeight(165)
xpwheelOverlay:SetWidth(165)
local size = 0.45
local size2 = 0.3



statusbartooltip = CreateFrame('GameTooltip', "tooltipXP", nil, "GameTooltipTemplate")

local englishFaction, localizedFaction = UnitFactionGroup("player")



if (C_AzeriteItem.HasActiveAzeriteItem() == true and C_AzeriteEmpoweredItem.IsHeartOfAzerothEquipped()) then
    local azeriteItemLocationX = C_AzeriteItem.FindActiveAzeriteItem()
    local app, totalAPp = C_AzeriteItem.GetAzeriteItemXPInfo(C_AzeriteItem.FindActiveAzeriteItem())
end
local isShown = false
function tooltipXP_OnEnter(self,event,...) 
    
if(UnitAffectingCombat("player")==false)then
tooltipXP_SetLines()

GameTooltip:Show()
isShown = true
tooltipXP_MouseOver(isShown)
end
end


function tooltipXP_OnLeave()
    isShown = false 
    GameTooltip:Hide()
end


xpwheel:HookScript("OnEvent", function(self, event, arg, ...)
    if (GameTooltip:IsShown() and event == "MODIFIER_STATE_CHANGED" and (arg == "LSHIFT" or arg == "RSHIFT") and GameTooltip:GetOwner()==xpwheel) then
      tooltipXP_SetLines() -- might need a parameter
    end
end)
  
  xpwheel:RegisterEvent("MODIFIER_STATE_CHANGED")


  function SwapToPaladinColors() 
    --[[ 
    xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Paladin",
    --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
    tile=false,tileSize=32,edgeSize=32,
    insets= {left=27,right=29,top=27,bottom=27}})
 ]]
end
function SwapToDruidColors() 
    --[[ 
    xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Paladin",
    --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
    tile=false,tileSize=32,edgeSize=32,
    insets= {left=27,right=29,top=27,bottom=27}})
 ]]
end


function tooltipXP_SetLines()

if (C_AzeriteItem.HasActiveAzeriteItem() == true ) then
    
    GameTooltip:SetText("StatusBar:","|cFFFFFFFF",true)
    if(C_AzeriteEmpoweredItem.IsHeartOfAzerothEquipped()) then
       azeriteItemLocation = C_AzeriteItem.FindActiveAzeriteItem()
        
            --print(azeriteItem:GetItemLink())
            GameTooltip:SetOwner(xpwheel, "CENTER",300,-150)


        app, totalAPp = C_AzeriteItem.GetAzeriteItemXPInfo(C_AzeriteItem.FindActiveAzeriteItem())
        
        
        
        if azeriteItemLocation then
            local azeriteItem = Item:CreateFromItemLocation(C_AzeriteItem.FindActiveAzeriteItem());
            if(IsShiftKeyDown())then
                
            GameTooltip:SetHyperlink(azeriteItem:GetItemLink())
            GameTooltip:SetText("\n")
            GameTooltip:SetText("StatusBar:","|cFFFFFFFF",true)
            end

            GameTooltip:AddLine(azeriteItem:GetItemLink().." Level "..C_AzeriteItem.GetPowerLevel(azeriteItemLocation).." ("..tostring(totalAPp-app).." Artifact Power to next level)")   
            GameTooltip:AddLine("")

        end
        --print("Tooltip does not have dynamic item name for Azerite Item")
        GameTooltip:AddLine("Artifact Power: "..tostring(app).."/"..tostring(totalAPp),1,1,1,1,true)
    else
        GameTooltip:SetOwner(xpwheel, "CENTER",300,-150)
    end
    
    if(xpwheel.HonorBarRing:ShouldBeVisible() or ( (not xpwheel.ReputationBarRing:ShouldBeVisible()) and (not xpwheel.HonorBarRing:ShouldBeVisible()) ))then
        if(englishFaction == "Horde") then
            factionGroupColor["DYNAMIC"] = factionGroupColor["HORDE"]
        else 
            factionGroupColor["DYNAMIC"] = factionGroupColor["ALLIANCE"]
            --factionGroupColor = "|c00ADEFFF"
        end

        GameTooltip:AddLine("("..localizedFaction..")",factionGroupColor["DYNAMIC"].r, factionGroupColor["DYNAMIC"].g, factionGroupColor["DYNAMIC"].b, factionGroupColor["DYNAMIC"].a,true)
        GameTooltip:AddLine("Honor Points: "..tostring(UnitHonor("player")).."/"..tostring(UnitHonorMax("player")).." ("..tostring(math.ceil((UnitHonor("player")/UnitHonorMax("player"))*100)).."%)", 1,1,1,1,true)
    
    elseif(xpwheel.ReputationBarRing:ShouldBeVisible())then
        local name, reaction, minBar, maxBar, value, factionID = GetWatchedFactionInfo();
        local reactionText = "neutral"
        if(reaction == 1)then
    
            reactionText = "(Hated)"
             
        elseif(reaction == 2)then
            reactionText = "(Hostile)"
        elseif(reaction == 3)then
            reactionText = "(Unfriendly)"
        elseif(reaction == 4)then
            reactionText = "(Neutral)"
        elseif(reaction == 5)then
            reactionText = "(Friendly)"
        elseif(reaction == 6)then
            reactionText = "(Honored)"
        elseif(reaction == 7)then
            reactionText = "(Revered)"
        else
            reactionText = "|c0000FFFF (Exalted)"
        end
        GameTooltip:AddLine(reactionText,FACTION_BAR_COLORS[reaction].r,FACTION_BAR_COLORS[reaction].g,FACTION_BAR_COLORS[reaction].b,1,true)   

        if(reaction == 1) then
            GameTooltip:AddLine(name.." ("..tostring((maxBar)-(value)).." Reputation Points to next status)")
            GameTooltip:AddLine("Reputation Points: "..tostring(36000-((maxBar)-(value))).."/"..tostring(-maxBar+30000).." ("..tostring(math.ceil(((36000-((maxBar)-(value)))/(-maxBar+30000))*100)).."%)", 1,1,1,1,true)

        elseif(reaction == 2) then
            GameTooltip:AddLine(name.." ("..tostring((maxBar)-(value)).." Reputation Points to next status)")
            GameTooltip:AddLine("Reputation Points: "..tostring(9000-((maxBar)-(value))).."/"..tostring(-maxBar+9000).." ("..tostring(math.ceil(((9000-((maxBar)-(value)))/(-maxBar+9000))*100)).."%)", 1,1,1,1,true)
        elseif(reaction == 3) then
            GameTooltip:AddLine(name.." ("..tostring((maxBar)-(value)).." Reputation Points to next status)")
            GameTooltip:AddLine("Reputation Points: "..tostring(3000-((maxBar)-(value))).."/"..tostring(-maxBar+3000).." ("..tostring(math.ceil(((3000-((maxBar)-(value)))/(-maxBar+3000))*100)).."%)", 1,1,1,1,true)

        elseif(reaction == 4) then
            GameTooltip:AddLine(name.." ("..tostring(maxBar-value).." Reputation Points to next status)")
            GameTooltip:AddLine("Reputation Points: "..tostring(value).."/"..tostring(maxBar).." ("..tostring(math.ceil(((value)/(maxBar))*100)).."%)", 1,1,1,1,true)

        elseif(reaction == 5) then
            GameTooltip:AddLine(name.." ("..tostring(maxBar-value).." Reputation Points to next status)")
            GameTooltip:AddLine("Reputation Points: "..tostring(value-3000).."/"..tostring(maxBar-3000).." ("..tostring(math.ceil(((value-3000)/(maxBar-3000))*100)).."%)", 1,1,1,1,true)

        elseif(reaction == 6) then
            GameTooltip:AddLine(name.." ("..tostring(maxBar-value).." Reputation Points to next status)")
            GameTooltip:AddLine("Reputation Points: "..tostring(value-9000).."/"..tostring(maxBar-9000).." ("..tostring(math.ceil(((value-9000)/(maxBar-9000))*100)).."%)", 1,1,1,1,true)

        elseif(reaction == 7) then
            GameTooltip:AddLine(name.." ("..tostring(maxBar-value).." Reputation Points to next status)")
            GameTooltip:AddLine("Reputation Points: "..tostring(value-21000).."/"..tostring(maxBar-21000).." ("..tostring(math.ceil(((value-21000)/(maxBar-21000))*100)).."%)", 1,1,1,1,true)
        else
            GameTooltip:AddLine(name.." ("..tostring(maxBar-value).." Reputation Points to next status)")
            GameTooltip:AddLine("Reputation Points: "..tostring(value).."/"..tostring(maxBar).." ("..tostring(math.ceil((value/maxBar)*100)).."%)", 1,1,1,1,true)
        end
        
        
        
    else
        GameTooltip:AddLine(tostring(GetUnitName("player")).." Level "..tostring(UnitLevel("player")).." ("..tostring(UnitXPMax("player")-UnitXP("player")).." experience points til next level)","|cFFFFFFFF",true)
        GameTooltip:AddLine("Experience Points: "..tostring(UnitXP("player")).."/"..tostring(UnitXPMax("player")).." ("..tostring(math.ceil((UnitXP("player")/UnitXPMax("player"))*100)).."%)", 1,1,1,1,true)
        if not (GetXPExhaustion("player") == nil) then
        GameTooltip:AddLine("Rested","|cFFFFFFFF",true)
        GameTooltip:AddLine("200% of normal experience gained from monsters.",1,1,1,1,true )
    end
    end
else
    GameTooltip:SetOwner(xpwheel, "CENTER",300,-150)

    GameTooltip:AddLine(tostring(GetUnitName("player")).." Level "..tostring(UnitLevel("player")).." ("..tostring(UnitXPMax("player")-UnitXP("player")).." experience points til next level)","|cFFFFFFFF",true)
    GameTooltip:AddLine("Experience Points: "..tostring(UnitXP("player")).."/"..tostring(UnitXPMax("player")).." ("..tostring(math.ceil((UnitXP("player")/UnitXPMax("player"))*100)).."%)", 1,1,1,1,true)
    if not (GetXPExhaustion("player") == nil) then
    GameTooltip:AddLine("Rested","|cFFFFFFFF",true)
    GameTooltip:AddLine("200% of normal experience gained from monsters.",1,1,1,1,true )
    end
    

end
end

function tooltipXP_MouseOver(isShown) -- not sure if should be deprecated.
    
    
    local linkAdded = false
    if(true)then return nil else
    while (isShown and C_AzeriteItem.HasActiveAzeriteItem() and C_AzeriteEmpoweredItem.IsHeartOfAzerothEquipped()) do
             GameTooltip:Hide()
    if (IsShiftKeyDown() and linkAdded == false) then
            GameTooltip:ClearLines(1,2)
            GameTooltip:SetOwner(xpwheel, "CENTER",300,-150)
            GameTooltip:SetText("StatusBar:","|cFFFFFFFF",true)
            local azeriteItem = Item:CreateFromItemLocation(C_AzeriteItem.FindActiveAzeriteItem());
            GameTooltip:SetHyperlink(azeriteItem:GetItemLink())
            GameTooltip:SetText("\n") 
            tooltipXP_SetLines()
            linkAdded = true
            GameTooltip:Show()
    elseif(IsShiftKeyDown() == false and linkAdded == true) then
            GameTooltip:Clear()
            tooltipXP_SetLines()
            linkAdded = false
            GameTooltip:Show()
    end
        GameTooltip:HookScript("OnLeave", function() 
        tooltipXP_OnLeave()

        end) 
   end
end
end




xpwheel:SetScript("OnEnter", function() tooltipXP_OnEnter() end )
--xpwheel:HookScript("OnEnter", function() tooltipXP_MouseOver() end )

if (C_AzeriteItem.HasActiveAzeriteItem() and C_AzeriteEmpoweredItem.IsHeartOfAzerothEquipped()) then
GameTooltip:SetScript("OnLeave", function() tooltipXP_OnLeave() end )
else
xpwheel:SetScript("OnLeave", function() tooltipXP_OnLeave() end )
end
--xpwheel.tooltipXP_OnEnter:HookScript("OnKeyDown", function() end)


local size3 = 0.38


for i = 360,0,-1 
do 
    local temp = Barzeroing(i)
    xpwheel.percRING_[temp] = xpwheel:CreateFontString(nil,"ARTWORK") 
    xpwheel.percRING_[temp]:SetFont("Fonts\\ARIALN.ttf", 55)
 
    xpwheel.percRING_[temp]:SetPoint(xpwheel:GetPoint(),(math.sin((temp*math.pi)/180)*100*(size3+0.02))-1,(math.cos((temp*math.pi)/180)*100*(size3+0.02))-5.1)
    
    xpwheel.percRING_[temp]:SetWidth(100)
    xpwheel.percRING_[temp]:SetHeight(100)
    xpwheel.percRING_[temp]:SetText("\•")


       
end


local size4 = 0.3
xpwheel.percRING2_ = {}
for i = 360,0,-1 
do 
    local temp = Barzeroing2(i)
    xpwheel.percRING2_[temp] = xpwheel:CreateFontString(nil,"ARTWORK") 
    xpwheel.percRING2_[temp]:SetFont("Fonts\\ARIALN.ttf", 20)
    --print(math.sin(i)*100*size4,math.cos(i)*100*size4)
    xpwheel.percRING2_[temp]:SetPoint(xpwheel:GetPoint(),(math.sin((temp*math.pi)/180)*100*size4)-1.0,(math.cos((temp*math.pi)/180)*100*size4)-3.6)
    
    xpwheel.percRING2_[temp]:SetWidth(100)
    xpwheel.percRING2_[temp]:SetHeight(100)
    xpwheel.percRING2_[temp]:SetText("\•")
       
end

local artifactPointsPercent
--local numPoints, artifactXP, xpForNextPoint = MainMenuBar_GetNumArtifactTraitsPurchasableFromXP(pointsSpent, totalXP)
--local xpForNextPoint = C_ArtifactUI.GetCostForPointAtRank()
local activeAzeriteItemLocation = C_AzeriteItem.FindActiveAzeriteItem()


--local artifactXP, xpForNextPoint = C_AzeriteItem.GetAzeriteItemXPInfo(C_AzeriteItem.FindActiveAzeriteItem())  


--print(xpForNextPoint)


xpwheel.percCenter = xpwheelOverlay:CreateFontString(nil,"OVERLAY") 
xpwheel.percCenter:SetPoint(xpwheel:GetPoint(),0,5)
xpwheel.percCenter:SetWidth(100)
xpwheel.percCenter:SetHeight(100)
xpwheel.percCenter:SetFont("Fonts\\ARIALN.ttf", 10, "OUTLINE")

xpwheel.artifactpercCenter = xpwheelOverlay:CreateFontString(nil,"OVERLAY") 
xpwheel.artifactpercCenter:SetPoint(xpwheel:GetPoint(),0,-5)
xpwheel.artifactpercCenter:SetWidth(100)
xpwheel.artifactpercCenter:SetHeight(100)
xpwheel.artifactpercCenter:SetFont("Fonts\\ARIALN.ttf", 10, "OUTLINE")

xpwheel.artifactLevel = xpwheelOverlay:CreateFontString(nil,"OVERLAY") 
xpwheel.artifactLevel:SetPoint(xpwheel:GetPoint(),0,-5)
xpwheel.artifactLevel:SetWidth(100)
xpwheel.artifactLevel:SetHeight(100)
xpwheel.artifactLevel:SetFont("Fonts\\ARIALN.ttf", 10, "OUTLINE")
xpwheel.artifactLevel:SetPoint(xpwheel:GetPoint(),(math.sin((157*math.pi)/180)*100*size4)-2.4,(math.cos((157*math.pi)/180)*100*size4)-4.5 )
if (C_AzeriteItem.HasActiveAzeriteItem() and C_AzeriteEmpoweredItem.IsHeartOfAzerothEquipped())then
    xpwheel.artifactLevel:SetText(C_AzeriteItem.GetPowerLevel(C_AzeriteItem.FindActiveAzeriteItem()))
    else
        -- do stuff with level signifier when not tracking AP
end
xpwheel.artifactLevel:SetTextColor(1.00,0.96,0.41)            

local honorLevel = UnitHonorLevel("player")



xpwheel.playerLevel = xpwheelOverlay:CreateFontString(nil,"OVERLAY") 
xpwheel.playerLevel:SetPoint(xpwheel:GetPoint(),0,-5)
xpwheel.playerLevel:SetWidth(100)
xpwheel.playerLevel:SetHeight(100)
xpwheel.playerLevel:SetFont("Fonts\\ARIALN.ttf", 10, "OUTLINE")
xpwheel.playerLevel:SetPoint(xpwheel:GetPoint(),(math.sin((180*math.pi)/180)*100*size3)-0.0,(math.cos((180*math.pi)/180)*100*size3)-10.5 )



if(UnitLevel("player") < GetMaxLevelForPlayerExpansion() )then
xpwheel.playerLevel:SetText(UnitLevel("player"))
xpwheel.playerLevel:SetTextColor(1.00,0.96,0.41)
else
    xpwheel.playerLevel:SetText(UnitLevel("player"))
    xpwheel.playerLevel:SetTextColor(1.00,0.96,0.41)
end


local XP = UnitXP("player")
local XPMax = UnitXPMax("player")
local xppercent = (XP/XPMax)*100
local restVal

xpwheel.percRINGRested_ = {}


local reputationCheckBox = ReputationDetailMainScreenCheckBox:GetScript("OnClick")

function xpwheel:OnEvent(self,event, ...)
    if(event == "CVAR_UPDATE")then 

        xpwheel:SetXPBar()
    end

	if ( event == "HONOR_XP_UPDATE" or event == "ZONE_CHANGED"
            or event == "ZONE_CHANGED_NEW_AREA" or event == "CVAR_UPDATE" or event == "UPDATE_EXHAUSTION" or event == "PLAYER_XP_UPDATE" 
            or event == "UPDATE_FACTION" or event == "DISABLE_XP_GAIN" or event == "ENABLE_XP_GAIN" or event == "CVAR_UPDATE" or event == "PLAYER_LEVEL_UP") then
               self:SetXPBar() 
               if(UnitLevel("player") < GetMaxLevelForPlayerExpansion()  )then
                xpwheel.playerLevel:SetText(UnitLevel("player"))
                xpwheel.playerLevel:SetTextColor(1.00,0.96,0.41)
                else
                    xpwheel.playerLevel:SetText(UnitLevel("player"))
                    xpwheel.playerLevel:SetTextColor(1.00,0.96,0.41)
                end
                self:SetXPBar()
--[[ 
        self.HonorBarRing:Update();
        if(xpwheel.HonorBarRing:ShouldBeVisible() == false and xpwheel.ReputationBarRing:ShouldBeVisible() == false)then 
            for i = 360, 0,-1 do
                local temp = Barzeroing(i)
                self.HonorBarRing:Update();
                self.ReputationBarRing:Update();
                if(UnitLevel("player") < MAX_PLAYER_LEVEL_TABLE[GetAccountExpansionLevel()] )then
                xpwheel.percRING_[temp]:Show()
                xpwheel.ReputationBarRing[temp]:Hide()
                xpwheel.HonorBarRing[temp]:Hide()
                xpwheel.percCenter:SetText("XP: "..tostring(math.ceil((UnitXP("player")/UnitXPMax("player"))*100)).."%")
                else
                    xpwheel.percRING_[temp]:Hide()
                    xpwheel.ReputationBarRing[temp]:Show()
                    xpwheel.HonorBarRing[temp]:Hide()
                    local name, reaction, minBar, maxBar, value, factionID = GetWatchedFactionInfo();
                    xpwheel.percCenter:SetText(name.."\nRep: "..tostring(math.ceil((value/maxBar)*100)).."%")
                    xpwheel.percCenter:SetPoint(xpwheel.percCenter:GetPoint(),0,10)
                end
            end
        
        else
            self.HonorBarRing:Update();
            self.ReputationBarRing:Update();
            for i = 360, 0,-1 do
                local temp = Barzeroing(i)
                xpwheel.percRING_[temp]:Hide()
                if(xpwheel.ReputationBarRing:ShouldBeVisible() and xpwheel.HonorBarRing:ShouldBeVisible() == false)then
                    xpwheel.ReputationBarRing[temp]:Show()
                    xpwheel.HonorBarRing[temp]:Hide()
                    local name, reaction, minBar, maxBar, value, factionID = GetWatchedFactionInfo();
                    xpwheel.percCenter:SetText(name.."\nRep: "..tostring(math.ceil((value/maxBar)*100)).."%")
                    xpwheel.percCenter:SetPoint(xpwheel.percCenter:GetPoint(),0,10)

                elseif(xpwheel.ReputationBarRing:ShouldBeVisible() == false and xpwheel.HonorBarRing:ShouldBeVisible())then 
                    xpwheel.HonorBarRing[temp]:Show()
                    xpwheel.ReputationBarRing[temp]:Hide()
                    xpwheel.percCenter:SetText("Hornor: "..tostring(math.ceil((UnitHonor("player")/UnitHonorMax("player"))*100)).."%")

                
                elseif(xpwheel.ReputationBarRing:ShouldBeVisible() and xpwheel.HonorBarRing:ShouldBeVisible())then
                    xpwheel.HonorBarRing[temp]:Show()
                    xpwheel.ReputationBarRing[temp]:Hide()
                    xpwheel.percCenter:SetText("Hornor: "..tostring(math.ceil((UnitHonor("player")/UnitHonorMax("player"))*100)).."%")

                end
                
            end
        
        end
        ]]
    end 
    if ( event == "PLAYER_ENTERING_WORLD" ) then
        
        honorLevel = UnitHonorLevel("player")
        xpwheel.Background = CreateFrame("Frame","XpWheelBackground",xpwheel,BackdropTemplateMixin and "BackdropTemplate")
        --handleStanceBar()


if(classColorPaladin == true)then
    xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Paladin",
--edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
tile=false,tileSize=32,edgeSize=32,
insets= {left=27,right=29,top=27,bottom=27}})

elseif(classColorDruid)then
    xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Druid",
--edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
tile=false,tileSize=32,edgeSize=32,
insets= {left=27,right=29,top=27,bottom=27}})

elseif(classColorAll)then
    if(englishClass == "PALADIN")then
        xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Paladin",
        --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
        tile=false,tileSize=32,edgeSize=32,
        insets= {left=27,right=29,top=27,bottom=27}})
       

    elseif(englishClass == "DEMONHUNTER") then

    xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5DemonHunter",
    --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
    tile=false,tileSize=32,edgeSize=32,
    insets= {left=27,right=29,top=27,bottom=27}})
   

    elseif(englishClass == "DRUID") then


     xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Druid",
 --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
 tile=false,tileSize=32,edgeSize=32,
 insets= {left=27,right=29,top=27,bottom=27}})

    elseif(englishClass == "HUNTER") then
    xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Hunter",
    --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
    tile=false,tileSize=32,edgeSize=32,
    insets= {left=27,right=29,top=27,bottom=27}})

    elseif(englishClass == "MAGE") then
    xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Mage",
    --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
    tile=false,tileSize=32,edgeSize=32,
    insets= {left=27,right=29,top=27,bottom=27}})

    elseif(englishClass == "MONK") then


     xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Monk",
 --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
 tile=false,tileSize=32,edgeSize=32,
 insets= {left=27,right=29,top=27,bottom=27}})


    elseif(englishClass == "PRIEST") then


     xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Priest",
 --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
 tile=false,tileSize=32,edgeSize=32,
 insets= {left=27,right=29,top=27,bottom=27}})

     elseif(englishClass == "ROGUE") then


     xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Rogue",
 --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
 tile=false,tileSize=32,edgeSize=32,
 insets= {left=27,right=29,top=27,bottom=27}})

     elseif(englishClass == "SHAMAN") then


     xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Shaman",
 --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
 tile=false,tileSize=32,edgeSize=32,
 insets= {left=27,right=29,top=27,bottom=27}})

    elseif(englishClass == "WARLOCK") then


     xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Warlock",
 --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
 tile=false,tileSize=32,edgeSize=32,
 insets= {left=27,right=29,top=27,bottom=27}})

    elseif(englishClass == "WARRIOR") then


xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Warrior",
--edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
tile=false,tileSize=32,edgeSize=32,
insets= {left=27,right=29,top=27,bottom=27}})


    elseif(englishClass == "DEATHKNIGHT") then


xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt4GoldenDeathknight",
--edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
tile=false,tileSize=32,edgeSize=32,
insets= {left=27,right=29,top=27,bottom=27}})
    else

        print("ZURICHOUI: ERROR 404 CLASS NOT FOUND! - XPWHEEL.LUA line:604")
        xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt4GoldenBlack",
        --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
        tile=false,tileSize=32,edgeSize=32,
        insets= {left=27,right=29,top=27,bottom=27}})

        print(englishClass)

    end




elseif(englishFaction == "Horde" and classColorPaladin == false) then
xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt4GoldenHorde",
--edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
tile=false,tileSize=32,edgeSize=32,
insets= {left=27,right=29,top=27,bottom=27}})
elseif(englishFaction == "Alliance" and classColorPaladin == false) then
    xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XPCircleArt4GoldenAlliance",
    --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
    tile=false,tileSize=32,edgeSize=32,
    insets= {left=27,right=29,top=27,bottom=27}})
else
    xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XPCircleArt4GoldenBlack",
    --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
    tile=false,tileSize=32,edgeSize=32,
    insets= {left=27,right=29,top=27,bottom=27}})

end


xpwheel.Background:SetHeight(165)
xpwheel.Background:SetWidth(165)
xpwheel.Background:SetFrameLevel(0)
xpwheelOverlay:SetFrameLevel(2)
        self:SetXPBar()
        self:SetItemXPBar()
    end

    if(event == "AZERITE_ITEM_EXPERIENCE_CHANGED" or event == "AZERITE_ITEM_POWER_LEVEL_CHANGED")then
       
        self:SetItemXPBar()
        --[[ self.ReputationBarRing:Update();
        
        if(xpwheel.HonorBarRing:ShouldBeVisible() == false and xpwheel.ReputationBarRing:ShouldBeVisible() == false )then 
            for i = 360, 0,-1 do
                local temp = Barzeroing(i)
                self.HonorBarRing:Update();
                self.ReputationBarRing:Update();
                if(UnitLevel("player") < MAX_PLAYER_LEVEL_TABLE[GetAccountExpansionLevel()] )then
                
                xpwheel.percRING_[temp]:Show()
                xpwheel.ReputationBarRing[temp]:Hide()
                xpwheel.HonorBarRing[temp]:Hide()
                xpwheel.percCenter:SetText("XP: "..tostring(math.ceil((UnitXP("player")/UnitXPMax("player"))*100)).."%")
                else
                    xpwheel.percRING_[temp]:Hide()
                    xpwheel.ReputationBarRing[temp]:Show()
                    xpwheel.HonorBarRing[temp]:Hide()
                    local name, reaction, minBar, maxBar, value, factionID = GetWatchedFactionInfo();
                    xpwheel.percCenter:SetText(name.."\nRep: "..tostring(math.ceil((value/maxBar)*100)).."%")
                    xpwheel.percCenter:SetPoint(xpwheel.percCenter:GetPoint(),0,10)
                end
            end
        
        else
            self.HonorBarRing:Update();
            self.ReputationBarRing:Update();
            for i = 360, 0,-1 do
                local temp = Barzeroing(i)
                xpwheel.percRING_[temp]:Hide()
                if(xpwheel.ReputationBarRing:ShouldBeVisible() and xpwheel.HonorBarRing:ShouldBeVisible() == false)then
                    xpwheel.ReputationBarRing[temp]:Show()
                    xpwheel.HonorBarRing[temp]:Hide()
                    local name, reaction, minBar, maxBar, value, factionID = GetWatchedFactionInfo();
                    xpwheel.percCenter:SetText(name.."\nRep: "..tostring(math.ceil((value/maxBar)*100)).."%")
                    xpwheel.percCenter:SetPoint(xpwheel.percCenter:GetPoint(),0,10)

                elseif(xpwheel.ReputationBarRing:ShouldBeVisible() == false and xpwheel.HonorBarRing:ShouldBeVisible())then 
                    xpwheel.HonorBarRing[temp]:Show()
                    xpwheel.ReputationBarRing[temp]:Hide()
                    xpwheel.percCenter:SetText("Honor: "..tostring(math.ceil((UnitHonor("player")/UnitHonorMax("player"))*100)).."%")

                
                elseif(xpwheel.ReputationBarRing:ShouldBeVisible() and xpwheel.HonorBarRing:ShouldBeVisible())then
                    xpwheel.HonorBarRing[temp]:Show()
                    xpwheel.ReputationBarRing[temp]:Hide()
                    xpwheel.percCenter:SetText("Honor: "..tostring(math.ceil((UnitHonor("player")/UnitHonorMax("player"))*100)).."%")

                end
                
            end
        
        end
        if(event ~= "PLAYER_ENTERING_WORLD")then
            
        end
        ]]
    end 

if(event == "ADDON_LOADED")then
    

    -- There are potentially big issues with the code below
    if(ClassColorPaladin ~= true or ClassColorPaladin ~= false or ClassColorDruid ~= true or ClassColorDruid ~= false or ClassColorAll ~= true or ClassColorAll ~= false or StanceShow ~= true or StanceShow ~= false) then
        if(ClassColorPaladin ~= true or ClassColorPaladin ~= false) then
        --print(classColorPaladin)
        --SetCVar("classColorPaladin", false, "scriptCVar");
        ClassColorPaladin = false
        --print(classColorPaladin)
        end
        
        if(classColorDruid ~= true or classColorDruid ~= false) then
        ClassColorDruid = false
        --SetCVar("classColorDruid", false, "scriptCVar");
        end
        
        if(classColorAll ~= true or classColorAll ~= false) then
        ClassColorAll = false
        --SetCVar("classColorAll", false, "scriptCVar");
        end
        
        if(StanceShow == nil) --[[ there seems to be an issue with or that should be xor, but i cant seem to find documentation for xor in lua outside of bitwise operations]]then
        StanceShow = false
        --SetCVar("stanceShow", false, "scriptCVar");
        
        end
        --ReloadUI();

        --print("Addon Attempted to Install")
        --print(stanceShow)
        handleStanceBar()-- I commented this out because i think it caused a bug with some inability to "remember stanceshow true" to stay activated on load, after testing this is clearly not the case.
    
    
    end
    xpwheel:OnLoad()
    handleStanceBar()


        
end



if(event == "PET_BATTLE_OPENING_START")then

xpwheel:Hide()
end
if(event == "PET_BATTLE_OVER")then

xpwheel:Show()
end

end

xpwheel:RegisterEvent("PLAYER_LEVEL_UP")
xpwheel:HookScript("OnEvent", function(self,event,...) if(event == "PLAYER_LEVEL_UP")then xpwheel:SetXPBar() end end)

xpwheel:HookScript("OnEvent", function(self, event) xpwheel:OnEvent(self, event) end)






 xpwheel:SetScript("OnLoad", function() xpwheel:Onload() end)

xpwheel:SetScript("OnUpdate", function() update() end)

function xpwheel:OnLoad() 


end 




function OnUpdate()

  





end
local Time = 0.000
local TimeDelta = 0.000
local TimeInit = GetTime()

xpwheel:HookScript("OnUpdate", function() TimerFunc() end)

function TimerFunc(...)
    
    
    Time = GetTime()
    TimeDelta = Time-TimeInit
    if(... == "Time.time")then
    return Time
    end

    if(... == "Time.deltaTime")then
    return TimeDelta
    end

    if(... == "Time.Runtime")then
    return TimeInit
    end

end



function xpwheel:SetXPBar()
    --print(tostring(TimerFunc("Time.deltaTime")))
    
    XP = UnitXP("player")
    XPMax = UnitXPMax("player")
    xppercent = (XP/XPMax)*100
    restVal = GetXPExhaustion("player")
    xpwheel.ReputationBarRing:Update()
    xpwheel.HonorBarRing:Update()
    xpwheel.percCenter:SetText("XP: "..tostring(math.ceil((UnitXP("player")/UnitXPMax("player"))*100)).."%")  
    if(silverXPWheel) then
        _G["XpWheelOverlay"]:SetBackdropColor(0.753, 0.753, 0.753,1)
        _G["StatusWheel"]:SetBackdropColor(1,1,1,1)
        xpwheel:SetBackdropColor(1,1,1,1)
    elseif(classColorXPWheel) then
        xpwheel:SetBackdropColor(1,1,1,1)
        _G["StatusWheel"]:SetBackdropColor(1,1,1,1)
        _G["XpWheelOverlay"]:SetBackdropColor(ClassColorTable[classIndex].r,ClassColorTable[classIndex].g,ClassColorTable[classIndex].b,ClassColorTable[classIndex].a)
    elseif(noFrameXPWheel) then
        xpwheel:SetBackdropColor(0,0,0,0)
        _G["StatusWheel"]:SetBackdropColor(0,0,0,0)
        _G["XpWheelOverlay"]:SetBackdropColor(0,0,0,0)
    else
        xpwheel:SetBackdropColor(1,1,1,1)
        _G["XpWheelOverlay"]:SetBackdropColor(0.831, 0.686,0.216,1) 
        _G["StatusWheel"]:SetBackdropColor(1,1,1,1)
    end



    if((xpwheel.HonorBarRing:ShouldBeVisible() == false and xpwheel.ReputationBarRing:ShouldBeVisible() == false) or repWhileLeveling == true)then 
        for i = 0,(math.ceil(xppercent*3.6)),1 do
            local temp = Barzeroing(i)
            --print(restVal)
            if(restVal == nil) then
                xpwheel.percRING_[temp]:SetTextColor(0.55,0,0.58,1)
                --xpwheel.percRINGRested_[i]:SetTextColor(0.2,0.2,0.2,0.0)         
            else
                
    
                xpwheel.percRING_[temp]:SetTextColor(0.0, 0.39, 0.88, 1.0)
                --xpwheel.percRING_[i]:SetTextColor(0.172,0.458,1,1)
                
        
            end
            
        end
        --[[
        for i = (math.floor(xppercent*3.6)),(math.floor(xppercent*3.6))+overlap,1 do
        
            xpwheel.percRING_[i]:SetTextColor(0.2,0.2,0.2,0.0)        
    
        
        end]]
    
        for i = (math.ceil(xppercent*3.6)),360,1 do
        
            local temp = Barzeroing(i)
                xpwheel.percRING_[temp]:SetTextColor(0.2,0.2,0.2,1)
            
    
            
        end
        if not (restVal == nil) then
            for i = (math.ceil((xppercent)*3.6)),(math.ceil((xppercent+(restVal/XPMax)*100)*3.6)),1 do
                    local temp = Barzeroing(i)
                    if(xpwheel.percRING_[temp] ~= nil)then
                        xpwheel.percRING_[temp]:SetTextColor(0,0.19,0.32,0.1)
                    end
            end       
        else
            --print("line 619 +/-: Nested loop but i cant recall why or see if its nessecary take a look later")
            for i = (math.ceil((xppercent)*3.6)),360,1 do
                for j = i, 0,-1 do -- possibly needed because it actually is more efficient as it doesnt need to go thtough it all, but just the bit that begins at that very index and to 0, but still more than just the 360, maybe i should add a break?
                    local temp = Barzeroing(j)    
                    if not (xpwheel.percRING_[temp]:GetTextColor(0.55,0,0.58,1) ) then                 
                        xpwheel.percRING_[temp]:SetTextColor(0.55,0,0.58,1)
                    end
                    if(j == 0)then
                        i = 0 -- instead of break to stop the outer loop
                    end
                end
            end
        end
        xpwheel.HonorBarRing:Update();
        xpwheel.ReputationBarRing:Update();
        for i = 360, 0,-1 do
            
            local temp = Barzeroing(i)
            local temp2 = Barzeroing2(i)
            if(UnitLevel("player") < GetMaxLevelForPlayerExpansion()  )then
                xpwheel.percRING_[temp]:Show()

                if(repWhileLeveling == true) then
                        xpwheel.ReputationBarRing[temp2]:Show()
                        xpwheel.percRING2_[temp2]:Hide()    
                else
                        xpwheel.ReputationBarRing[temp]:Hide()
                        xpwheel.percRING2_[temp2]:Show()  
                end
                    
                


                xpwheel.HonorBarRing[temp]:Hide()
                xpwheel.percCenter:SetText("XP: "..tostring(math.ceil((UnitXP("player")/UnitXPMax("player"))*100)).."%")
            else
                
                local name, reaction, minBar, maxBar, value, factionID = GetWatchedFactionInfo();
                if(name == nil)then
                    xpwheel.percRING_[temp]:Hide()
                    xpwheel.ReputationBarRing[temp]:Hide()
                    xpwheel.HonorBarRing[temp]:Show()
                    xpwheel.percCenter:SetText("Honor: "..tostring(math.ceil((UnitHonor("player")/UnitHonorMax("player"))*100)).."%")
                    
                
                    xpwheel.playerLevel:SetText("|cff8C1616"..honorLevel)
                  
                    xpwheel.playerLevel:SetTextColor(1.00,0.96,0.41) 
                else
                    xpwheel.percRING_[temp]:Hide()
                    if(repWhileLeveling == true) then
                    xpwheel.ReputationBarRing[temp2]:Show()
                    xpwheel.percRING2_[temp2]:Hide()     
                    else
                    xpwheel.ReputationBarRing[temp]:Show()
                    xpwheel.percRING2_[temp2]:Show()
                    end
                    xpwheel.HonorBarRing[temp]:Hide()
                xpwheel.percCenter:SetText(name.."\nRep: "..tostring(math.ceil((value/maxBar)*100)).."%")
                xpwheel.percCenter:SetPoint(xpwheel.percCenter:GetPoint(),0,10)
                end
            end
        end    
    else
        for i = 360, 0,-1 do
            local temp = Barzeroing(i)
            local temp2 = Barzeroing2(i)
            xpwheel.percRING_[temp]:Hide()
            if(xpwheel.ReputationBarRing:ShouldBeVisible())then
                if(repWhileLeveling == true) then
                    xpwheel.ReputationBarRing[temp2]:Show()
                    xpwheel.percRING2_[temp2]:Hide()     
                    else
                    xpwheel.ReputationBarRing[temp]:Show()
                    xpwheel.percRING2_[temp2]:Show() 
                    end
                xpwheel.HonorBarRing[temp]:Hide()
                local name, reaction, minBar, maxBar, value, factionID = GetWatchedFactionInfo();
                local reacting = "INVALID"
                xpwheel.percCenter:SetText(name.."\nRep: "..tostring(math.ceil((value/maxBar)*100)).."%")
                xpwheel.percCenter:SetPoint(xpwheel.percCenter:GetPoint(),0,10)
                if(reaction == 1)then
                    --[[ hated ]]
                    reacting = "|c00CC2222 Hat\n-ed"
                    xpwheel.percCenter:SetText(name.."\nRep: "..tostring(math.ceil(((36000-((maxBar)-(value)))/(-maxBar+30000))*100)).."%")
                elseif(reaction == 2)then
                    --[[ hostile ]]
                    xpwheel.percCenter:SetText(name.."\nRep: "..tostring(math.ceil(((9000-((maxBar)-(value)))/(-maxBar+9000))*100)).."%")
                    reacting = "|c00FF0000 Hos\n-tile"
                elseif(reaction == 3)then
                    --[[ unfriendly ]]
                    xpwheel.percCenter:SetText(name.."\nRep: "..tostring(math.ceil(((3000-((maxBar)-(value)))/(-maxBar+3000))*100)).."%")
                    reacting = "|c00ee6622 Unfri-\nendly"
                elseif(reaction == 4)then
                    --[[ neutral ]]
                    xpwheel.percCenter:SetText(name.."\nRep: "..tostring(math.ceil((value/maxBar)*100)).."%")
                    reacting = "Neu-\ntral"
                    xpwheel.playerLevel:SetTextColor(1.00,0.96,0.41)
                elseif(reaction == 5)then
                    --[[ friendly ]]
                    xpwheel.percCenter:SetText(name.."\nRep: "..tostring(math.ceil(((value-3000)/(maxBar-3000))*100)).."%")
                    reacting = "|c0000FF00 Fri\n-endly"
                elseif(reaction == 6)then
                    --[[ honored ]]
                    xpwheel.percCenter:SetText(name.."\nRep: "..tostring(math.ceil(((value-9000)/(maxBar-9000))*100)).."%")
                    reacting = "|c0000ff88 Hon-\nored"
                elseif(reaction == 7)then
                    --[[ Revered ]]
                    xpwheel.percCenter:SetText(name.."\nRep: "..tostring(math.ceil(((value-21000)/(maxBar-21000))*100)).."%")
                    reacting = "|c0000ffcc Rev-\nered"
                elseif(reaction == 8)then
                    --[[ exalted ]]
                    xpwheel.percCenter:SetText(name.."\nRep: "..tostring(math.ceil((value/maxBar)*100)).."%")
                    reacting = "|c0000FFFF Exa-\nlted"
                else
                    xpwheel.percCenter:SetText("XP: "..tostring(math.ceil((UnitXP("player")/UnitXPMax("player"))*100)).."%")
                end
                xpwheel.playerLevel:SetText(reacting)
                

            end
            if(xpwheel.HonorBarRing:ShouldBeVisible())then
                xpwheel.HonorBarRing[temp]:Show()
                if(repWhileLeveling == true) then
                    xpwheel.ReputationBarRing[temp2]:Show()
                    xpwheel.percRING2_[temp2]:Hide()     
                    else
                    xpwheel.ReputationBarRing[temp]:Hide()
                    xpwheel.percRING2_[temp2]:Show() 
                end
                xpwheel.percCenter:SetText("Honor: "..tostring(math.ceil((UnitHonor("player")/UnitHonorMax("player"))*100)).."%")
                xpwheel.playerLevel:SetText("|cff8C1616"..honorLevel)
                --xpwheel.playerLevel:SetTextColor(1.00,0.96,0.41)
            end    
        end
    end
end


function xpwheel:ConditionalUpdateXPBar()

end

function xpwheel:SetItemXPBar()
 
    if (C_AzeriteItem.HasActiveAzeriteItem() and C_AzeriteEmpoweredItem.IsHeartOfAzerothEquipped())then
        xpwheel.artifactLevel:SetText(C_AzeriteItem.GetPowerLevel(C_AzeriteItem.FindActiveAzeriteItem()))
        local artifactXP, xpForNextPoint = C_AzeriteItem.GetAzeriteItemXPInfo(C_AzeriteItem.FindActiveAzeriteItem())  
        artifactPointsPercent = (artifactXP/xpForNextPoint)*100
    end
    if(repWhileLeveling == false) then    

    if (C_AzeriteItem.HasActiveAzeriteItem() and C_AzeriteEmpoweredItem.IsHeartOfAzerothEquipped())then
        xpwheel.artifactpercCenter:SetText("AP: "..tostring(math.ceil(artifactPointsPercent)).."%")
    end

    for i = 0,360,1 do
        local temp = Barzeroing2(i)
        xpwheel.percRING2_[temp]:SetTextColor(0.2,0.2,0.2,1)
    end
    if (C_AzeriteItem.HasActiveAzeriteItem() and C_AzeriteEmpoweredItem.IsHeartOfAzerothEquipped())then
        for i = 0,(math.ceil(artifactPointsPercent*3.6)),1 do
            --[[ local r = 0.95 
            local g = 0.90 
            local b = 0.60
            xpwheel.percRING2_[i]:SetTextColor(r, g, b,1)  ]]
            local temp = Barzeroing2(i)
            xpwheel.percRING2_[temp]:SetTextColor(ARTIFACT_BAR_COLOR:GetRGB())
            --xpwheel.percRING2_[i]:SetTextColor(0.461, 0.398, 0.202,1)
        end
    end
    else
        for i = 0,360,1 do
            local temp = Barzeroing2(i)
            xpwheel.percRING2_[temp]:SetTextColor(0.2,0.2,0.2,1)
            xpwheel.percRING2_[temp]:Hide()
        end
        if(artifactPointsPercent == nil)then 
            local current = UnitHonor("player");
            local maxHonor = UnitHonorMax("player");
            artifactPointsPercent = (current/maxHonor)*100;
        end
        for i = 0,(math.ceil(artifactPointsPercent*3.6)),1 do
            --[[ local r = 0.95 
            local g = 0.90 
            local b = 0.60
            xpwheel.percRING2_[i]:SetTextColor(r, g, b,1)  ]]
            local temp = Barzeroing2(i)
            xpwheel.percRING2_[temp]:SetTextColor(ARTIFACT_BAR_COLOR:GetRGB())
            xpwheel.percRING2_[temp]:Hide()
            --xpwheel.percRING2_[i]:SetTextColor(0.461, 0.398, 0.202,1)
        end
    end
    
end






function xpwheel.HonorBarRing:Update()
	local current = UnitHonor("player");
	local maxHonor = UnitHonorMax("player");

	local level = UnitHonorLevel("player");

    --if (xpwheel.HonorBarRing:ShouldBeVisible() == true) then

        --[[ for i = 360, 0,-1 do
            if(xpwheel.percRING_[i] ~= nil and xpwheel.ReputationBarRing[i] ~= nil) then
            xpwheel.percRING_[i]:Hide()
            xpwheel.ReputationBarRing[i]:Hide()
            
            end

        end ]]

        --print(xpwheel.HonorBarRing:ShouldBeVisible())
        for i = 360,0,-1 
        do 
            local temp = Barzeroing(i)
            if(xpwheel.HonorBarRing[temp] == nil) then
            xpwheel.HonorBarRing[temp] = xpwheel:CreateFontString(nil,"ARTWORK") 
            xpwheel.HonorBarRing[temp]:SetFont("Fonts\\ARIALN.ttf", 55)
            --print(math.sin(i)*100*size3,math.cos(i)*100*size3)
            xpwheel.HonorBarRing[temp]:SetPoint(xpwheel:GetPoint(),(math.sin((temp*math.pi)/180)*100*(size3+0.02))-1.0,(math.cos((temp*math.pi)/180)*100*(size3+0.02))-5.1)
            
            xpwheel.HonorBarRing[temp]:SetWidth(100)
            xpwheel.HonorBarRing[temp]:SetHeight(100)
            xpwheel.HonorBarRing[temp]:SetText("\•")



            else
            --xpwheel.HonorBarRing[i]:Show()
            end
            if(i<=math.ceil((current/maxHonor)*360)) then

                if(englishFaction == "Horde")then
                    xpwheel.HonorBarRing[temp]:SetTextColor(factionGroupColor["HORDE"].r,factionGroupColor["HORDE"].g,factionGroupColor["HORDE"].b,factionGroupColor["HORDE"].a)               
                elseif(englishFaction=="Alliance")then
                    xpwheel.HonorBarRing[temp]:SetText(factionGroupColor["ZODIACBLUE"].."\•")
                --xpwheel.HonorBarRing[temp]:SetTextColor(factionGroupColor["ALLIANCE"].r,factionGroupColor["ALLIANCE"].g,factionGroupColor["ALLIANCE"].b,factionGroupColor["ALLIANCE"].a)    
            else
                xpwheel.HonorBarRing[temp]:SetTextColor(1.0, 0.24, 0,1) -- blizzards honor color
                end
            else
                xpwheel.HonorBarRing[temp]:SetTextColor(0.2,0.2,0.2,1)
            end
        end
    --else
        --[[ for i = 360, 0,-1 do
            if(xpwheel.percRING_[i] ~= nil and xpwheel.ReputationBarRing:ShouldBeVisible() == false) then
            xpwheel.percRING_[i]:Show()
            elseif(xpwheel.ReputationBarRing[i] ~= nil and xpwheel.ReputationBarRing:ShouldBeVisible() == true)then
            xpwheel.ReputationBarRing[i]:Show()
            end
            if(xpwheel.HonorBarRing[i] ~= nil)then
            xpwheel.HonorBarRing[i]:Hide()
            end

        end ]]
    --end


end
function xpwheel.HonorBarRing:ShouldBeVisible()
	return IsWatchingHonorAsXP() or C_PvP.IsActiveBattlefield() or IsInActiveWorldPVP();
end







function xpwheel.ReputationBarRing:Update() 
	local name, reaction, minBar, maxBar, value, factionID = GetWatchedFactionInfo();
	local colorIndex = reaction;
	local isCapped;
	local friendshipID = GetFriendshipReputation(factionID);
	
	if ( self.factionID ~= factionID ) then
			self.factionID = factionID;
			self.friendshipID = GetFriendshipReputation(factionID);
		end
	
	-- do something different for friendships
	local level;
	
	if ( friendshipID ) then
		local friendID, friendRep, friendMaxRep, friendName, friendText, friendTexture, friendTextLevel, friendThreshold, nextFriendThreshold = GetFriendshipReputation(factionID);
		level = GetFriendshipReputationRanks(factionID);
		if ( nextFriendThreshold ) then
			minBar, maxBar, value = friendThreshold, nextFriendThreshold, friendRep;
		else
			-- max rank, make it look like a full bar
			minBar, maxBar, value = 0, 1, 1;
			isCapped = true;
		end
		colorIndex = 5;		-- always color friendships green
		
	elseif ( C_Reputation.IsFactionParagon(factionID) ) then
		local currentValue, threshold, _, hasRewardPending = C_Reputation.GetFactionParagonInfo(factionID);
		minBar, maxBar  = 0, threshold;
		value = currentValue % threshold;
		if ( hasRewardPending ) then 
			value = value + threshold;
		end
	else
		level = reaction;
		if ( reaction == MAX_REPUTATION_REACTION ) then
			isCapped = true;
		end
	end
	
	-- Normalize values
	maxBar = maxBar - minBar;
	value = value - minBar;
	if ( isCapped and maxBar == 0 ) then
		maxBar = 1;
		value = 1;
	end
	minBar = 0;
	
	--self:SetBarValues(value, minBar, maxBar, level); 
    --print(value,minBar,maxBar,level)
    







	if ( isCapped ) then
		--self:SetBarText(name);
	else
        if(name ~= nil)then
        name = name.." %d / %d";
		--self:SetBarText(name:format(value, maxBar)); 
        end
    end
	
	local color = FACTION_BAR_COLORS[colorIndex];
    
    
	--self:SetBarColor(color.r, color.g, color.b, 1); 
    

    --if (xpwheel.ReputationBarRing:ShouldBeVisible() == true  and xpwheel.HonorBarRing:ShouldBeVisible() == false) then
        --print(xpwheel.ReputationBarRing:ShouldBeVisible())
--[[         for i = 360, 0,-1 do
            if(xpwheel.percRING_[i] ~= nil and xpwheel.HonorBarRing[i] ~= nil) then
            xpwheel.percRING_[i]:Hide()
            xpwheel.HonorBarRing[i]:Hide()
            end

        end ]]

        --print(xpwheel.HonorBarRing:ShouldBeVisible())
        
        for i = 360,0,-1 
        do
            local temp = Barzeroing(i)
            local temp2 = Barzeroing2(i)

            --print(math.sin(i)*100*size3,math.cos(i)*100*size3)
            --xpwheel.ReputationBarRing[temp]:SetPoint(xpwheel:GetPoint(),(math.sin((temp*math.pi)/180)*100*(size3+0.02))-1.0,(math.cos((temp*math.pi)/180)*100*(size3+0.02))-5.1)
            
            -- if show reputation while leveling is true Unfinished so its commented out
            if(repWhileLeveling) then
                if(xpwheel.ReputationBarRing[temp2] == nil) then
                --if(true) then
                xpwheel.ReputationBarRing[temp2] = xpwheel:CreateFontString(nil,"ARTWORK") 
                xpwheel.ReputationBarRing[temp2]:SetFont("Fonts\\ARIALN.ttf", 20)
                
                xpwheel.ReputationBarRing[temp2]:SetWidth(100)
                xpwheel.ReputationBarRing[temp2]:SetHeight(100)
                xpwheel.ReputationBarRing[temp2]:SetText("\•")
                end
                xpwheel.ReputationBarRing[temp2]:SetFont("Fonts\\ARIALN.ttf", 20)
                xpwheel.ReputationBarRing[temp2]:ClearAllPoints()
                xpwheel.ReputationBarRing[temp2]:SetPoint(xpwheel:GetPoint(),(math.sin((temp2*math.pi)/180)*100*size4)-1.0,(math.cos((temp2*math.pi)/180)*100*size4)-3.6)            
                xpwheel.percRING2_[temp2]:Hide();
            else
                
                if(xpwheel.ReputationBarRing[temp] == nil) then
                --if(true) then
                xpwheel.ReputationBarRing[temp] = xpwheel:CreateFontString(nil,"ARTWORK") 
                
                xpwheel.ReputationBarRing[temp]:SetFont("Fonts\\ARIALN.ttf", 55)
                xpwheel.ReputationBarRing[temp]:SetWidth(100)
                xpwheel.ReputationBarRing[temp]:SetHeight(100)
                xpwheel.ReputationBarRing[temp]:SetText("\•")
            end
            xpwheel.ReputationBarRing[temp]:SetFont("Fonts\\ARIALN.ttf", 55)
            xpwheel.ReputationBarRing[temp]:ClearAllPoints()            
            xpwheel.ReputationBarRing[temp]:SetPoint(xpwheel:GetPoint(),(math.sin((temp*math.pi)/180)*100*(size3+0.02))-1.0,(math.cos((temp*math.pi)/180)*100*(size3+0.02))-5.1)
            xpwheel.percRING2_[temp2]:Show();
            --]]
            
            
            --xpwheel.ReputationBarRing[i]:Show()
            end
            if(i<=math.ceil((value/maxBar)*360)) then
                --[[ local temp = Barzeroing(i) ]]
                --print(temp)
                if (xpwheel.ReputationBarRing:ShouldBeVisible() == true or (repWhileLeveling == true and xpwheel.ReputationBarRing:ShouldBeVisible() == true))then
                    if(repWhileLeveling == false)then
                    xpwheel.ReputationBarRing[temp]:SetTextColor(color.r, color.g, color.b, 1)
                    else
                    xpwheel.ReputationBarRing[temp2]:SetTextColor(color.r, color.g, color.b, 1)
                    end
                else

                    if(repWhileLeveling == false) then
                        xpwheel.ReputationBarRing[temp]:SetTextColor(0, 0, 0, 0)
                        else
                        xpwheel.ReputationBarRing[temp2]:SetTextColor(0, 0, 0, 0)
                    end
                    
                end
            else
--[[                 local temp = Barzeroing(i)]]
                   -- print(temp)
                   
                   if(xpwheel.ReputationBarRing[temp] ~= nil) then
                    xpwheel.ReputationBarRing[temp]:SetTextColor(0.2,0.2,0.2,1)
                   end
                   if(xpwheel.ReputationBarRing[temp2] ~= nil) then
                    xpwheel.ReputationBarRing[temp2]:SetTextColor(0.2,0.2,0.2,1)
                   end
            end
            
        end
    --[[ 
    else
        for i = 360, 0,-1 do
            if(xpwheel.percRING_[i] ~= nil and xpwheel.HonorBarRing:ShouldBeVisible() == false) then
            xpwheel.percRING_[i]:Show()
            elseif(xpwheel.HonorBarRing[i] ~= nil and xpwheel.HonorBarRing:ShouldBeVisible() == true)then
            xpwheel.HonorBarRing[i]:Show()
            end
            if(xpwheel.ReputationBarRing[i] ~= nil)then
            xpwheel.ReputationBarRing[i]:Hide()
            end

        end
]]
 
      
   -- end
    



	self.isCapped = isCapped; 
	self.name = name;
	self.value = value; 
	self.max = maxBar; 
end



function xpwheel.ReputationBarRing:ShouldBeVisible()
    local name, reaction, minFaction, maxFaction, value, factionID = GetWatchedFactionInfo();
    
    if(name == nil) then
        return false;
    else
        return true;
    end
    
end



function UpdateStatusBar()
    --print("HONOR AND GLORY!")



    --SetXPBar()
    if(xpwheel.HonorBarRing:ShouldBeVisible() == false and xpwheel.ReputationBarRing:ShouldBeVisible() == false)then 
        for i = 360, 0,-1 do
            local temp = Barzeroing(i)
            local temp2 = Barzeroing2(i)
            xpwheel.HonorBarRing:Update();
            xpwheel.ReputationBarRing:Update();
            if(UnitLevel("player") < GetMaxLevelForPlayerExpansion()  )then
               -- SetXPBar()
            xpwheel.playerLevel:SetText(UnitLevel("player"))
            if(repWhileLeveling == false)then
                xpwheel.percRING_[temp]:Show()
                xpwheel.ReputationBarRing[temp]:Hide()
                xpwheel.ReputationBarRing[temp2]:Hide()
                xpwheel.HonorBarRing[temp]:Hide()
            else
            xpwheel.percRING_[temp]:Show()
            xpwheel.percRING2_[temp2]:Show()
            --xpwheel.ReputationBarRing[temp2]:Show()
            xpwheel.HonorBarRing[temp]:Hide()
            end
            xpwheel.percCenter:SetText("XP: "..tostring(math.ceil((UnitXP("player")/UnitXPMax("player"))*100)).."%")
            else
                if(repWhileLeveling == false)then
                xpwheel.percRING_[temp]:Hide()
                xpwheel.ReputationBarRing[temp]:Show()
                --xpwheel.ReputationBarRing[temp2]:Hide()
                else 
                xpwheel.percRING_[temp]:Show()
                xpwheel.percRING2_[temp2]:Hide()
                xpwheel.ReputationBarRing[temp2]:Show()
                end
                
                xpwheel.HonorBarRing[temp]:Hide()
                local name, reaction, minBar, maxBar, value, factionID = GetWatchedFactionInfo();
                xpwheel.percCenter:SetText(name.."\nRep: "..tostring(math.ceil((value/maxBar)*100)).."%")
                xpwheel.percCenter:SetPoint(xpwheel.percCenter:GetPoint(),0,10)
            end
        end
    
    else
        xpwheel.HonorBarRing:Update();
        xpwheel.ReputationBarRing:Update();
        for i = 360, 0,-1 do
            local temp = Barzeroing(i)
            local temp2 = Barzeroing2(i)
            --SetXPBar()
            xpwheel.percRING_[temp]:Hide()
            if(xpwheel.ReputationBarRing:ShouldBeVisible() and xpwheel.HonorBarRing:ShouldBeVisible() == false)then
                if(repWhileLeveling == false) then
                xpwheel.ReputationBarRing[temp]:Show()
                else
                
                xpwheel.ReputationBarRing[temp2]:Show()
                end
                xpwheel.HonorBarRing[temp]:Hide()
                local name, reaction, minBar, maxBar, value, factionID = GetWatchedFactionInfo();
                xpwheel.percCenter:SetText(name.."\nRep: "..tostring(math.ceil((value/maxBar)*100)).."%")
                xpwheel.percCenter:SetPoint(xpwheel.percCenter:GetPoint(),0,10)
    
            elseif(xpwheel.ReputationBarRing:ShouldBeVisible() == false and xpwheel.HonorBarRing:ShouldBeVisible())then 
                xpwheel.HonorBarRing[temp]:Show()
                if(repWhileLeveling == false) then
                    xpwheel.ReputationBarRing[temp]:Hide()
                    else
                    xpwheel.ReputationBarRing[temp2]:Hide()
                    end
                xpwheel.percCenter:SetText("Honor: "..tostring(math.ceil((UnitHonor("player")/UnitHonorMax("player"))*100)).."%")
    
            
            elseif(xpwheel.ReputationBarRing:ShouldBeVisible() and xpwheel.HonorBarRing:ShouldBeVisible())then
                xpwheel.HonorBarRing[temp]:Show()
                if(repWhileLeveling == false) then
                    xpwheel.ReputationBarRing[temp]:Hide()
                    else
                    xpwheel.ReputationBarRing[temp2]:Hide()
                end
                xpwheel.percCenter:SetText("Honor: "..tostring(math.ceil((UnitHonor("player")/UnitHonorMax("player"))*100)).."%")
    
            end
            
        end
    
    end
    
    
    end
    SLASH_REFRESH1 = "/ZurichoRefresh"
    --SLASH_PALADIN2 = "/ZurichoPaladins"
SlashCmdList["REFRESH"] = function(...)

xpwheel:SetXPBar()
print("should work")
end

    SLASH_PALADIN1 = "/ZurichoPaladin"
    --SLASH_PALADIN2 = "/ZurichoPaladins"
SlashCmdList["PALADIN"] = function(...)

    if classColorPaladin then
        classColorPaladin = false
    elseif not classColorPaladin then
        classColorPaladin = true
        classColorDruid = false
        classColorAll = false

     end
    


    --print(classColorPaladin)


    if(classColorPaladin and classColorDruid == false)then
    SwapToPaladinColors()
    end
    




    if(classColorPaladin and classColorDruid == false)then
        xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Paladin",
    --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
    tile=false,tileSize=32,edgeSize=32,
    insets= {left=27,right=29,top=27,bottom=27}})
    elseif(englishFaction == "Horde" and classColorPaladin == false and classColorDruid == false) then
    xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt4GoldenHorde",
    --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
    tile=false,tileSize=32,edgeSize=32,
    insets= {left=27,right=29,top=27,bottom=27}})
    elseif(englishFaction == "Alliance" and classColorPaladin == false and classColorDruid == false) then
        xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XPCircleArt4GoldenAlliance",
        --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
        tile=false,tileSize=32,edgeSize=32,
        insets= {left=27,right=29,top=27,bottom=27}})
    end
    xpwheel:SetXPBar()
 end 

    SLASH_DRUID1 = "/ZurichoDruid"
    --SLASH_DRUID2 = "/ZurichoDruids"
 SlashCmdList["DRUID"] = function(...)

    if classColorDruid then
        classColorDruid = false
    elseif not classColorDruid then
        classColorPaladin = false
        classColorDruid = true
        classColorAll = false
     end
    
    --print(classColorPaladin)


    if(classColorDruid)then
    SwapToDruidColors()
    end
    




    if(classColorDruid)then
        xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Druid",
    --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
    tile=false,tileSize=32,edgeSize=32,
    insets= {left=27,right=29,top=27,bottom=27}})
    elseif(englishFaction == "Horde" and classColorPaladin == false and classColorDruid == false) then
    xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt4GoldenHorde",
    --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
    tile=false,tileSize=32,edgeSize=32,
    insets= {left=27,right=29,top=27,bottom=27}})
    elseif(englishFaction == "Alliance" and classColorPaladin == false and classColorDruid == false) then
        xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XPCircleArt4GoldenAlliance",
        --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
        tile=false,tileSize=32,edgeSize=32,
        insets= {left=27,right=29,top=27,bottom=27}})
    end
    xpwheel:SetXPBar()
 end 

 SLASH_CLASSCOLOR1 = "/ZurichoClassColor"

SlashCmdList["CLASSCOLOR"] = function(...)

     if classColorDruid or classColorPaladin then
         classColorDruid = false
         classColorPaladin = false

         if classColorAll then
            classColorAll = false
        else
            classColorAll = true
        end

    else
        if classColorAll then
        classColorAll = true
        else
        classColorAll = true
        end
    end


 print("Paladin:")
 print(classColorPaladin)
print("Druid:")
 print(classColorDruid)
print("Class:")
 print(classColorAll)



 




 if(classColorAll)then
    if(englishClass == "PALADIN")then
        xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Paladin",
        --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
        tile=false,tileSize=32,edgeSize=32,
        insets= {left=27,right=29,top=27,bottom=27}})
       

    elseif(englishClass == "DEMONHUNTER") then

    xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5DemonHunter",
    --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
    tile=false,tileSize=32,edgeSize=32,
    insets= {left=27,right=29,top=27,bottom=27}})
   

    elseif(englishClass == "DRUID") then


     xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Druid",
 --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
 tile=false,tileSize=32,edgeSize=32,
 insets= {left=27,right=29,top=27,bottom=27}})

    elseif(englishClass == "HUNTER") then
    xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5HUnter",
    --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
    tile=false,tileSize=32,edgeSize=32,
    insets= {left=27,right=29,top=27,bottom=27}})

    elseif(englishClass == "MAGE") then
    xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Mage",
    --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
    tile=false,tileSize=32,edgeSize=32,
    insets= {left=27,right=29,top=27,bottom=27}})

    elseif(englishClass == "MONK") then


     xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Monk",
 --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
 tile=false,tileSize=32,edgeSize=32,
 insets= {left=27,right=29,top=27,bottom=27}})


    elseif(englishClass == "PRIEST") then


     xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Priest",
 --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
 tile=false,tileSize=32,edgeSize=32,
 insets= {left=27,right=29,top=27,bottom=27}})

     elseif(englishClass == "ROGUE") then


     xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Rogue",
 --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
 tile=false,tileSize=32,edgeSize=32,
 insets= {left=27,right=29,top=27,bottom=27}})

     elseif(englishClass == "SHAMAN") then


     xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Shaman",
 --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
 tile=false,tileSize=32,edgeSize=32,
 insets= {left=27,right=29,top=27,bottom=27}})

    elseif(englishClass == "WARLOCK") then


     xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Warlock",
 --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
 tile=false,tileSize=32,edgeSize=32,
 insets= {left=27,right=29,top=27,bottom=27}})

    elseif(englishClass == "WARRIOR") then


xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Warrior",
--edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
tile=false,tileSize=32,edgeSize=32,
insets= {left=27,right=29,top=27,bottom=27}})


    elseif(englishClass == "DEATHKNIGHT") then


xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt4GoldenDeathknight",
--edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
tile=false,tileSize=32,edgeSize=32,
insets= {left=27,right=29,top=27,bottom=27}})
    else
    
        print("ZURICHOUI: ERROR 404 CLASS NOT FOUND! - XPWHEEL.LUA line: 1540")
        xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt4GoldenBlack",
        --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
        tile=false,tileSize=32,edgeSize=32,
        insets= {left=27,right=29,top=27,bottom=27}})

        print(englishClass)


    end

elseif(englishFaction == "Horde" and classColorPaladin == false and classColorDruid == false) then
 xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt4GoldenHorde",
 --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
 tile=false,tileSize=32,edgeSize=32,
 insets= {left=27,right=29,top=27,bottom=27}})
elseif(englishFaction == "Alliance" and classColorPaladin == false and classColorDruid == false) then
     xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XPCircleArt4GoldenAlliance",
     --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
     tile=false,tileSize=32,edgeSize=32,
     insets= {left=27,right=29,top=27,bottom=27}})


    else
        xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XPCircleArt4GoldenBlack",
        --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
        tile=false,tileSize=32,edgeSize=32,
        insets= {left=27,right=29,top=27,bottom=27}})
    
 end
 xpwheel:SetXPBar()
end 


SLASH_STANCEBAR1 = "/ZurichoStance"

SlashCmdList["STANCEBAR"] = function(...)


    StanceShow = not StanceShow
    handleStanceBar()

 print(StanceShow)
end 


SLASH_HELP1 = "/ZurichoHelp"

SlashCmdList["HELP"] = function(...)

 print("/ZurichoPaladin -> Manually Swap (on/off) Paladin Colours")
 print("/ZurichoDruid -> Manually Swap (on/off) Druid Colours")
 print("/ZurichoClassColor -> Manually Swap (on/off) Class Colours")
 print("If no colour is chosen, it defaults to Faction Colours")
 print("/ZurichoStance -> Manually Swap (on/off) StanceBarFrame On or Off")

end 



StanceBarFrame:RegisterEvent("VARIABLES_LOADED")

StanceBarFrame:HookScript("OnEvent", function(self, event, ...)
    if (event == "VARIABLES_LOADED") then
    
   -- print(StanceShow)
   
    handleStanceBar()
    StanceBarFrame:UnregisterEvent("VARIABLES_LOADED")
    end
end)





function handleStanceBar()

    if(StanceShow == true) then

        RegisterStateDriver(StanceBarFrame, "visibility", "show")
        
    elseif(StanceShow == false) then
        
        RegisterStateDriver(StanceBarFrame, "visibility", "hide")

    else
        print("nil exception")
        
    end
    
end

function PrintStanceShow()
    print(StanceShow)
end
function GetStanceShow()


    return(StanceShow)
end




function GSetStatusBar()
--print("Was called")

end

hooksecurefunc("GSetStatusBar",function() 
    





    if(classColorAll)then
        if(englishClass == "PALADIN")then
            xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Paladin",
            --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
            tile=false,tileSize=32,edgeSize=32,
            insets= {left=27,right=29,top=27,bottom=27}})
           
    
        elseif(englishClass == "DEMONHUNTER") then
    
        xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5DemonHunter",
        --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
        tile=false,tileSize=32,edgeSize=32,
        insets= {left=27,right=29,top=27,bottom=27}})
       
    
        elseif(englishClass == "DRUID") then
    
    
        xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Druid",
        --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
        tile=false,tileSize=32,edgeSize=32,
        insets= {left=27,right=29,top=27,bottom=27}})
    
        elseif(englishClass == "HUNTER") then
        xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5HUnter",
        --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
        tile=false,tileSize=32,edgeSize=32,
        insets= {left=27,right=29,top=27,bottom=27}})
    
        elseif(englishClass == "MAGE") then
        xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Mage",
        --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
        tile=false,tileSize=32,edgeSize=32,
        insets= {left=27,right=29,top=27,bottom=27}})
    
        elseif(englishClass == "MONK") then
    
    
         xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Monk",
        --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
        tile=false,tileSize=32,edgeSize=32,
        insets= {left=27,right=29,top=27,bottom=27}})
    
    
        elseif(englishClass == "PRIEST") then
    
    
         xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Priest",
        --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
        tile=false,tileSize=32,edgeSize=32,
        insets= {left=27,right=29,top=27,bottom=27}})
    
        elseif(englishClass == "ROGUE") then
    
    
        xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Rogue",
        --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
        tile=false,tileSize=32,edgeSize=32,
        insets= {left=27,right=29,top=27,bottom=27}})
    
        elseif(englishClass == "SHAMAN") then
    
    
        xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Shaman",
        --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
        tile=false,tileSize=32,edgeSize=32,
        insets= {left=27,right=29,top=27,bottom=27}})
    
        elseif(englishClass == "WARLOCK") then
    
    
        xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Warlock",
        --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
        tile=false,tileSize=32,edgeSize=32,
        insets= {left=27,right=29,top=27,bottom=27}})
    
        elseif(englishClass == "WARRIOR") then
    
    
        xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Warrior",
        --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
        tile=false,tileSize=32,edgeSize=32,
        insets= {left=27,right=29,top=27,bottom=27}})
    
    
        elseif(englishClass == "DEATHKNIGHT") then
    
    
        xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt4GoldenDeathknight",
        --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
        tile=false,tileSize=32,edgeSize=32,
        insets= {left=27,right=29,top=27,bottom=27}})
        else
        
            print("ZURICHOUI: ERROR 404 CLASS NOT FOUND! - XPWHEEL.LUA line: 1540")
            xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt4GoldenBlack",
            --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
            tile=false,tileSize=32,edgeSize=32,
            insets= {left=27,right=29,top=27,bottom=27}})
    
            print(englishClass)
    
    
        end
    elseif(classColorPaladin)then
        xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Paladin",
    --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
    tile=false,tileSize=32,edgeSize=32,
    insets= {left=27,right=29,top=27,bottom=27}})

    elseif(classColorDruid)then
        xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt5Druid",
    --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
    tile=false,tileSize=32,edgeSize=32,
    insets= {left=27,right=29,top=27,bottom=27}})
    
    elseif(englishFaction == "Horde" and classColorPaladin == false and classColorDruid == false) then
     xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XpCircleArt4GoldenHorde",
     --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
     tile=false,tileSize=32,edgeSize=32,
     insets= {left=27,right=29,top=27,bottom=27}})
    elseif(englishFaction == "Alliance" and classColorPaladin == false and classColorDruid == false) then
    xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XPCircleArt4GoldenAlliance",
    --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
    tile=false,tileSize=32,edgeSize=32,
    insets= {left=27,right=29,top=27,bottom=27}})
    
    
    else
    xpwheel:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\XPCircleArt4GoldenBlack",
    --edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
    tile=false,tileSize=32,edgeSize=32,
    insets= {left=27,right=29,top=27,bottom=27}})
        
    
    end
    
    

    
    xpwheel:SetXPBar() --print("WasCalled")
end);
 
    
function TalentCycle(r) -- r indicates tier.
    for j=1,4,1 do
        local x={unpack({GetTalentInfo(r,j,1)},1,12)}
        if(x[10]) then
            if x[9] == 3 then LearnTalent(GetTalentInfo(r,1,1)) break
            else
                LearnTalent(GetTalentInfo(r,j+1,1)) break
            end
        else
            wipe(x)
        end
    end
end

function TalentPick(r,c)
    LearnTalent(GetTalentInfo(r,c,1))
end


function SetTalentMultispecNest(tablein)
    local availableCheck = {15,25,30,35,40,45,50}
    for i = 1,7,1 do
        if type(tablein[i]) == "number" then
            local x={unpack({GetTalentInfo(i,tablein[i],1)},1,12)}
            if not x[10] and availableCheck[i] <= UnitLevel("Player") then
                TalentPick(i,tablein[i])
            else
                if(not x[10]) then
                local msg = "Not high enough Level for that talent"
                print("one or more talents were skipped: ",i," - ",msg)
                end
            end
        
        elseif type(tablein[i])~="nil" then
            assert(true,"Input is not a number, type: "+ type(tablein[i]) + ", index: " + i + "in table: " + tablein)
        end
    end
end