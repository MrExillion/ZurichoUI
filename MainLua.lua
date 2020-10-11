



 UIPARENT_MANAGED_FRAME_POSITIONS['MultiBarBottomLeft'] = nil
 UIPARENT_MANAGED_FRAME_POSITIONS['MultiBarBottomRight'] = nil
 UIPARENT_MANAGED_FRAME_POSITIONS['MultiBarLeft'] = nil
 UIPARENT_MANAGED_FRAME_POSITIONS['MultiBarRight'] = nil

local frame = CreateFrame('Frame', 'myActionBar', UIParent)
frame:SetPoint("CENTER",0,-UIParent:GetHeight()/2 + 150)
frame:SetWidth(220)
frame:SetHeight(60)
frame:RegisterEvent("ACTIONBAR_SLOT_CHANGED");
frame:RegisterEvent("MODIFIER_STATE_CHANGED");
frame:RegisterEvent("PLAYER_ENTERING_WORLD");
frame:RegisterEvent("ACTIONBAR_UPDATE_COOLDOWN");
frame:RegisterEvent("UPDATE_SHAPESHIFT_FORMS");
frame:RegisterEvent("ACTIONBAR_UPDATE_STATE")
frame:RegisterEvent("PLAYER_XP_UPDATE")
frame:RegisterEvent("UPDATE_EXHAUSTION")


frame:SetBackdrop({bgFile="Interface\\DialogFrame\\UI-DialogBox-Background",
           edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", tile=true,tileSize=32,edgeSize=32,
           insets= {left=11,right=12,top=12,bottom=11}})
frame:SetBackdropColor(1,1,1,1);
local framePage2 = CreateFrame('Frame', 'myActionBar', UIParent)
framePage2:SetPoint("CENTER",0,-UIParent:GetHeight()/2 + 150)
framePage2:SetWidth(220)
framePage2:SetHeight(60)
framePage2:RegisterEvent("ACTIONBAR_SLOT_CHANGED");
framePage2:RegisterEvent("MODIFIER_STATE_CHANGED");
framePage2:RegisterEvent("PLAYER_ENTERING_WORLD");
framePage2:RegisterEvent("ACTIONBAR_UPDATE_COOLDOWN");
framePage2:RegisterEvent("UPDATE_SHAPESHIFT_FORMS");
framePage2:RegisterEvent("ACTIONBAR_UPDATE_STATE")
framePage2:RegisterEvent("PLAYER_XP_UPDATE")
framePage2:RegisterEvent("UPDATE_EXHAUSTION")

_G["ExtraActionButton1"]:ClearAllPoints()
_G["ExtraActionButton1"]:SetPoint("BOTTOMLEFT",frame,-40,-100)



function MoveActionButtons(j,n,barnum)
    for i = 1,n,1 do

        k = (i%5)
        if(k == 0)then
        k = 5
        end 

        print(k)
        if(barnum ==1)then        
            


            _G["ActionButton"..i+j]:SetParent(frame,"CENTER")
            _G["ActionButton"..i+j]:ClearAllPoints()
            if(k==1)then 
                _G["ActionButton"..i+j]:SetPoint("CENTER", "myButton",0,0)
            else
                _G["ActionButton"..i+j]:SetPoint("CENTER", "myButton", (_G['btn'..k]:GetWidth()*k+4*k) - (_G['btn']:GetWidth()+4),0)
            end
        

        elseif(2) then
            _G["MultiBarBottomLeftButton"..i+j]:SetParent(frame,"CENTER")
            _G["MultiBarBottomLeftButton"..i+j]:ClearAllPoints()
            if(k==1)then 
                _G["MultiBarBottomLeftButton"..i+j]:SetPoint("CENTER", "myButton",0,0)
            else
                _G["MultiBarBottomLeftButton"..i+j]:SetPoint("CENTER", "myButton", (_G['btn'..k]:GetWidth()*k+4*k) - (_G['btn']:GetWidth()+4),0)
            end
        
  
        end
        if(k ~=1)then
        _G['btn'..k]:Hide()
        else
        _G['btn']:Hide()
        end
    end
end


frame:SetScript("OnUpdate", function() update() end)
framePage2:SetScript("OnUpdate", function() update() end)

btn = CreateFrame("Button", "myButton", UIParent, "SecureActionButtonTemplate, ActionButtonTemplate")

local btn_text = CreateFrame("Frame", "btnText", btn)


btn_text:SetPoint("CENTER",0,0)
btn_text.text = btn_text:CreateFontString(nil,"ARTWORK") 
btn_text.text:SetFont("Fonts\\ARIALN.ttf", 13, "OUTLINE")
btn_text.text:SetWidth(100)
btn_text.text:SetHeight(100)
btn_text.text:SetPoint("CENTER",0,0)

btn_text.text:SetText("Q")

btn:SetPoint(frame:GetPoint(),frame,-frame:GetWidth()/2+btn:GetWidth()/2+12,0)

btn:SetScale(1)

btn2 = CreateFrame("Button", "myButton2", frame, "SecureActionButtonTemplate, ActionButtonTemplate")
btn2:SetPoint("CENTER", "myButton", btn:GetWidth()+4,0)
btn2:SetNormalTexture("Interface\\Buttons\\UI-Quickslot")




btn3 = CreateFrame("Button", "myButton3", frame, "SecureActionButtonTemplate, ActionButtonTemplate")
btn3:SetPoint("CENTER", "myButton2", btn2:GetWidth()+4,0)
btn3:SetNormalTexture("Interface\\Buttons\\UI-Quickslot")

btn4 = CreateFrame("Button", "myButton4", frame, "SecureActionButtonTemplate, ActionButtonTemplate")
btn4:SetPoint("CENTER", "myButton3", btn3:GetWidth()+4,0)
btn4:SetNormalTexture("Interface\\Buttons\\UI-Quickslot")

btn5 = CreateFrame("Button", "myButton5", frame, "SecureActionButtonTemplate, ActionButtonTemplate")
btn5:SetPoint("CENTER", "myButton4", btn4:GetWidth()+4,0)
btn5:SetNormalTexture("Interface\\Buttons\\UI-Quickslot")
btn:Hide()
btn2:Hide()
btn3:Hide()
btn4:Hide()
btn5:Hide()

local alt = CreateFrame('Button', 'altButton', UIParent, "UIPanelButtonTemplate")
alt:SetPoint(btn:GetPoint(),btn,-btn:GetWidth()/2-(8+alt:GetWidth()/2),btn:GetHeight()/6 + 8)
alt:SetText("Alt")
alt:SetHeight(btn:GetHeight()/2-4)


local shift = CreateFrame('Button', 'shiftButton', UIParent, "UIPanelButtonTemplate")
shift:SetPoint(btn:GetPoint(),btn,-btn:GetWidth()/2-(8+alt:GetWidth()/2),-btn:GetHeight()/6 + 6)
shift:SetText("Shift")
shift:SetHeight(btn:GetHeight()/2-4)

local ctrl = CreateFrame('Button', 'ctrlButton', UIParent, "UIPanelButtonTemplate")
ctrl:SetPoint(btn:GetPoint(),btn,-btn:GetWidth()/2-(8+alt:GetWidth()/2),-btn:GetHeight()/6 - 8)
ctrl:SetText("Ctrl")
ctrl:SetHeight(btn:GetHeight()/2-4)

btn:SetAttribute("action", 109);
local btn_icon = btn:CreateTexture("myButton","OVERLAY")

local localizedClass, englishClass, classIndex = UnitClass("Player");



    


function frame:ACTIONBAR_UPDATE_STATE(key, state)

    if(classIndex == 11 or englishClass == "DRUID" or englishClass ~= nil) then

        
   
    btn:SetButtonState(getglobal("ActionButton"..1):GetButtonState(),state)
    btn2:SetButtonState(getglobal("ActionButton"..2):GetButtonState(),state)
    btn3:SetButtonState(getglobal("ActionButton"..3):GetButtonState(),state)
    btn4:SetButtonState(getglobal("ActionButton"..4):GetButtonState(),state)
    btn5:SetButtonState(getglobal("ActionButton"..5):GetButtonState(),state)
    
    


    if (GetBindingKey("ACTIONBUTTON"..1) == key)then
    
   else
      
    end
   
   end
end  



