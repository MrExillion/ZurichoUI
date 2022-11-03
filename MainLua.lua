

local media = LibStub("LibSharedMedia-3.0")

media:Register("border", "ZurichoUI SilverBorder", "Interface\\AddOns\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1")
media:Register("border", "ZurichoUI GoldBorder", "Interface\\AddOns\\ZurichosUI\\UI-DialogBox-Border-ZurichoUIGolden")


-- not supposed to be here without DBM-VPEnglish Female Voice pack:
if (IsAddOnLoaded("DBM-VPEnglish female")) then
media:Register("sound", "Voice: VPEnglish-Female - Dispell Now", "Interface\\AddOns\\DBM-VPEnglish female\\dispelnow.ogg")
end

       --UIParentManagedFrameContainerMixin:RemoveManagedFrame('MainMenuBar');
     --UIPARENT_MANAGED_FRAME_POSITIONS['MultiBarBottomLeft'] = nil
     --UIPARENT_MANAGED_FRAME_POSITIONS['MultiBarBottomRight'] = nil
     --UIPARENT_MANAGED_FRAME_POSITIONS['MultiBarLeft'] = nil
     --UIPARENT_MANAGED_FRAME_POSITIONS['MultiBarRight'] = nil
       --_G['MainMenuBar']:SetAttribute("uiparent-manage", false);
_G['MainMenuBar']:SetAttribute("layoutParent", nil)
 
local frame = CreateFrame('Frame', 'myActionBar', UIParent, BackdropTemplateMixin and "BackdropTemplate")
frame:SetPoint("CENTER",0,-UIParent:GetHeight()/2 + 150)
frame:SetWidth(250)
frame:SetHeight(60)
frame:RegisterEvent("ACTIONBAR_SLOT_CHANGED");
frame:RegisterEvent("MODIFIER_STATE_CHANGED");
frame:RegisterEvent("PLAYER_ENTERING_WORLD");
frame:RegisterEvent("ACTIONBAR_UPDATE_COOLDOWN");
frame:RegisterEvent("UPDATE_SHAPESHIFT_FORMS");
frame:RegisterEvent("ACTIONBAR_UPDATE_STATE")
frame:RegisterEvent("PLAYER_XP_UPDATE")
frame:RegisterEvent("UPDATE_EXHAUSTION")


-- frame:SetBackdrop({bgFile="Interface\\DialogFrame\\UI-DialogBox-Background",
--            edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", tile=true,tileSize=32,edgeSize=32,
--            insets= {left=11,right=12,top=12,bottom=11}})

-- frame:SetBackdrop({bgFile="Interface\\DialogFrame\\UI-DialogBox-Background",
--            edgeFile="Interface\\AddOns\\ZurichosUI\\UI-DialogBox-Border-ZurichoUIGolden", tile=true,tileSize=32,edgeSize=32,
--            insets= {left=11,right=12,top=12,bottom=11}})          
frame:SetBackdrop({bgFile="Interface\\DialogFrame\\UI-DialogBox-Background",
           edgeFile="Interface\\AddOns\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1", tile=true,tileSize=32,edgeSize=32,
           insets= {left=11,right=12,top=12,bottom=11}})                      
frame:SetBackdropColor(1,1,1,1);
--frame:SetBackdropBorderColor(0.753,0.4,2,1);
local framePage2 = CreateFrame('Frame', 'myActionBar', UIParent, BackdropTemplateMixin)
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
--_G["ExtraActionButton1"]:SetPoint("BOTTOMLEFT",frame,-40,-100)
_G["ExtraActionButton1"]:SetPoint("BOTTOMLEFT",frame,"BOTTOMLEFT",-16,0)


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
                _G["ActionButton"..i+j]:SetPoint("CENTER", "myButton", "CENTER",-25,0)
            else
                _G["ActionButton"..i+j]:SetPoint("CENTER", "myButton", (_G['btn'..k]:GetWidth()-4) - (_G['btn']:GetWidth()-4) - 5,0)
            end
        

        elseif(2) then
            _G["MultiBarBottomLeftButton"..i+j]:SetParent(frame,"CENTER")
            _G["MultiBarBottomLeftButton"..i+j]:ClearAllPoints()
            if(k==1)then 
                _G["MultiBarBottomLeftButton"..i+j]:SetPoint("CENTER", "myButton",-8,0)
            else
                _G["MultiBarBottomLeftButton"..i+j]:SetPoint("CENTER", "myButton", (_G['btn'..k]:GetWidth()*k-4) - (_G['btn']:GetWidth()-4),0)
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

