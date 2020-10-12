
local unitHandlerFrame = CreateFrame('Frame', 'unitHandleFrame', UIParent)

function unitHandlerFrame:OnEvent(event, addon)
	--Check if the talkinghead addon is being loaded
	

local moving
local plaMoved = false
local tarMoved = false
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