function frame:PLAYER_ENTERING_WORLD(self,event,...)
--[[     point, relativeTo, relativePoint, xOfs, yOfs = _G["ObjectiveTrackerFrame"]:GetPoint()
    _G["ObjectiveTrackerFrame"]:ClearAllPoints()
    
    --UIPARENT_MANAGED_FRAME_POSITIONS['ObjectivesTrackerFrame'] = false
    _G["ObjectiveTrackerFrame"]:SetHeight(10)
    _G["ObjectiveTrackerFrame"]:SetScale(0.8)
    _G["ObjectiveTrackerFrame"]:SetSize(_G["ObjectiveTrackerFrame"]:GetWidth()*0.8,_G["ObjectiveTrackerFrame"]:GetHeight()*0.5)
    
    print(point, relativeTo, relativePoint, xOfs, yOfs)
    --print(relativePoint)

    --xOfs = xOfs + 80;
    --print(xOfs)
    --SetPoint("point" [, region or nil] [, "relativePoint"] [, offsetX, offsetY]
    
    point, relativeTo, relativePoint, xOfs, yOfs = _G["ObjectiveTrackerFrame"]:GetPoint() ]]


    local moving
    hooksecurefunc(ObjectiveTrackerFrame, "SetPoint", function(self)
        if moving then
            return
        end
        moving = true
        self:SetMovable(true)
        self:SetUserPlaced(true)
        self:ClearAllPoints()
        self:SetPoint("CENTER", UIParent, "CENTER",GetScreenWidth()/2+75,0)
        self:SetScale(0.8) -- optional
        self:SetWidth(300) -- optional
        self:SetHeight(800) -- optional
        self:SetMovable(false)
        moving = nil
    end)



    --print(point, relativeTo, relativePoint, xOfs, yOfs)
    
    
    
    
    
    if (englishClass == "PALADIN" or englishClass == "SHAMAN" or englishClass ~= nil)then


           
            NoLoopMover(1,2,3,4,5,1)

                      
       elseif (englishClass == "DRUID") then

       NoLoopMover(1,2,3,4,5,1)
       NoLoopMover(1,2,3,4,5,10)
       
       
       end



if(englishClass == "DRUIDOLD") then
btn:SetNormalTexture(GetActionTexture(109))

btn:GetNormalTexture():SetScale(0.1) 
btn_icon:SetWidth(60)
btn_icon:SetHeight(60)
btn_icon:SetPoint("CENTER")
btn.text = btn:CreateFontString(nil, "OVERLAY", "GameFontNormal")
btn.text:SetPoint("BOTTOM", btn, "TOPLEFT", 5,-12)
local btn_hotkey = GetBindingKey("ACTIONBUTTON"..1)
btn.text:SetText(btn_hotkey)
btn:SetPushedTexture(GetActionTexture(109))
btn:GetPushedTexture():SetScale(0.1)

NoLoopMover(6,7,8,9,10,2) -- ctrl
NoLoopMover(1,2,3,4,5,1)
NoLoopMover(6,7,8,9,10,1) --Shift


NoLoopMover(1,2,3,4,5,2) -- alt   





btn:SetAttribute("type", "action");


btn2:SetAttribute("action", 110);
local btn2_icon = btn2:CreateTexture("myButton2","OVERLAY")

btn2:SetNormalTexture(GetActionTexture(110))
btn2:GetNormalTexture():SetScale(0.1) 
btn2:SetPushedTexture(GetActionTexture(110))
btn2:GetPushedTexture():SetScale(0.1) 

btn2_icon:SetWidth(60)
btn2_icon:SetHeight(60)
btn2_icon:SetPoint("CENTER")
btn2.text = btn2:CreateFontString(nil, "OVERLAY", "GameFontNormal")
btn2.text:SetPoint("BOTTOM", btn2, "TOPLEFT", 5,-12)
local btn_hotkey2 = GetBindingKey("ACTIONBUTTON"..2)
btn2.text:SetText(btn_hotkey2)

btn2:SetAttribute("type", "action");

btn3:SetAttribute("action", 111);
local btn3_icon = btn3:CreateTexture("myButton3","OVERLAY")

btn3:SetNormalTexture(GetActionTexture(111))
btn3:GetNormalTexture():SetScale(0.1)
btn3:SetPushedTexture(GetActionTexture(111))
btn3:GetPushedTexture():SetScale(0.1) 
btn3_icon:SetWidth(60)
btn3_icon:SetHeight(60)
btn3_icon:SetPoint("CENTER")
btn3.text = btn3:CreateFontString(nil, "OVERLAY", "GameFontNormal")
btn3.text:SetPoint("BOTTOM", btn3, "TOPLEFT", 5,-12)
local btn_hotkey3 = GetBindingKey("ACTIONBUTTON"..3)
btn3.text:SetText(btn_hotkey3)

btn3:SetAttribute("type", "action");



btn4:SetAttribute("action", 112);
local btn4_icon = btn4:CreateTexture("myButton4","OVERLAY")

btn4:SetNormalTexture(GetActionTexture(112))
btn4:GetNormalTexture():SetScale(0.1) 
btn4:SetPushedTexture(GetActionTexture(112))
btn4:GetPushedTexture():SetScale(0.1)
btn4_icon:SetWidth(60)
btn4_icon:SetHeight(60)
btn4_icon:SetPoint("CENTER")
    btn4.text = btn4:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    btn4.text:SetPoint("BOTTOM", btn4, "TOPLEFT", 5,-12)
    local btn_hotkey4 = GetBindingKey("ACTIONBUTTON"..4)
    btn4.text:SetText(btn_hotkey4)

btn4:SetAttribute("type", "action");

btn5:SetAttribute("action", 113);
local btn5_icon = btn5:CreateTexture("myButton5","OVERLAY")

btn5:SetNormalTexture(GetActionTexture(113))
btn5:GetNormalTexture():SetScale(0.1) 
btn5:SetPushedTexture(GetActionTexture(115))
btn5:GetPushedTexture():SetScale(0.1)
btn5_icon:SetWidth(60)
btn5_icon:SetHeight(60)
btn5_icon:SetPoint("CENTER")


btn5:SetText("F")
btn5.text = btn5:CreateFontString(nil, "OVERLAY", "GameFontNormal")
btn5.text:SetPoint("BOTTOM", btn5, "TOPLEFT", 5,-12)
local btn_hotkey5 = GetBindingKey("ACTIONBUTTON"..5)
btn5.text:SetText(btn_hotkey5)

btn5:SetAttribute("type", "action");




---
if GetShapeshiftForm() == 4 then
    alt:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
    alt:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);
    shift:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
    shift:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
    ctrl:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
    ctrl:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  

    btn:SetAttribute("action", 109);

    btn:SetNormalTexture(GetActionTexture(109))
    btn:SetPushedTexture(GetActionTexture(109))

    if (not btn:GetNormalTexture() == nil ) then
        btn:GetNormalTexture():SetScale(0.1) 
        btn:GetPushedTexture():SetScale(0.1)
    end 
    btn:SetAttribute("type", "action");
    btn:SetText("Q")

    btn2:SetAttribute("action", 110);

    btn2:SetNormalTexture(GetActionTexture(110))
    btn2:SetPushedTexture(GetActionTexture(110))
    if (not btn2:GetNormalTexture() == nil ) then
        btn2:GetNormalTexture():SetScale(0.1) 
        btn2:GetPushedTexture():SetScale(0.1)
        end
    btn2:SetAttribute("type", "action");
    btn2:SetText("E")


    btn3:SetAttribute("action", 111);
    btn3:SetNormalTexture(GetActionTexture(111))
    btn3:SetPushedTexture(GetActionTexture(111))
    if (not btn3:GetNormalTexture() == nil ) then
        btn3:GetNormalTexture():SetScale(0.1) 
        btn3:GetPushedTexture():SetScale(0.1)    
    end
    btn3:SetAttribute("type", "action");
    btn3:SetText("R")



    btn4:SetAttribute("action", 112);
    btn4:SetNormalTexture(GetActionTexture(112))
    btn4:SetPushedTexture(GetActionTexture(112))
    if (not btn4:GetNormalTexture() == nil ) then
        btn4:GetNormalTexture():SetScale(0.1) 
        btn4:GetPushedTexture():SetScale(0.1)    
    end
    btn4:SetAttribute("type", "action");
    btn4:SetText("T")

    btn5:SetAttribute("action", 113);

    btn5:SetNormalTexture(GetActionTexture(113))
    btn5:SetPushedTexture(GetActionTexture(113))
    if (not btn5:GetNormalTexture() == nil ) then
        btn5:GetNormalTexture():SetScale(0.1) 
        btn5:GetPushedTexture():SetScale(0.1)    
    end
    btn5:SetAttribute("type", "action");
    btn5:SetText("F")

    
    elseif GetShapeshiftForm() == 0  or GetShapeshiftForm() == 5 or GetShapeshiftForm() == 6 or GetShapeshiftForm() == 3 then
    alt:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
    alt:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);
    shift:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
    shift:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
    ctrl:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
    ctrl:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  

    btn:SetAttribute("action", 1);

    btn:SetNormalTexture(GetActionTexture(1))
    btn:SetPushedTexture(GetActionTexture(1))
        if (not btn:GetNormalTexture() == nil ) then
            btn:GetNormalTexture():SetScale(0.1)
            btn:GetPushedTexture():SetScale(0.1) 
        end 
    btn:SetAttribute("type", "action");
    btn:SetText("Q")

    btn2:SetAttribute("action", 2);

    btn2:SetNormalTexture(GetActionTexture(2))
    btn2:SetPushedTexture(GetActionTexture(2))
        if (not btn2:GetNormalTexture() == nil ) then
            btn2:GetNormalTexture():SetScale(0.1)
            btn2:GetPushedTexture():SetScale(0.1) 
        end
    btn2:SetAttribute("type", "action");
    btn2:SetText("E")


    btn3:SetAttribute("action", 3);
    btn3:SetNormalTexture(GetActionTexture(3))
    btn3:SetPushedTexture(GetActionTexture(3))
        if (not btn3:GetNormalTexture() == nil ) then
            btn3:GetNormalTexture():SetScale(0.1)
            btn3:GetPushedTexture():SetScale(0.1) 
        end
    btn3:SetAttribute("type", "action");
    btn3:SetText("R")



    btn4:SetAttribute("action", 4);
    btn4:SetNormalTexture(GetActionTexture(4))
    btn4:SetPushedTexture(GetActionTexture(4))
        if (not btn4:GetNormalTexture() == nil ) then
            btn4:GetNormalTexture():SetScale(0.1)
            btn4:GetPushedTexture():SetScale(0.1) 
        end
    btn4:SetAttribute("type", "action");
    btn4:SetText("T")

    btn5:SetAttribute("action", 5);

    btn5:SetNormalTexture(GetActionTexture(5))
    btn5:SetPushedTexture(GetActionTexture(5))
        if (not btn5:GetNormalTexture() == nil ) then
            btn5:GetNormalTexture():SetScale(0.1)
            btn5:GetPushedTexture():SetScale(0.1) 
        end
    btn5:SetAttribute("type", "action");
    btn5:SetText("F")

    

    elseif GetShapeshiftForm() == 1 then
        alt:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
    alt:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);
    shift:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
    shift:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
    ctrl:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
    ctrl:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  

    btn:SetAttribute("action", 97);

    btn:SetNormalTexture(GetActionTexture(97))
    btn:SetPushedTexture(GetActionTexture(97))
        if (not btn:GetNormalTexture() == nil ) then
            btn:GetNormalTexture():SetScale(0.1)
            btn:GetPushedTexture():SetScale(0.1) 
        end 
    btn:SetAttribute("type", "action");
    btn:SetText("Q")

    btn2:SetAttribute("action", 98);

    btn2:SetNormalTexture(GetActionTexture(98))
    btn2:SetPushedTexture(GetActionTexture(98))
        if (not btn2:GetNormalTexture() == nil ) then
            btn2:GetNormalTexture():SetScale(0.1)
            btn2:GetPushedTexture():SetScale(0.1) 
        end
    btn2:SetAttribute("type", "action");
    btn2:SetText("E")

    btn3:SetAttribute("action", 99);
    btn3:SetNormalTexture(GetActionTexture(99))
    btn3:SetPushedTexture(GetActionTexture(99))
        if (not btn3:GetNormalTexture() == nil ) then
            btn3:GetNormalTexture():SetScale(0.1)
            btn3:GetPushedTexture():SetScale(0.1) 
        end
    btn3:SetAttribute("type", "action");
    btn3:SetText("R")



    btn4:SetAttribute("action", 100);
    btn4:SetNormalTexture(GetActionTexture(100))
    btn4:SetPushedTexture(GetActionTexture(100))
        if (not btn4:GetNormalTexture() == nil ) then
            btn4:GetNormalTexture():SetScale(0.1)
            btn4:GetPushedTexture():SetScale(0.1) 
        end
    btn4:SetAttribute("type", "action");
    btn4:SetText("T")

    btn5:SetAttribute("action", 101);

    btn5:SetNormalTexture(GetActionTexture(101))
    btn5:SetPushedTexture(GetActionTexture(101))
        if (not btn5:GetNormalTexture() == nil ) then
            btn5:GetNormalTexture():SetScale(0.1)
            btn5:GetPushedTexture():SetScale(0.1) 
        end
    btn5:SetAttribute("type", "action");
    btn5:SetText("F")



    --ActionBar page 1 Cat Form: slots 73 to 84
    --ActionBar page 1 Prowl: slots 85 to 96

    elseif GetShapeshiftForm() == 2 then
            if IsStealthed() == 1 then
                alt:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
                alt:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);
                shift:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
                shift:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
                ctrl:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
                ctrl:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
            
                btn:SetAttribute("action", 85);

                btn:SetNormalTexture(GetActionTexture(85))
                btn:SetPushedTexture(GetActionTexture(85))
                    if (not btn:GetNormalTexture() == nil ) then
                        btn:GetNormalTexture():SetScale(0.1)
                        btn:GetPushedTexture():SetScale(0.1) 
                    end 
                btn:SetAttribute("type", "action");
                btn:SetText("Q")
            
                btn2:SetAttribute("action", 86);

                btn2:SetNormalTexture(GetActionTexture(86))
                btn2:SetPushedTexture(GetActionTexture(86))
                    if (not btn2:GetNormalTexture() == nil ) then
                        btn2:GetNormalTexture():SetScale(0.1)
                        btn2:GetPushedTexture():SetScale(0.1) 
                    end
                btn2:SetAttribute("type", "action");
                btn2:SetText("E")

            
                btn3:SetAttribute("action", 87);
                btn3:SetNormalTexture(GetActionTexture(87))
                btn3:SetPushedTexture(GetActionTexture(87))
                    if (not btn3:GetNormalTexture() == nil ) then
                        btn3:GetNormalTexture():SetScale(0.1)
                        btn3:GetPushedTexture():SetScale(0.1) 
                    end
                btn3:SetAttribute("type", "action");
                btn3:SetText("R")
            
            
            
                btn4:SetAttribute("action", 88);
                btn4:SetNormalTexture(GetActionTexture(88))
                btn4:SetPushedTexture(GetActionTexture(88))
                    if (not btn4:GetNormalTexture() == nil ) then
                        btn4:GetNormalTexture():SetScale(0.1)
                        btn4:GetPushedTexture():SetScale(0.1) 
                    end
                btn4:SetAttribute("type", "action");
                btn4:SetText("T")
            
                btn5:SetAttribute("action", 89);
                
                btn5:SetNormalTexture(GetActionTexture(89))
                btn5:SetPushedTexture(GetActionTexture(89))
                    if (not btn5:GetNormalTexture() == nil ) then
                        btn5:GetNormalTexture():SetScale(0.1)
                        btn5:GetPushedTexture():SetScale(0.1) 
                    end
                btn5:SetAttribute("type", "action");
                btn5:SetText("F")
            
            else
                alt:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
    alt:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);
    shift:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
    shift:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
    ctrl:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
    ctrl:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  

    btn:SetAttribute("action", 73);

    btn:SetNormalTexture(GetActionTexture(73))
    btn:SetPushedTexture(GetActionTexture(73))
        if (not btn:GetNormalTexture() == nil ) then
            btn:GetNormalTexture():SetScale(0.1)
            btn:GetPushedTexture():SetScale(0.1) 
        end 
    btn:SetAttribute("type", "action");
    btn:SetText("Q")

    btn2:SetAttribute("action", 74);

    btn2:SetNormalTexture(GetActionTexture(74))
    btn2:SetPushedTexture(GetActionTexture(74))
        if (not btn2:GetNormalTexture() == nil ) then
            btn2:GetNormalTexture():SetScale(0.1)
            btn2:GetPushedTexture():SetScale(0.1) 
        end
    btn2:SetAttribute("type", "action");
    btn2:SetText("E")


    btn3:SetAttribute("action", 75);
    btn3:SetNormalTexture(GetActionTexture(75))
    btn3:SetPushedTexture(GetActionTexture(75))
        if (not btn3:GetNormalTexture() == nil ) then
            btn3:GetNormalTexture():SetScale(0.1)
            btn3:GetPushedTexture():SetScale(0.1) 
        end
    btn3:SetAttribute("type", "action");
    btn3:SetText("R")



    btn4:SetAttribute("action", 76);
    btn4:SetNormalTexture(GetActionTexture(76))
    btn4:SetPushedTexture(GetActionTexture(76))
        if (not btn4:GetNormalTexture() == nil ) then
            btn4:GetNormalTexture():SetScale(0.1)
            btn4:GetPushedTexture():SetScale(0.1) 
        end
    btn4:SetAttribute("type", "action");
    btn4:SetText("T")

    btn5:SetAttribute("action", 77);

    btn5:SetNormalTexture(GetActionTexture(77))
    btn5:SetPushedTexture(GetActionTexture(77))
        if (not btn5:GetNormalTexture() == nil ) then
            btn5:GetNormalTexture():SetScale(0.1)
            btn5:GetPushedTexture():SetScale(0.1) 
        end
    btn5:SetAttribute("type", "action");
    btn5:SetText("F")

            end
    else
    end  