--[[ local alt = CreateFrame('Button', 'altButton', UIParent, "UIPanelButtonTemplate")
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
ctrl:SetHeight(btn:GetHeight()/2-4) ]]

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

        --SHOW_MULTI_ACTIONBAR_1=true SHOW_MULTI_ACTIONBAR_2=true SHOW_MULTI_ACTIONBAR_3=true SHOW_MULTI_ACTIONBAR_4=true 
	--InterfaceOptions_UpdateMultiActionBars()
  --  local moving
    --hooksecurefunc(ObjectiveTrackerFrame, "SetPoint", function(self)
    --    if moving then
    --        return
    --    end
    --    moving = true
    --    self:SetMovable(true)
    --    self:SetUserPlaced(true)
    --    self:ClearAllPoints()
    --    self:SetPoint("CENTER", UIParent, "CENTER",GetScreenWidth()/2+75,0)
    --    self:SetScale(0.8) -- optional
    --    self:SetWidth(300) -- optional
    --    self:SetHeight(800) -- optional
    --    self:SetMovable(false)
    --    moving = nil
    --end)



    --print(point, relativeTo, relativePoint, xOfs, yOfs)
    
    
    
    
    
    if (englishClass == "PALADIN" or englishClass == "SHAMAN" or englishClass ~= nil)then


           
            NoLoopMover(1,2,3,4,5,1)

                      
       elseif (englishClass == "DRUID") then

       NoLoopMover(1,2,3,4,5,1)
       NoLoopMover(1,2,3,4,5,10)
       
       
        
	   else
       
	   NoLoopMover(1,2,3,4,5,1)
	   end





end 



btn5CD = CreateFrame("COOLDOWN","btn5CD", btn5, btn5)

btn4CD = CreateFrame("COOLDOWN","btn4CD", btn4, btn4)

function frame:ACTIONBAR_UPDATE_COOLDOWN(self, event, ...)

    




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

    



 --MainMenuBarArtBackground:Hide()
 --MainMenuBarArtFrame.LeftEndCap:Hide()
 --MainMenuBarArtFrame.PageNumber:Hide()
 --MainMenuBarArtFrame.RightEndCap:Hide()
 --AchievementMicroButton:Hide()
  --ActionBarDownButton:Hide()
 -- ActionBarUpButton:Hide() 
ActionButton1:SetParent(_G['myActionBar'])
MainMenuBar.ActionBarPageNumber:Hide();
MainMenuBar.EndCaps:Hide();
MainMenuBar.BorderArt:Hide(); 
MainMenuBar.Background:Hide(); 
--MainMenuBar:SetParent(_G['myActionBar'])

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

NoLoopMover(1,2,3,4,5,1)
 
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
            _G["ActionButton"..a]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()+4) - (_G['btn']:GetWidth()+5),0)
        end
        if(b ~= nil)then
            _G["ActionButton"..b]:SetParent(frame,"CENTER")
            _G["ActionButton"..b]:ClearAllPoints()
            _G["ActionButton"..b]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()*2+4*2) - (_G['btn']:GetWidth()+10),0)
        end
        if(c ~= nil)then
            _G["ActionButton"..c]:SetParent(frame,"CENTER")
            _G["ActionButton"..c]:ClearAllPoints()
            _G["ActionButton"..c]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()*3+4*3) - (_G['btn']:GetWidth()+14),0)
        end
        if(d ~= nil)then
            _G["ActionButton"..d]:SetParent(frame,"CENTER")
            _G["ActionButton"..d]:ClearAllPoints()
            _G["ActionButton"..d]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()*4+4*4) - (_G['btn']:GetWidth()+18),0)
        end
        if(e ~= nil)then
            _G["ActionButton"..e]:SetParent(frame,"CENTER")
            _G["ActionButton"..e]:ClearAllPoints()
            _G["ActionButton"..e]:SetPoint("CENTER", "myButton", (_G['btn']:GetWidth()*5+4*5) - (_G['btn']:GetWidth()+22),0)
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


function frame:OnEvent(event, addon)
	--Check if the talkinghead addon is being loaded
	if addon == "Blizzard_TalkingHeadUI" then
local moving
hooksecurefunc("TalkingHeadFrame_PlayCurrent", function()
    if moving then
        return
    end
    moving = true
    TalkingHeadFrame:SetMovable(true)
    TalkingHeadFrame:SetUserPlaced(true)
    TalkingHeadFrame:ClearAllPoints()
    TalkingHeadFrame:SetPoint("BOTTOM", UIParent, "BOTTOM",400,0)
    TalkingHeadFrame:SetScale(1.0) -- optional
    --TalkingHeadFrame:SetWidth() -- optional
    --TalkingHeadFrame:SetHeight(150) -- optional 
    TalkingHeadFrame:SetMovable(false)
    moving = nil 

   -- print("Should be setting point to new position")
end)
end
end
frame:RegisterEvent("ADDON_LOADED")
frame:HookScript("OnEvent", frame.OnEvent)