elseif(englishClass == "PALADIN" or englishClass == "DRUID") then


btn:SetNormalTexture(GetActionTexture(1))

btn:GetNormalTexture():SetScale(0.1) 
btn_icon:SetWidth(60)
btn_icon:SetHeight(60)
btn_icon:SetPoint("CENTER")
btn.text = btn:CreateFontString(nil, "OVERLAY", "GameFontNormal")
btn.text:SetPoint("BOTTOM", btn, "TOPLEFT", 5,-12)
local btn_hotkey = GetBindingKey("ACTIONBUTTON"..1)
btn:SetButtonState(btn:GetButtonState("ACTIONBUTTON"..1))
btn.text:SetText(btn_hotkey)
btn:SetPushedTexture(GetActionTexture(1))
btn:GetPushedTexture():SetScale(0.1)







btn:SetAttribute("type", "action");


btn2:SetAttribute("action", 2);

local btn2_icon = btn2:CreateTexture("myButton2","OVERLAY")

btn2:SetNormalTexture(GetActionTexture(2))
btn2:GetNormalTexture():SetScale(0.1) 
btn2:SetPushedTexture(GetActionTexture(2))
btn2:GetPushedTexture():SetScale(0.1) 

btn2_icon:SetWidth(60)
btn2_icon:SetHeight(60)
btn2_icon:SetPoint("CENTER")
btn2.text = btn2:CreateFontString(nil, "OVERLAY", "GameFontNormal")
btn2.text:SetPoint("BOTTOM", btn2, "TOPLEFT", 5,-12)
local btn_hotkey2 = GetBindingKey("ACTIONBUTTON"..2)
btn2.text:SetText(btn_hotkey2)

btn2:SetAttribute("type", "action");


btn3:SetAttribute("action", 3);
local btn3_icon = btn3:CreateTexture("myButton3","OVERLAY")

btn3:SetNormalTexture(GetActionTexture(3))
btn3:GetNormalTexture():SetScale(0.1)
btn3:SetPushedTexture(GetActionTexture(3))
btn3:GetPushedTexture():SetScale(0.1) 
btn3_icon:SetWidth(60)
btn3_icon:SetHeight(60)
btn3_icon:SetPoint("CENTER")
btn3.text = btn3:CreateFontString(nil, "OVERLAY", "GameFontNormal")
btn3.text:SetPoint("BOTTOM", btn3, "TOPLEFT", 5,-12)
local btn_hotkey3 = GetBindingKey("ACTIONBUTTON"..3)
btn3.text:SetText(btn_hotkey3)

btn3:SetAttribute("type", "action");




btn4:SetAttribute("action", 4);
local btn4_icon = btn4:CreateTexture("myButton4","OVERLAY")

btn4:SetNormalTexture(GetActionTexture(4))

btn4:SetPushedTexture(GetActionTexture(4))
btn4:GetPushedTexture():SetScale(0.1)
btn4_icon:SetWidth(60)
btn4_icon:SetHeight(60)
btn4_icon:SetPoint("CENTER")
    btn4.text = btn4:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    btn4.text:SetPoint("BOTTOM", btn4, "TOPLEFT", 5,-12)
    local btn_hotkey4 = GetBindingKey("ACTIONBUTTON"..4)
    btn4.text:SetText(btn_hotkey4)

btn4:SetAttribute("type", "action");

btn5:SetAttribute("action", 5);
local btn5_icon = btn5:CreateTexture("myButton5","OVERLAY")

btn5:SetNormalTexture(GetActionTexture(5))
btn5:GetNormalTexture():SetScale(0.1) 
btn5:SetPushedTexture(GetActionTexture(5))
btn5:GetPushedTexture():SetScale(0.1)
btn5_icon:SetWidth(60)
btn5_icon:SetHeight(60)
btn5_icon:SetPoint("CENTER")


btn5:SetText("F")
btn5.text = btn5:CreateFontString(nil, "OVERLAY", "GameFontNormal")
btn5.text:SetPoint("BOTTOM", btn5, "TOPLEFT", 5,-12)
local btn_hotkey5 = GetBindingKey("ACTIONBUTTON"..5)


btn5:SetAttribute("type", "action");






 

    
    if GetShapeshiftForm() == 0  or GetShapeshiftForm() == 5 or GetShapeshiftForm() == 6 or GetShapeshiftForm() == 3 then
    alt:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
    alt:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);
    shift:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
    shift:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
    ctrl:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
    ctrl:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  

    btn:SetAttribute("action", 1);

    btn:SetNormalTexture(GetActionTexture(1))
    btn:SetPushedTexture(GetActionTexture(1))
        if (not btn:GetNormalTexture() == nil ) then
            btn:GetNormalTexture():SetScale(0.1)
            btn:GetPushedTexture():SetScale(0.1) 
        end 
    btn:SetAttribute("type", "action");
    btn:SetText("Q")

    btn2:SetAttribute("action", 2);

    btn2:SetNormalTexture(GetActionTexture(2))
    btn2:SetPushedTexture(GetActionTexture(2))
        if (not btn2:GetNormalTexture() == nil ) then
            btn2:GetNormalTexture():SetScale(0.1)
            btn2:GetPushedTexture():SetScale(0.1) 
        end
    btn2:SetAttribute("type", "action");
    btn2:SetText("E")


    btn3:SetAttribute("action", 3);
    btn3:SetNormalTexture(GetActionTexture(3))
    btn3:SetPushedTexture(GetActionTexture(3))
        if (not btn3:GetNormalTexture() == nil ) then
            btn3:GetNormalTexture():SetScale(0.1)
            btn3:GetPushedTexture():SetScale(0.1) 
        end
    btn3:SetAttribute("type", "action");
    btn3:SetText("R")



    btn4:SetAttribute("action", 4);
    btn4:SetNormalTexture(GetActionTexture(4))
    btn4:SetPushedTexture(GetActionTexture(4))
        if (not btn4:GetNormalTexture() == nil ) then
            btn4:GetNormalTexture():SetScale(0.1)
            btn4:GetPushedTexture():SetScale(0.1) 
        end
    btn4:SetAttribute("type", "action");
    btn4:SetText("T")

    btn5:SetAttribute("action", 5);

    btn5:SetNormalTexture(GetActionTexture(5))
    btn5:SetPushedTexture(GetActionTexture(5))
        if (not btn5:GetNormalTexture() == nil ) then
            btn5:GetNormalTexture():SetScale(0.1)
            btn5:GetPushedTexture():SetScale(0.1) 
        end
    btn5:SetAttribute("type", "action");
    btn5:SetText("F")


    elseif GetShapeshiftForm() == 4 then
        alt:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
        alt:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);
        shift:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
        shift:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
        ctrl:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
        ctrl:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
    
        btn:SetAttribute("action", 37);

        btn:SetNormalTexture(GetActionTexture(37))
        btn:SetPushedTexture(GetActionTexture(37))
            if (not btn:GetNormalTexture() == nil ) then
                btn:GetNormalTexture():SetScale(0.1)
                btn:GetPushedTexture():SetScale(0.1) 
            end 
        btn:SetAttribute("type", "action");
        btn:SetText("Q")
    
        btn2:SetAttribute("action", 38);

        btn2:SetNormalTexture(GetActionTexture(38))
        btn2:SetPushedTexture(GetActionTexture(38))
            if (not btn2:GetNormalTexture() == nil ) then
                btn2:GetNormalTexture():SetScale(0.1)
                btn2:GetPushedTexture():SetScale(0.1) 
            end
        btn2:SetAttribute("type", "action");
        btn2:SetText("E")

    
        btn3:SetAttribute("action", 39);
        btn3:SetNormalTexture(GetActionTexture(39))
        btn3:SetPushedTexture(GetActionTexture(39))
            if (not btn3:GetNormalTexture() == nil ) then
                btn3:GetNormalTexture():SetScale(0.1)
                btn3:GetPushedTexture():SetScale(0.1) 
            end
        btn3:SetAttribute("type", "action");
        btn3:SetText("R")
    
    
    
        btn4:SetAttribute("action", 40);
        btn4:SetNormalTexture(GetActionTexture(40))
        btn4:SetPushedTexture(GetActionTexture(40))
            if (not btn4:GetNormalTexture() == nil ) then
                btn4:GetNormalTexture():SetScale(0.1)
                btn4:GetPushedTexture():SetScale(0.1) 
            end
        btn4:SetAttribute("type", "action");
        btn4:SetText("T")
    
        btn5:SetAttribute("action", 41);
 
        btn5:SetNormalTexture(GetActionTexture(41))
        btn5:SetPushedTexture(GetActionTexture(41))
            if (not btn5:GetNormalTexture() == nil ) then
                btn5:GetNormalTexture():SetScale(0.1)
                btn5:GetPushedTexture():SetScale(0.1) 
            end
        btn5:SetAttribute("type", "action");
        btn5:SetText("F")
    

    

  
    else
    end  
end

end 

function frame:ACTIONBAR_SLOT_CHANGED(self, event, ...)

    if(classIndex == 11 or englishClass == "DRUID") then

    
    elseif( classIndex == -2 ) then
    
    if GetShapeshiftForm() == 4 then
        alt:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
        alt:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);
        shift:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
        shift:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
        ctrl:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
        ctrl:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
    
        btn:SetAttribute("action", 109);

        btn:SetNormalTexture(GetActionTexture(109))
        btn:SetPushedTexture(GetActionTexture(109))
    
        if (not btn:GetNormalTexture() == nil ) then
            btn:GetNormalTexture():SetScale(0.1) 
            btn:GetPushedTexture():SetScale(0.1)
        end 
        btn:SetAttribute("type", "action");
        btn:SetText("Q")
    
        btn2:SetAttribute("action", 110);

        btn2:SetNormalTexture(GetActionTexture(110))
        btn2:SetPushedTexture(GetActionTexture(110))
        if (not btn2:GetNormalTexture() == nil ) then
            btn2:GetNormalTexture():SetScale(0.1) 
            btn2:GetPushedTexture():SetScale(0.1)
            end
        btn2:SetAttribute("type", "action");
        btn2:SetText("E")

    
        btn3:SetAttribute("action", 111);
        btn3:SetNormalTexture(GetActionTexture(111))
        btn3:SetPushedTexture(GetActionTexture(111))
        if (not btn3:GetNormalTexture() == nil ) then
            btn3:GetNormalTexture():SetScale(0.1) 
            btn3:GetPushedTexture():SetScale(0.1)    
        end
        btn3:SetAttribute("type", "action");
        btn3:SetText("R")
    
    
    
        btn4:SetAttribute("action", 112);
        btn4:SetNormalTexture(GetActionTexture(112))
        btn4:SetPushedTexture(GetActionTexture(112))
        if (not btn4:GetNormalTexture() == nil ) then
            btn4:GetNormalTexture():SetScale(0.1) 
            btn4:GetPushedTexture():SetScale(0.1)    
        end
        btn4:SetAttribute("type", "action");
        btn4:SetText("T")
    
        btn5:SetAttribute("action", 113);

        btn5:SetNormalTexture(GetActionTexture(113))
        btn5:SetPushedTexture(GetActionTexture(113))
        if (not btn5:GetNormalTexture() == nil ) then
            btn5:GetNormalTexture():SetScale(0.1) 
            btn5:GetPushedTexture():SetScale(0.1)    
        end
        btn5:SetAttribute("type", "action");
        btn5:SetText("F")
    
        
        elseif GetShapeshiftForm() == 0  or GetShapeshiftForm() == 5 or GetShapeshiftForm() == 6 or GetShapeshiftForm() == 3 then
        alt:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
        alt:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);
        shift:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
        shift:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
        ctrl:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
        ctrl:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
    
        btn:SetAttribute("action", 1);

        btn:SetNormalTexture(GetActionTexture(1))
        btn:SetPushedTexture(GetActionTexture(1))
            if (not btn:GetNormalTexture() == nil ) then
                btn:GetNormalTexture():SetScale(0.1)
                btn:GetPushedTexture():SetScale(0.1) 
            end 
        btn:SetAttribute("type", "action");
        btn:SetText("Q")
    
        btn2:SetAttribute("action", 2);

        btn2:SetNormalTexture(GetActionTexture(2))
        btn2:SetPushedTexture(GetActionTexture(2))
            if (not btn2:GetNormalTexture() == nil ) then
                btn2:GetNormalTexture():SetScale(0.1)
                btn2:GetPushedTexture():SetScale(0.1) 
            end
        btn2:SetAttribute("type", "action");
        btn2:SetText("E")

    
        btn3:SetAttribute("action", 3);
        btn3:SetNormalTexture(GetActionTexture(3))
        btn3:SetPushedTexture(GetActionTexture(3))
            if (not btn3:GetNormalTexture() == nil ) then
                btn3:GetNormalTexture():SetScale(0.1)
                btn3:GetPushedTexture():SetScale(0.1) 
            end
        btn3:SetAttribute("type", "action");
        btn3:SetText("R")
    
    
    
        btn4:SetAttribute("action", 4);
        btn4:SetNormalTexture(GetActionTexture(4))
        btn4:SetPushedTexture(GetActionTexture(4))
            if (not btn4:GetNormalTexture() == nil ) then
                btn4:GetNormalTexture():SetScale(0.1)
                btn4:GetPushedTexture():SetScale(0.1) 
            end
        btn4:SetAttribute("type", "action");
        btn4:SetText("T")
    
        btn5:SetAttribute("action", 5);

        btn5:SetNormalTexture(GetActionTexture(5))
        btn5:SetPushedTexture(GetActionTexture(5))
            if (not btn5:GetNormalTexture() == nil ) then
                btn5:GetNormalTexture():SetScale(0.1)
                btn5:GetPushedTexture():SetScale(0.1) 
            end
        btn5:SetAttribute("type", "action");
        btn5:SetText("F")
    
        
    
        elseif GetShapeshiftForm() == 1 then
            alt:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
        alt:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);
        shift:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
        shift:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
        ctrl:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
        ctrl:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
    
        btn:SetAttribute("action", 97);

        btn:SetNormalTexture(GetActionTexture(97))
        btn:SetPushedTexture(GetActionTexture(97))
            if (not btn:GetNormalTexture() == nil ) then
                btn:GetNormalTexture():SetScale(0.1)
                btn:GetPushedTexture():SetScale(0.1) 
            end 
        btn:SetAttribute("type", "action");
        btn:SetText("Q")
    
        btn2:SetAttribute("action", 98);

        btn2:SetNormalTexture(GetActionTexture(98))
        btn2:SetPushedTexture(GetActionTexture(98))
            if (not btn2:GetNormalTexture() == nil ) then
                btn2:GetNormalTexture():SetScale(0.1)
                btn2:GetPushedTexture():SetScale(0.1) 
            end
        btn2:SetAttribute("type", "action");
        btn2:SetText("E")

    
        btn3:SetAttribute("action", 99);
        btn3:SetNormalTexture(GetActionTexture(99))
        btn3:SetPushedTexture(GetActionTexture(99))
            if (not btn3:GetNormalTexture() == nil ) then
                btn3:GetNormalTexture():SetScale(0.1)
                btn3:GetPushedTexture():SetScale(0.1) 
            end
        btn3:SetAttribute("type", "action");
        btn3:SetText("R")
    
    
    
        btn4:SetAttribute("action", 100);
        btn4:SetNormalTexture(GetActionTexture(100))
        btn4:SetPushedTexture(GetActionTexture(100))
            if (not btn4:GetNormalTexture() == nil ) then
                btn4:GetNormalTexture():SetScale(0.1)
                btn4:GetPushedTexture():SetScale(0.1) 
            end
        btn4:SetAttribute("type", "action");
        btn4:SetText("T")
    
        btn5:SetAttribute("action", 101);

        btn5:SetNormalTexture(GetActionTexture(101))
        btn5:SetPushedTexture(GetActionTexture(101))
            if (not btn5:GetNormalTexture() == nil ) then
                btn5:GetNormalTexture():SetScale(0.1)
                btn5:GetPushedTexture():SetScale(0.1) 
            end
        btn5:SetAttribute("type", "action");
        btn5:SetText("F")
    
    
    
        --ActionBar page 1 Cat Form: slots 73 to 84
        --ActionBar page 1 Prowl: slots 85 to 96
    
        elseif GetShapeshiftForm() == 2 then
                if IsStealthed() == 1 then
                    alt:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
                    alt:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);
                    shift:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
                    shift:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
                    ctrl:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
                    ctrl:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
                
                    btn:SetAttribute("action", 85);

                    btn:SetNormalTexture(GetActionTexture(85))
                    btn:SetPushedTexture(GetActionTexture(85))
                        if (not btn:GetNormalTexture() == nil ) then
                            btn:GetNormalTexture():SetScale(0.1)
                            btn:GetPushedTexture():SetScale(0.1) 
                        end 
                    btn:SetAttribute("type", "action");
                    btn:SetText("Q")
                
                    btn2:SetAttribute("action", 86);

                    btn2:SetNormalTexture(GetActionTexture(86))
                    btn2:SetPushedTexture(GetActionTexture(86))
                        if (not btn2:GetNormalTexture() == nil ) then
                            btn2:GetNormalTexture():SetScale(0.1)
                            btn2:GetPushedTexture():SetScale(0.1) 
                        end
                    btn2:SetAttribute("type", "action");
                    btn2:SetText("E")

                
                    btn3:SetAttribute("action", 87);
                    btn3:SetNormalTexture(GetActionTexture(87))
                    btn3:SetPushedTexture(GetActionTexture(87))
                        if (not btn3:GetNormalTexture() == nil ) then
                            btn3:GetNormalTexture():SetScale(0.1)
                            btn3:GetPushedTexture():SetScale(0.1) 
                        end
                    btn3:SetAttribute("type", "action");
                    btn3:SetText("R")
                
                
                
                    btn4:SetAttribute("action", 88);
                    btn4:SetNormalTexture(GetActionTexture(88))
                    btn4:SetPushedTexture(GetActionTexture(88))
                        if (not btn4:GetNormalTexture() == nil ) then
                            btn4:GetNormalTexture():SetScale(0.1)
                            btn4:GetPushedTexture():SetScale(0.1) 
                        end
                    btn4:SetAttribute("type", "action");
                    btn4:SetText("T")
                
                    btn5:SetAttribute("action", 89);

                    btn5:SetNormalTexture(GetActionTexture(89))
                    btn5:SetPushedTexture(GetActionTexture(89))
                        if (not btn5:GetNormalTexture() == nil ) then
                            btn5:GetNormalTexture():SetScale(0.1)
                            btn5:GetPushedTexture():SetScale(0.1) 
                        end
                    btn5:SetAttribute("type", "action");
                    btn5:SetText("F")
                
                else
                    alt:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
        alt:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);
        shift:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
        shift:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
        ctrl:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
        ctrl:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
    
        btn:SetAttribute("action", 73);

        btn:SetNormalTexture(GetActionTexture(73))
        btn:SetPushedTexture(GetActionTexture(73))
            if (not btn:GetNormalTexture() == nil ) then
                btn:GetNormalTexture():SetScale(0.1)
                btn:GetPushedTexture():SetScale(0.1) 
            end 
        btn:SetAttribute("type", "action");
        btn:SetText("Q")
    
        btn2:SetAttribute("action", 74);

        btn2:SetNormalTexture(GetActionTexture(74))
        btn2:SetPushedTexture(GetActionTexture(74))
            if (not btn2:GetNormalTexture() == nil ) then
                btn2:GetNormalTexture():SetScale(0.1)
                btn2:GetPushedTexture():SetScale(0.1) 
            end
        btn2:SetAttribute("type", "action");
        btn2:SetText("E")

        btn3:SetAttribute("action", 75);
        btn3:SetNormalTexture(GetActionTexture(75))
        btn3:SetPushedTexture(GetActionTexture(75))
            if (not btn3:GetNormalTexture() == nil ) then
                btn3:GetNormalTexture():SetScale(0.1)
                btn3:GetPushedTexture():SetScale(0.1) 
            end
        btn3:SetAttribute("type", "action");
        btn3:SetText("R")
    
    
    
        btn4:SetAttribute("action", 76);
        btn4:SetNormalTexture(GetActionTexture(76))
        btn4:SetPushedTexture(GetActionTexture(76))
            if (not btn4:GetNormalTexture() == nil ) then
                btn4:GetNormalTexture():SetScale(0.1)
                btn4:GetPushedTexture():SetScale(0.1) 
            end
        btn4:SetAttribute("type", "action");
        btn4:SetText("T")
    
        btn5:SetAttribute("action", 77);

        btn5:SetNormalTexture(GetActionTexture(77))
        btn5:SetPushedTexture(GetActionTexture(77))
            if (not btn5:GetNormalTexture() == nil ) then
                btn5:GetNormalTexture():SetScale(0.1)
                btn5:GetPushedTexture():SetScale(0.1) 
            end
        btn5:SetAttribute("type", "action");
        btn5:SetText("F")
    
                end
        else
        end  
    
    
    end 
    
end

btn5CD = CreateFrame("COOLDOWN","btn5CD", btn5, btn5)

btn4CD = CreateFrame("COOLDOWN","btn4CD", btn4, btn4)

function frame:ACTIONBAR_UPDATE_COOLDOWN(self, event, ...)

    




end

function frame:UPDATE_SHAPESHIFT_FORMS(self,event,...)

    nStance = GetShapeshiftForm();

    if("UPDATE_SHAPESHIFT_FORMS" == nil) then
    btn:SetAttribute("action", 1);


    btn:SetNormalTexture(GetActionTexture(1))
    btn:GetNormalTexture():SetScale(0.1) 
    btn:SetAttribute("type", "action");
    btn:SetText("Q")
    
    btn2:SetAttribute("action", 2);

    btn2:SetNormalTexture(GetActionTexture(2))
    btn2:GetNormalTexture():SetScale(0.1) 
    btn2:SetAttribute("type", "action");
    btn2:SetText("E")

    
    btn3:SetAttribute("action", 3);
    btn3:SetNormalTexture(GetActionTexture(3))
    btn3:GetNormalTexture():SetScale(0.1) 
    btn3:SetAttribute("type", "action");
    btn3:SetText("R")
    
    
    
    btn4:SetAttribute("action", 4);
    btn4:SetNormalTexture(GetActionTexture(4))
    btn4:GetNormalTexture():SetScale(0.1) 
    btn4:SetAttribute("type", "action");
    btn4:SetText("T")
    
    btn5:SetAttribute("action", 5);

    btn5:SetNormalTexture(GetActionTexture(5))
    btn5:GetNormalTexture():SetScale(0.1) 
    btn5:SetAttribute("type", "action");
    btn5:SetText("F")
elseif GetShapeshiftForm() == 4 then
    alt:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
    alt:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);
    shift:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
    shift:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
    ctrl:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
    ctrl:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  

    btn:SetAttribute("action", 37);

    btn:SetNormalTexture(GetActionTexture(37))
    btn:SetPushedTexture(GetActionTexture(37))
        if (not btn:GetNormalTexture() == nil ) then
            btn:GetNormalTexture():SetScale(0.1)
            btn:GetPushedTexture():SetScale(0.1) 
        end 
    btn:SetAttribute("type", "action");
    btn:SetText("Q")

    btn2:SetAttribute("action", 38);
    
    btn2:SetNormalTexture(GetActionTexture(38))
    btn2:SetPushedTexture(GetActionTexture(38))
        if (not btn2:GetNormalTexture() == nil ) then
            btn2:GetNormalTexture():SetScale(0.1)
            btn2:GetPushedTexture():SetScale(0.1) 
        end
    btn2:SetAttribute("type", "action");
    btn2:SetText("E")


    btn3:SetAttribute("action", 39);
    btn3:SetNormalTexture(GetActionTexture(39))
    btn3:SetPushedTexture(GetActionTexture(39))
        if (not btn3:GetNormalTexture() == nil ) then
            btn3:GetNormalTexture():SetScale(0.1)
            btn3:GetPushedTexture():SetScale(0.1) 
        end
    btn3:SetAttribute("type", "action");
    btn3:SetText("R")



    btn4:SetAttribute("action", 40);
    btn4:SetNormalTexture(GetActionTexture(40))
    btn4:SetPushedTexture(GetActionTexture(40))
        if (not btn4:GetNormalTexture() == nil ) then
            btn4:GetNormalTexture():SetScale(0.1)
            btn4:GetPushedTexture():SetScale(0.1) 
        end
    btn4:SetAttribute("type", "action");
    btn4:SetText("T")

    btn5:SetAttribute("action", 41);

    btn5:SetNormalTexture(GetActionTexture(41))
    btn5:SetPushedTexture(GetActionTexture(41))
        if (not btn5:GetNormalTexture() == nil ) then
            btn5:GetNormalTexture():SetScale(0.1)
            btn5:GetPushedTexture():SetScale(0.1) 
        end
    btn5:SetAttribute("type", "action");
    btn5:SetText("F")

    end



    if GetShapeshiftForm() == 4 then
      
        end

--[[
        Druid Bonus Action Bars

        ActionBar page 1 Cat Form: slots 73 to 84
        ActionBar page 1 Prowl: slots 85 to 96
        ActionBar page 1 Bear Form: slots 97 to 108
        ActionBar page 1 Moonkin Form: slots 109 to 120

        Druid stances
        0 = humanoid universal across all classes
        1 = Bear/Dire Bear Form
        2 = Cat Form
        3 = Travel Form
        4 = Moonkin Form (balance) / Flight Form (resto/feral/guardian)
        5 = Tree Form (resto)
        6 = Stag Form (balance) / Tree Form (resto)


        ]]


        



            if GetShapeshiftForm() == 0  or GetShapeshiftForm() == 5 or GetShapeshiftForm() == 6 or GetShapeshiftForm() == 3 or GetShapeshiftForm() == 4 then
        alt:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
        alt:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);
        shift:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
        shift:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
        ctrl:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
        ctrl:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
    
        btn:SetAttribute("action", 1);

        btn:SetNormalTexture(GetActionTexture(1))
        btn:SetPushedTexture(GetActionTexture(1))
            if (not btn:GetNormalTexture() == nil ) then
                btn:GetNormalTexture():SetScale(0.1)
                btn:GetPushedTexture():SetScale(0.1) 
            end 
        btn:SetAttribute("type", "action");
        btn:SetText("Q")
    
        btn2:SetAttribute("action", 2);

        btn2:SetNormalTexture(GetActionTexture(2))
        btn2:SetPushedTexture(GetActionTexture(2))
            if (not btn2:GetNormalTexture() == nil ) then
                btn2:GetNormalTexture():SetScale(0.1)
                btn2:GetPushedTexture():SetScale(0.1) 
            end
        btn2:SetAttribute("type", "action");
        btn2:SetText("E")

    
        btn3:SetAttribute("action", 3);
        btn3:SetNormalTexture(GetActionTexture(3))
        btn3:SetPushedTexture(GetActionTexture(3))
            if (not btn3:GetNormalTexture() == nil ) then
                btn3:GetNormalTexture():SetScale(0.1)
                btn3:GetPushedTexture():SetScale(0.1) 
            end
        btn3:SetAttribute("type", "action");
        btn3:SetText("R")
    
    
    
        btn4:SetAttribute("action", 4);
        btn4:SetNormalTexture(GetActionTexture(4))
        btn4:SetPushedTexture(GetActionTexture(4))
            if (not btn4:GetNormalTexture() == nil ) then
                btn4:GetNormalTexture():SetScale(0.1)
                btn4:GetPushedTexture():SetScale(0.1) 
            end
        btn4:SetAttribute("type", "action");
        btn4:SetText("T")
    
        btn5:SetAttribute("action", 5);
 
        btn5:SetNormalTexture(GetActionTexture(5))
        btn5:SetPushedTexture(GetActionTexture(5))
            if (not btn5:GetNormalTexture() == nil ) then
                btn5:GetNormalTexture():SetScale(0.1)
                btn5:GetPushedTexture():SetScale(0.1) 
            end
        btn5:SetAttribute("type", "action");
        btn5:SetText("F")
    
    elseif GetShapeshiftForm() == 4 then
        alt:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
        alt:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);
        shift:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
        shift:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
        ctrl:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
        ctrl:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
    
        btn:SetAttribute("action", 1);

        btn:SetNormalTexture(GetActionTexture(1))
        btn:SetPushedTexture(GetActionTexture(1))
            if (not btn:GetNormalTexture() == nil ) then
                btn:GetNormalTexture():SetScale(0.1)
                btn:GetPushedTexture():SetScale(0.1) 
            end 
        btn:SetAttribute("type", "action");
        btn:SetText("Q")
    
        btn2:SetAttribute("action", 2);

        btn2:SetNormalTexture(GetActionTexture(2))
        btn2:SetPushedTexture(GetActionTexture(2))
            if (not btn2:GetNormalTexture() == nil ) then
                btn2:GetNormalTexture():SetScale(0.1)
                btn2:GetPushedTexture():SetScale(0.1) 
            end
        btn2:SetAttribute("type", "action");
        btn2:SetText("E")

    
        btn3:SetAttribute("action", 3);
        btn3:SetNormalTexture(GetActionTexture(3))
        btn3:SetPushedTexture(GetActionTexture(3))
            if (not btn3:GetNormalTexture() == nil ) then
                btn3:GetNormalTexture():SetScale(0.1)
                btn3:GetPushedTexture():SetScale(0.1) 
            end
        btn3:SetAttribute("type", "action");
        btn3:SetText("R")
    
    
    
        btn4:SetAttribute("action", 4);
        btn4:SetNormalTexture(GetActionTexture(4))
        btn4:SetPushedTexture(GetActionTexture(4))
            if (not btn4:GetNormalTexture() == nil ) then
                btn4:GetNormalTexture():SetScale(0.1)
                btn4:GetPushedTexture():SetScale(0.1) 
            end
        btn4:SetAttribute("type", "action");
        btn4:SetText("T")
    
        btn5:SetAttribute("action", 5);

        btn5:SetNormalTexture(GetActionTexture(5))
        btn5:SetPushedTexture(GetActionTexture(5))
            if (not btn5:GetNormalTexture() == nil ) then
                btn5:GetNormalTexture():SetScale(0.1)
                btn5:GetPushedTexture():SetScale(0.1) 
            end
        btn5:SetAttribute("type", "action");
        btn5:SetText("F")
        
    

        else
        end  
    
    
    


end

 






frame:SetScript("OnEvent", function(self, event, ...)
    return self[event] and self[event](self, ...)
end)



function frame:MODIFIER_STATE_CHANGED(key, state)
    
if (englishClass == "DRUID") then
-- new code first

--[[
        Druid Bonus Action Bars

        ActionBar page 1 Cat Form: slots 73 to 84
        ActionBar page 1 Prowl: slots 85 to 96
        ActionBar page 1 Bear Form: slots 97 to 108
        ActionBar page 1 Moonkin Form: slots 109 to 120

        Druid stances
        0 = humanoid universal across all classes
        1 = Bear/Dire Bear Form
        2 = Cat Form
        3 = Travel Form
        4 = Moonkin Form (balance) / Flight Form (resto/feral/guardian)
        5 = Tree Form (resto)
        6 = Stag Form (balance) / Tree Form (resto)


        ]]



if state == 1 and (key == "LALT" or key == "RALT") then
    alt:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Down.blp")
alt:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);   
shift:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
shift:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
ctrl:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
ctrl:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);



elseif state == 1 and (key == "LSHIFT" or key == "RSHIFT") then
alt:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
alt:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);   
shift:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Down.blp")
shift:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
ctrl:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
ctrl:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  




elseif state == 1 and (key == "LCTRL" or key == "RCTRL") then
ctrl:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Down.blp")
ctrl:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  

shift:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
shift:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
alt:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
alt:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  





else
ctrl:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
ctrl:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  

shift:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
shift:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
alt:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
alt:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  


end





    
    elseif(englishClass == "PALADIN") then
        if state == 1 and (key == "LALT" or key == "RALT") then
            alt:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Down.blp")
    alt:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);   
    shift:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
    shift:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
    ctrl:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
    ctrl:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);

    
    elseif state == 1 and (key == "LSHIFT" or key == "RSHIFT") then
    alt:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
    alt:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);   
    shift:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Down.blp")
    shift:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
    ctrl:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
    ctrl:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  



    
    elseif state == 1 and (key == "LCTRL" or key == "RCTRL") then
    ctrl:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Down.blp")
    ctrl:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  

    shift:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
    shift:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
    alt:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
    alt:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  


   
    
    
else
    ctrl:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
    ctrl:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  

    shift:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
    shift:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  
    alt:SetNormalTexture("interface\\Buttons\\UI-Panel-Button-Up.blp")
    alt:GetNormalTexture():SetTexCoord(0,0.625,0,0.6875);  


    end

end
end




function frame:ACTIONBAR_UPDATE_COOLDOWN(self,event,...)

    ActionButton6:Hide()
    ActionButton7:Hide()
    ActionButton8:Hide()
    ActionButton9:Hide()
    ActionButton10:Hide()
    ActionButton11:Hide()
    ActionButton12:Hide()
   
   
   
   
    MultiBarBottomLeftButton1:Hide()
    MultiBarBottomLeftButton2:Hide()
    MultiBarBottomLeftButton3:Hide()
    MultiBarBottomLeftButton4:Hide()
    MultiBarBottomLeftButton5:Hide()
    MultiBarBottomRightButton1:Hide()
    MultiBarBottomRightButton2:Hide()
    MultiBarBottomRightButton3:Hide()
    MultiBarBottomRightButton4:Hide()
    MultiBarBottomRightButton5:Hide()
    MultiBarRightButton1.show = MultiBarRightButton1:Hide() 
    MultiBarRightButton2.show = MultiBarRightButton2:Hide()
    MultiBarRightButton3.show = MultiBarRightButton3:Hide()
    MultiBarRightButton4.show = MultiBarRightButton4:Hide()
    MultiBarRightButton5.show = MultiBarRightButton5:Hide()
   
    MultiBarLeftButton1:Hide()
    MultiBarLeftButton2:Hide()
    MultiBarLeftButton3:Hide()
    MultiBarLeftButton4:Hide()
    MultiBarLeftButton5:Hide()
   

end



function frame:PLAYER_XP_UPDATE(self,event,...)

end


function frame:UPDATE_EXHAUSTION () 

end

function update()

 MainMenuBarArtFrameBackground:Hide()
 MainMenuBarArtFrame.LeftEndCap:Hide()
 MainMenuBarArtFrame.PageNumber:Hide()
 MainMenuBarArtFrame.RightEndCap:Hide()
 --AchievementMicroButton:Hide()
  ActionBarDownButton:Hide()
 ActionBarUpButton:Hide() 
 --ActionButton1:SetParent(_G['myActionBar'])


 
 if(IsShiftKeyDown())then

    


elseif(IsControlKeyDown())then

    --ChangeActionBarPage(2)

    btn:Hide()
    btn2:Hide()
    btn3:Hide()
    btn4:Hide()
    btn5:Hide()

    

elseif(IsAltKeyDown())then

elseif not(IsControlKeyDown() or IsAltKeyDown() or IsShiftKeyDown())then

end 

 MultiBarRight:SetScript("OnShow",MultiBarRight.Hide); 
 MultiBarLeft:SetScript("OnShow",MultiBarRight.Hide);
 MultiBarLeft:SetAttribute("statehidden",true)
 
 ActionButton6:Hide()
 ActionButton7:Hide()
 ActionButton8:Hide()
 ActionButton9:Hide()
 ActionButton10:Hide()
 ActionButton11:Hide()
 ActionButton12:Hide()




 MultiBarBottomLeftButton1:Hide()
 MultiBarBottomLeftButton2:Hide()
 MultiBarBottomLeftButton3:Hide()
 MultiBarBottomLeftButton4:Hide()
 MultiBarBottomLeftButton5:Hide()
 MultiBarBottomRightButton1:Hide()
 MultiBarBottomRightButton2:Hide()
 MultiBarBottomRightButton3:Hide()
 MultiBarBottomRightButton4:Hide()
 MultiBarBottomRightButton5:Hide()
 MultiBarRightButton1:Hide()
 MultiBarRightButton2:Hide()
 MultiBarRightButton3:Hide()
 MultiBarRightButton4:Hide()
 MultiBarRightButton5:Hide()

 MultiBarLeftButton1:Hide()
 MultiBarLeftButton2:Hide()
 MultiBarLeftButton3:Hide()
 MultiBarLeftButton4:Hide()
 MultiBarLeftButton5:Hide()


 
end







function ModifierButtonSwap(j,bool,n,barnum)
    for i = 1, n, 1 do
        if(bool)then
            if(barnum == 1)then
         --   _G["ActionButton"..i+j]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()+4) - (_G['btn']:GetWidth()+4),0)
            _G["ActionButton"..i+j]:SetAlpha(1)
            --_G["ActionButton"..i+j]:Show()
            else
         --   _G["MultiBarBottomLeftButton"..i+j]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()+4) - (_G['btn']:GetWidth()+4),0)
         _G["MultiBarBottomLeftButton"..i+j]:SetAlpha(1)   
         --_G["MultiBarBottomLeftButton"..i+j]:Show()
            end
        else
        if(barnum == 1)then
        -- _G["ActionButton"..i+j]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()+4) - (_G['btn']:GetWidth()+4),15)
        _G["ActionButton"..i+j]:SetAlpha(0)
         --_G["ActionButton"..i+j]:Hide()
        else
         --_G["MultiBarBottomLeftButton"..i+j]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()+4) - (_G['btn']:GetWidth()+4),15)
         _G["MultiBarBottomLeftButton"..i+j]:SetAlpha(0)
         --_G["MultiBarBottomLeftButton"..i+j]:Hide()    
        end
        end
    end
end



--[[ 

ActionBar page 1: slots 1 to 12 -- Note exceptions below for other classes USED 1-5 = QERTF, 6-10 = SHIFT{Q,E,R,T,F}  11-12 = CTRL{Q,E}
ActionBar page 2: slots 13 to 24
ActionBar page 3 (Right ActionBar): slots 25 to 36 -- For utility
ActionBar page 4 (Right ActionBar 2): slots 37 to 48 For Utility
ActionBar page 5 (Bottom Right ActionBar): slots 49 to 60 --currently used for utility
ActionBar page 6 (Bottom Left ActionBar): slots 61 to 72 -- USED 61-66 = ALT{Q,E,R,T,F} 67-69 = CTRL{R,T,F}

Warrior Bonus Action Bars

ActionBar page 1 Battle Stance: slots 73 to 84
ActionBar page 1 Defensive Stance: slots 85 to 96
ActionBar page 1 Berserker Stance: slots 97 to 108

Druid Bonus Action Bars

ActionBar page 1 Cat Form: slots 73 to 84
ActionBar page 1 Prowl: slots 85 to 96
ActionBar page 1 Bear Form: slots 97 to 108
ActionBar page 1 Moonkin Form: slots 109 to 120

Rogue Bonus Action Bars

ActionBar page 1 Stealth: slots 73 to 84

Priest Bonus Action Bars

ActionBar page 1 Shadowform: slots 73 to 84

Target Possessed Action Bar

ActionBar page 1 Possess: slots 121-132 ]]



function NoLoopMover(a,b,c,d,e,barnum)
    if(barnum == 2)then
        if(a ~= nil)then
            _G["MultiBarBottomLeftButton"..a]:SetParent(framePage2,"CENTER")
            _G["MultiBarBottomLeftButton"..a]:ClearAllPoints()
            _G["MultiBarBottomLeftButton"..a]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()+4) - (_G['btn']:GetWidth()+4),0)
        end
        if(b ~= nil)then
            _G["MultiBarBottomLeftButton"..b]:SetParent(framePage2,"CENTER")
            _G["MultiBarBottomLeftButton"..b]:ClearAllPoints()
            _G["MultiBarBottomLeftButton"..b]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()*2+4*2) - (_G['btn']:GetWidth()+4),0)
        end
        if(c ~= nil)then
            _G["MultiBarBottomLeftButton"..c]:SetParent(framePage2,"CENTER")
            _G["MultiBarBottomLeftButton"..c]:ClearAllPoints()
            _G["MultiBarBottomLeftButton"..c]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()*3+4*3) - (_G['btn']:GetWidth()+4),0)
        end
        if(d ~= nil)then
            _G["MultiBarBottomLeftButton"..d]:SetParent(framePage2,"CENTER")
            _G["MultiBarBottomLeftButton"..d]:ClearAllPoints()
            _G["MultiBarBottomLeftButton"..d]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()*4+4*4) - (_G['btn']:GetWidth()+4),0)
        end
        if(e ~= nil)then
            _G["MultiBarBottomLeftButton"..e]:SetParent(framePage2,"CENTER")
            _G["MultiBarBottomLeftButton"..e]:ClearAllPoints()
            _G["MultiBarBottomLeftButton"..e]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()*5+4*5) - (_G['btn']:GetWidth()+4),0)
        end
    elseif(barnum == 1)then
        if(a ~= nil) then
            _G["ActionButton"..a]:SetParent(frame,"CENTER")
            _G["ActionButton"..a]:ClearAllPoints()
            _G["ActionButton"..a]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()+4) - (_G['btn']:GetWidth()+4),0)
        end
        if(b ~= nil)then
            _G["ActionButton"..b]:SetParent(frame,"CENTER")
            _G["ActionButton"..b]:ClearAllPoints()
            _G["ActionButton"..b]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()*2+4*2) - (_G['btn']:GetWidth()+4),0)
        end
        if(c ~= nil)then
            _G["ActionButton"..c]:SetParent(frame,"CENTER")
            _G["ActionButton"..c]:ClearAllPoints()
            _G["ActionButton"..c]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()*3+4*3) - (_G['btn']:GetWidth()+4),0)
        end
        if(d ~= nil)then
            _G["ActionButton"..d]:SetParent(frame,"CENTER")
            _G["ActionButton"..d]:ClearAllPoints()
            _G["ActionButton"..d]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()*4+4*4) - (_G['btn']:GetWidth()+4),0)
        end
        if(e ~= nil)then
            _G["ActionButton"..e]:SetParent(frame,"CENTER")
            _G["ActionButton"..e]:ClearAllPoints()
            _G["ActionButton"..e]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()*5+4*5) - (_G['btn']:GetWidth()+4),0)
        end
    elseif(barnum == 3)then
            
        if(a ~= nil)then
            _G["MultiBarBottomRightButton"..a]:SetParent(frame,"CENTER")
            _G["MultiBarBottomRightButton"..a]:ClearAllPoints()
            _G["MultiBarBottomRightButton"..a]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()+4) - (_G['btn']:GetWidth()+4),0)
        end
        if(b ~= nil)then
            _G["MultiBarBottomRightButton"..b]:SetParent(frame,"CENTER")
            _G["MultiBarBottomRightButton"..b]:ClearAllPoints()
            _G["MultiBarBottomRightButton"..b]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()*2+4*2) - (_G['btn']:GetWidth()+4),0)
        end
        if(c ~= nil)then
            _G["MultiBarBottomRightButton"..c]:SetParent(frame,"CENTER")
            _G["MultiBarBottomRightButton"..c]:ClearAllPoints()
            _G["MultiBarBottomRightButton"..c]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()*3+4*3) - (_G['btn']:GetWidth()+4),0)
        end
        if(d ~= nil)then
            _G["MultiBarBottomRightButton"..d]:SetParent(frame,"CENTER")
            _G["MultiBarBottomRightButton"..d]:ClearAllPoints()
            _G["MultiBarBottomRightButton"..d]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()*4+4*4) - (_G['btn']:GetWidth()+4),0)
        end
        if(e ~= nil)then
            _G["MultiBarBottomRightButton"..e]:SetParent(frame,"CENTER")
            _G["MultiBarBottomRightButton"..e]:ClearAllPoints()
            _G["MultiBarBottomRightButton"..e]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()*5+4*5) - (_G['btn']:GetWidth()+4),0)
        end
        elseif(barnum == 4)then
            if(a ~= nil)then
                _G["MultiBarBottomLeftButton"..a]:SetParent(framePage2,"CENTER")
                _G["MultiBarBottomLeftButton"..a]:ClearAllPoints()
                _G["MultiBarBottomLeftButton"..a]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()+4) - (_G['btn']:GetWidth()+4),(_G['btn']:GetHeight()+4))
            end
            if(b ~= nil)then
                _G["MultiBarBottomLeftButton"..b]:SetParent(framePage2,"CENTER")
                _G["MultiBarBottomLeftButton"..b]:ClearAllPoints()
                _G["MultiBarBottomLeftButton"..b]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()*2+4*2) - (_G['btn']:GetWidth()+4),(_G['btn']:GetHeight()+4))
            end
            if(c ~= nil)then
                _G["MultiBarBottomLeftButton"..c]:SetParent(framePage2,"CENTER")
                _G["MultiBarBottomLeftButton"..c]:ClearAllPoints()
                _G["MultiBarBottomLeftButton"..c]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()*3+4*3) - (_G['btn']:GetWidth()+4),(_G['btn']:GetHeight()+4))
            end
            if(d ~= nil)then
                _G["MultiBarBottomLeftButton"..d]:SetParent(framePage2,"CENTER")
                _G["MultiBarBottomLeftButton"..d]:ClearAllPoints()
                _G["MultiBarBottomLeftButton"..d]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()*4+4*4) - (_G['btn']:GetWidth()+4),(_G['btn']:GetHeight()+4))
            end
            if(e ~= nil)then
                _G["MultiBarBottomLeftButton"..e]:SetParent(framePage2,"CENTER")
                _G["MultiBarBottomLeftButton"..e]:ClearAllPoints()
                _G["MultiBarBottomLeftButton"..e]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()*5+4*5) - (_G['btn']:GetWidth()+4),(_G['btn']:GetHeight()+4))
            end
        elseif(barnum == 5)then
            if(a ~= nil)then
                _G["MultiBarLeftButton"..a]:SetParent(framePage2,"CENTER")
                _G["MultiBarLeftButton"..a]:ClearAllPoints()
                _G["MultiBarLeftButton"..a]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()+4) - (_G['btn']:GetWidth()+4),0)
            end
            if(b ~= nil)then
                _G["MultiBarLeftButton"..b]:SetParent(framePage2,"CENTER")
                _G["MultiBarLeftButton"..b]:ClearAllPoints()
                _G["MultiBarLeftButton"..b]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()*2+4*2) - (_G['btn']:GetWidth()+4),0)
            end
            if(c ~= nil)then
                _G["MultiBarLeftButton"..c]:SetParent(framePage2,"CENTER")
                _G["MultiBarLeftButton"..c]:ClearAllPoints()
                _G["MultiBarLeftButton"..c]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()*3+4*3) - (_G['btn']:GetWidth()+4),0)
            end
            if(d ~= nil)then
                _G["MultiBarLeftButton"..d]:SetParent(framePage2,"CENTER")
                _G["MultiBarLeftButton"..d]:ClearAllPoints()
                _G["MultiBarLeftButton"..d]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()*4+4*4) - (_G['btn']:GetWidth()+4),0)
            end
            if(e ~= nil)then
                _G["MultiBarLeftButton"..e]:SetParent(framePage2,"CENTER")
                _G["MultiBarLeftButton"..e]:ClearAllPoints()
                _G["MultiBarLeftButton"..e]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()*5+4*5) - (_G['btn']:GetWidth()+4),0)
            end  
            
    end    



    
end
