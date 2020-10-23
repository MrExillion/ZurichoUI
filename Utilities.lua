local frame = CreateFrame('Frame', 'myUtilityBar', UIParent, BackdropTemplateMixin and "BackdropTemplate")
frame:SetPoint("RIGHT",0,-UIParent:GetHeight()/2 + 48)
frame:SetWidth(MicroButtonAndBagsBar:GetWidth()-25)
frame:SetHeight(100)

-- frame:SetBackdrop({bgFile="Interface\\DialogFrame\\UI-DialogBox-Background",
--            edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", tile=true,tileSize=32,edgeSize=32,
--            insets= {left=11,right=12,top=12,bottom=11}})
--frame:SetBackdrop({bgFile="Interface\\DialogFrame\\UI-DialogBox-Background",
--           edgeFile="Interface\\AddOns\\ZurichosUI\\UI-DialogBox-Border-ZurichoUIGolden", tile=true,tileSize=32,edgeSize=32,
--           insets= {left=11,right=12,top=12,bottom=11}})
frame:SetBackdrop({bgFile="Interface\\DialogFrame\\UI-DialogBox-Background",
           edgeFile="Interface\\AddOns\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1", tile=true,tileSize=32,edgeSize=32,
           insets= {left=11,right=12,top=12,bottom=11}})


frame:SetBackdropColor(1,1,1,1);

local frame2 = CreateFrame('Frame', 'myUtilityInfoFrame', frame, BackdropTemplateMixin and "BackdropTemplate")
frame2:SetWidth(40)
frame2:SetHeight(100)
-- frame2:SetBackdrop({bgFile="Interface\\DialogFrame\\UI-DialogBox-Background",
--            edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", tile=true,tileSize=32,edgeSize=32,
--            insets= {left=11,right=12,top=12,bottom=11}})
--frame2:SetBackdrop({bgFile="Interface\\DialogFrame\\UI-DialogBox-Background",
--           edgeFile="Interface\\AddOns\\ZurichosUI\\UI-DialogBox-Border-ZurichoUIGolden", tile=true,tileSize=32,edgeSize=32,
--           insets= {left=11,right=12,top=12,bottom=11}})
frame2:SetBackdrop({bgFile="Interface\\DialogFrame\\UI-DialogBox-Background",
           edgeFile="Interface\\AddOns\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1", tile=true,tileSize=32,edgeSize=32,
           insets= {left=11,right=12,top=12,bottom=11}})              
           
frame2:SetBackdropColor(1,1,1,1);
frame2:SetPoint(frame:GetPoint(),frame,-frame:GetWidth() +10 ,-frame:GetHeight()/2 + 50)

--local btnTestClone = CreateFrame('Frame', 'testButton', UIParent, "SecureActionButtonTemplate, ActionButtonTemplate" )

PlayerPowerBarAlt:HookScript("OnUpdate", function(self, ...)
    

    --PlayerPowerBarAlt:SetSize(10,10)
    PlayerPowerBarAlt:ClearAllPoints()
    PlayerPowerBarAlt:SetPoint("BOTTOM",UIParent,"BOTTOM",250,30)
        
end)

ZoneAbilityFrame:HookScript("OnUpdate", function(self, ...)
    

    --PlayerPowerBarAlt:SetSize(10,10)
    ZoneAbilityFrame:ClearAllPoints()
    ZoneAbilityFrame:SetPoint("BOTTOM",UIParent,"BOTTOM",-250,30)
        
end)



local localizedClass, englishClass, classIndex = UnitClass("Player");

MicroButtonAndBagsBar:SetParent(frame)
MicroButtonAndBagsBar:ClearAllPoints()
MicroButtonAndBagsBar:SetPoint(frame:GetPoint(),frame,0,frame:GetHeight()-10)
MicroButtonAndBagsBar:GetChildren():SetFrameLevel(MicroButtonAndBagsBar:GetFrameLevel()+1)

MicroButtonAndBagsBar:SetFrameLevel(1)
local zPagingFrame = CreateFrame("FRAME", nil, nil, "SecureHandlerStateTemplate");
for i = 1,5 do
    _G["PetActionButton"..6-i]:ClearAllPoints();
    _G["PetActionButton"..11-i]:ClearAllPoints();
    _G["PetActionButton"..6-i]:SetPoint(_G["PetActionBarFrame"]:GetPoint(),_G["PetActionBarFrame"],-_G["PetActionButton1"]:GetWidth()*(i-6)-8,_G["PetActionButton1"]:GetHeight()*1-frame:GetHeight()/2-8)
    _G["PetActionButton"..11-i]:SetPoint(_G["PetActionBarFrame"]:GetPoint(),_G["PetActionBarFrame"],-_G["PetActionButton1"]:GetWidth()*(i-6)-8,_G["PetActionButton1"]:GetHeight()*2.2-frame:GetHeight()/2-8)


end

for i = 6,12 do

    _G["MultiBarBottomRightButton"..i]:ClearAllPoints()
    _G["MultiBarBottomLeftButton"..i]:ClearAllPoints()
    _G["MultiBarRightButton"..i]:ClearAllPoints()
    _G["MultiBarLeftButton"..i]:ClearAllPoints()
    

    _G["MultiBarBottomRightButton"..i]:SetPoint(frame:GetPoint(),frame,-_G["MultiBarBottomRightButton1"]:GetWidth()*(i-6)-8,_G["MultiBarBottomRightButton1"]:GetHeight()*1-frame:GetHeight()/2-8)
    _G["MultiBarBottomLeftButton"..i]:SetPoint(frame:GetPoint(),frame,-_G["MultiBarBottomRightButton1"]:GetWidth()*(i-6)-8,_G["MultiBarBottomRightButton1"]:GetHeight()*2.2-frame:GetHeight()/2-8)
    _G["MultiBarRightButton"..i]:SetPoint(frame:GetPoint(),frame,-_G["MultiBarBottomRightButton1"]:GetWidth()*(i-6)-8,_G["MultiBarBottomRightButton1"]:GetHeight()*1-frame:GetHeight()/2-8)
    _G["MultiBarLeftButton"..i]:SetPoint(frame:GetPoint(),frame,-_G["MultiBarBottomRightButton1"]:GetWidth()*(i-6)-8,_G["MultiBarBottomRightButton1"]:GetHeight()*2.2-frame:GetHeight()/2-8)



    _G["MultiBarBottomRightButton"..i]:Hide()
    _G["MultiBarBottomLeftButton"..i]:Hide()
    _G["MultiBarRightButton"..i]:Show()
    _G["MultiBarLeftButton"..i]:Show()

    _G["ActionButton"..i]:Hide() 
end


frame:SetFrameLevel(0)


function UtilitySet1()
    for i = 6,12 do
        _G["MultiBarBottomRightButton"..i]:Hide()
        _G["MultiBarBottomLeftButton"..i]:Hide()
        _G["MultiBarRightButton"..i]:Show()
        _G["MultiBarLeftButton"..i]:Show()
        ActionButton6:Hide()
        ActionButton7:Hide()
		ActionButton8:Hide()
		ActionButton9:Hide()
		ActionButton10:Hide()
		ActionButton11:Hide()
		ActionButton12:Hide()
    end
end
function UtilitySet2()
    for i = 6,12 do
    
        _G["MultiBarBottomRightButton"..i]:Show()
        _G["MultiBarBottomLeftButton"..i]:Show()
        _G["MultiBarRightButton"..i]:Hide()
        _G["MultiBarLeftButton"..i]:Hide()
        ActionButton6:Hide()
        ActionButton7:Hide()
		ActionButton8:Hide()
		ActionButton9:Hide()
		ActionButton10:Hide()
		ActionButton11:Hide()
        ActionButton12:Hide()

        -- Below code failed to do its job
        RegisterAttributeDriver(ActionButton6, "visibility", false)        
        RegisterAttributeDriver(ActionButton7, "visibility", false)
        RegisterAttributeDriver(ActionButton8, "visibility", false)
        RegisterAttributeDriver(ActionButton9, "visibility", false)
        RegisterAttributeDriver(ActionButton10, "visibility", false)
        -- Below code failed to do its job
        RegisterAttributeDriver(ActionButton6, "_onshow", [[
            ActionButton6:SetAttribute("visibility", false)
            ]])
        RegisterAttributeDriver(ActionButton7, "_onshow", [[
            ActionButton7:SetAttribute("visibility", false)
            ]])
        RegisterAttributeDriver(ActionButton8, "_onshow", [[
            ActionButton8:SetAttribute("visibility", false)
            ]])
        RegisterAttributeDriver(ActionButton9, "_onshow", [[
            ActionButton9:SetAttribute("visibility", false)
            ]])
        RegisterAttributeDriver(ActionButton10, "_onshow", [[
            ActionButton10:SetAttribute("visibility", false)
            ]])



        


    end
    for i = 1,5 do
            -- Workaround for visible actionbars --- This works well, though not sure what happens the moment someone changes aspect ratio or place a monitor below the main screen

            _G["MultiBarBottomRightButton"..i]:ClearAllPoints()
            _G["MultiBarBottomLeftButton"..i]:ClearAllPoints()
            _G["MultiBarRightButton"..i]:ClearAllPoints()
            _G["MultiBarLeftButton"..i]:ClearAllPoints()
            _G["MultiBarBottomRightButton"..i]:SetPoint("BOTTOM",nil,"BOTTOM",0,-500)
            _G["MultiBarBottomLeftButton"..i]:SetPoint("BOTTOM",nil,"BOTTOM",0,-500)
            _G["MultiBarRightButton"..i]:SetPoint("BOTTOM",nil,"BOTTOM",0,-500)
            _G["MultiBarLeftButton"..i]:SetPoint("BOTTOM",nil,"BOTTOM",0,-500)
    end

end


    


    frame:RegisterEvent("PLAYER_ENTERING_WORLD");

--[[     _G["ObjectiveTrackerFrame"]:ClearAllPoints()
    _G["ObjectiveTrackerFrame"]:SetHeight(10)
    _G["ObjectiveTrackerFrame"]:SetScale(0.8)
    _G["ObjectiveTrackerFrame"]:SetSize(_G["ObjectiveTrackerFrame"]:GetWidth()*0.8,_G["ObjectiveTrackerFrame"]:GetHeight()*0.5) ]]
    frame:SetScript("OnEvent", function(self, event, ...)
        return self[event] and self[event](self, ...)
    end)
--- experiment begins ____SHAMELESSLY EXTRACTED FROM THE ADDON "PAGING"
function zPaging_InitializeRestrictedEnvironment()
	zPagingFrame:Execute(([[
		NUM_ACTIONBAR_BUTTONS = %d;
		buttons = newtable();
	]]):format(NUM_ACTIONBAR_BUTTONS));

	for id = 1, NUM_ACTIONBAR_BUTTONS do
		local button_name = "ActionButton" .. id;

		zPagingFrame:SetFrameRef(button_name, getglobal(button_name));

		zPagingFrame:Execute(([[
			buttons[%d] = self:GetFrameRef("%s");
		]]):format(id, button_name));
	end

	zPagingFrame:SetAttribute("_onstate-paging", ([[
		local newpage = tonumber(self:GetAttribute("state-paging"));

		for index, button in pairs(buttons) do
			button:SetAttribute("actionpage", newpage);
		end

		control:CallMethod("UpdatePageDisplay"); 
	]]):format(NUM_ACTIONBAR_BUTTONS)); -- Not used i can see this because UPDATEPAGEDISPLAY is invalid and not commented out here.
end

function zPaging_Initialize()
	if InCombatLockdown() then
		zPagingFrame:RegisterEvent("PLAYER_REGEN_ENABLED");
		return
	end

	zPaging_InitializeRestrictedEnvironment();

	zPagingFrame:UnregisterEvent("PLAYER_REGEN_ENABLED");
	zPagingInitialized = true;
end


zPagingFrame:SetScript("OnEvent", function(self, event, ...)
	if event == "PLAYER_ENTERING_WORLD" or event == "PLAYER_REGEN_ENABLED" then
		if not zPagingInitialized then
			zPaging_Initialize();
		end

		if not zPagingBindingsUpdated then
			zPaging_UpdateBindings();
		end

		--if zPagingOptionsQueued then
		--	zPaging_SetOptions(PagingOptionsQueued, PagingOverrideModifiers);
	--	end
	elseif event == "UPDATE_BINDINGS" then
		zPagingBindingsUpdated = false;
        zPaging_UpdateBindings();
        
        UtilitySet2()
	elseif event == "ACTIONBAR_PAGE_CHANGED" or event == "UPDATE_BONUS_ACTIONBAR" then
		--self:UpdatePageDisplay();

	end
end);



---experiment ends
    frame:SetScript("OnUpdate", function()     


        
        UtilitySet2()
        
        --THIS BIT OF CODE IS EXPERIMENTAL ____SHAMELESSLY EXTRACTED FROM THE ADDON "PAGING"


        ---
        zPagingFrame:Execute(([[
            NUM_ACTIONBAR_BUTTONS = %d;
            buttons = newtable();
        ]]):format(NUM_ACTIONBAR_BUTTONS));
    
        for id = 1, NUM_ACTIONBAR_BUTTONS do
            local button_name = "ActionButton" .. id;
    
            zPagingFrame:SetFrameRef(button_name, getglobal(button_name));
    
            zPagingFrame:Execute(([[
                buttons[%d] = self:GetFrameRef("%s");
            ]]):format(id, button_name));
        end
    


        zPagingFrame:SetAttribute("_onstate-paging", ([[
            local newpage = tonumber(self:GetAttribute("state-paging"));
    
            for index, button in pairs(buttons) do
                button:SetAttribute("actionpage", newpage);
            end
   
            --control:CallMethod("UpdatePageDisplay");
        ]]):format(NUM_ACTIONBAR_BUTTONS));

        local optionsZMods = "[mod:alt-ctrl-shift]9; [mod:alt-shift]8; [mod:alt-ctrl]6 ;    [mod:ctrl-shift]5; [mod:ctrl]4; [mod:alt]3; [mod:shift]2; []1;"
       -- ClearOverrideBindings(zPagingFrame);
        
        --[[ zPagingOverrideModifiers = overrideModifiers;

        if not PagingInitialized or InCombatLockdown() then
            PagingOptionsQueued = options;
            
            if InCombatLockdown() then
                PagingFrame:RegisterEvent("PLAYER_REGEN_ENABLED");
            end
    
            return;
        end
    
        PagingOptions = options;
        PagingOptionsQueued = nil;
         ]]
    
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



        if(englishClass == "DRUID") then
            local nStance = GetShapeshiftForm();
            optionsZMods = "[mod:alt-ctrl-shift,stance:0]10;[mod:alt-ctrl-shift,stance:1]1;[mod:alt-ctrl-shift,stance:2]1;[mod:alt-ctrl-shift,stance:3]10;[mod:alt-ctrl-shift,stance:4]1;[mod:alt-ctrl-shift,stance:5]1;[mod:alt-ctrl-shift,stance:6]1;[mod:alt-shift]8;[mod:alt-ctrl]6;[mod:ctrl-shift]5;[mod:ctrl]4;[mod:alt]3;[mod:shift]2;[stance:4]10;[stance:2]7;[stance:1]9;[stance:5]4;[stance:0]1;"
            --print(nStance)
            if(nStance == 4) then
                --zPagingFrame:SetAttribute("state-paging", SecureCmdOptionParse("[]10;[mod:alt-ctrl-shift]9;[mod:alt-shift]8;[mod:alt-ctrl]6;[mod:ctrl-shift]5;[mod:ctrl]4;[mod:alt]3;[mod:shift]2"));

                --RegisterAttributeDriver(zPagingFrame, "state-paging", "[]10;[mod:alt-ctrl-shift]9;[mod:alt-shift]8;[mod:alt-ctrl]6;[mod:ctrl-shift]5;[mod:ctrl]4;[mod:alt]3;[mod:shift]2"); 
                --optionsZMods = "[mod:alt-ctrl-shift]1;[mod:alt-shift]8;[mod:alt-ctrl]6;[mod:ctrl-shift]5;[mod:ctrl]4;[mod:alt]3;[mod:shift]2;[stance:4]10;"

            elseif(nStance == 2)then
                --zPagingFrame:SetAttribute("state-paging", SecureCmdOptionParse("[]7; [mod:alt-ctrl-shift]9; [mod:alt-shift]8; [mod:alt-ctrl]6;    [mod:ctrl-shift]5; [mod:ctrl]4; [mod:alt]3; [mod:shift]2 "));

                --RegisterAttributeDriver(zPagingFrame, "state-paging", "[]7; [mod:alt-ctrl-shift]9; [mod:alt-shift]8; [mod:alt-ctrl]6;    [mod:ctrl-shift]5; [mod:ctrl]4; [mod:alt]3; [mod:shift]2");
                --optionsZMods = " [mod:alt-ctrl-shift]1;[mod:alt-shift]8;[mod:alt-ctrl]6;[mod:ctrl-shift]5;[mod:ctrl]4;[mod:alt]3;[mod:shift]2;[]7;"
            elseif(nStance == 1)then
                --zPagingFrame:SetAttribute("state-paging", SecureCmdOptionParse("[]12; [mod:alt-ctrl-shift]9; [mod:alt-shift]8; [mod:alt-ctrl]6;    [mod:ctrl-shift]5; [mod:ctrl]4; [mod:alt]3; [mod:shift]2"));

                --RegisterAttributeDriver(zPagingFrame, "state-paging", "[]12; [mod:alt-ctrl-shift]9; [mod:alt-shift]8; [mod:alt-ctrl]6;    [mod:ctrl-shift]5; [mod:ctrl]4; [mod:alt]3; [mod:shift]2 ");
               -- optionsZMods = "[mod:alt-ctrl-shift]1;[mod:alt-shift]8;[mod:alt-ctrl]6;[mod:ctrl-shift]5;[mod:ctrl]4;[mod:alt]3;[mod:shift]2;[]9;"
            elseif(nStance == 5)then
               -- zPagingFrame:SetAttribute("state-paging", SecureCmdOptionParse("[]11; [mod:alt-ctrl-shift]9; [mod:alt-shift]8; [mod:alt-ctrl]6 ;    [mod:ctrl-shift]5; [mod:ctrl]4; [mod:alt]3; [mod:shift]2 "));

               -- RegisterAttributeDriver(zPagingFrame, "state-paging", "[]11; [mod:alt-ctrl-shift]9; [mod:alt-shift]8; [mod:alt-ctrl]6 ;    [mod:ctrl-shift]5; [mod:ctrl]4; [mod:alt]3; [mod:shift]2 ");
               -- optionsZMods = "[mod:alt-ctrl-shift]1;[mod:alt-shift]8;[mod:alt-ctrl]6;[mod:ctrl-shift]5;[mod:ctrl]9;[mod:alt]3;[mod:shift]2;[]4;"
           
            end
        else
          
    
                    
    
    
    end
    

    

    
    ActionButton6:SetAttribute("statehidden",true)
    ActionButton7:SetAttribute("statehidden",true)
    ActionButton8:SetAttribute("statehidden",true)
    ActionButton9:SetAttribute("statehidden",true)
    ActionButton10:SetAttribute("statehidden",true)
    ActionButton11:SetAttribute("statehidden",true)
    ActionButton12:SetAttribute("statehidden",true)
    RegisterAttributeDriver(zPagingFrame, "state-paging", optionsZMods); 
    zPagingFrame:SetAttribute("state-paging", SecureCmdOptionParse(optionsZMods));

        --"[mod:alt-ctrl-shift]9; [mod:alt-shift]8; [mod:alt-ctrl]6 ;    [mod:ctrl-shift]5; [mod:ctrl]4; [mod:alt]3; [mod:shift]2; []1;"
    end)



    function frame:OnEvent(self,event, ...)
        if event == "PLAYER_ENTERING_WORLD" then

             for i = 6,12 do
                _G["MultiBarBottomRightButton"..i]:Hide()
               _G["MultiBarBottomLeftButton"..i]:Hide()
                _G["MultiBarRightButton"..i]:Show()
                _G["MultiBarLeftButton"..i]:Show()
            end 
        
            for i = 1,5 do
                _G["PetActionButton"..6-i]:ClearAllPoints();
                _G["PetActionButton"..11-i]:ClearAllPoints();
                _G["PetActionButton"..6-i]:SetPoint(_G["PetActionBarFrame"]:GetPoint(),_G["PetActionBarFrame"],-_G["PetActionButton1"]:GetWidth()*(i-6)-8,_G["PetActionButton1"]:GetHeight()*1-frame:GetHeight()/2-8)
                _G["PetActionButton"..11-i]:SetPoint(_G["PetActionBarFrame"]:GetPoint(),_G["PetActionBarFrame"],-_G["PetActionButton1"]:GetWidth()*(i-6)-8,_G["PetActionButton1"]:GetHeight()*2.2-frame:GetHeight()/2-8)
            
            end


        end
        
    
    end
    
    function frame:Update()
        
        --_G["ObjectiveTrackerFrame"]:SetHeight(800)

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



    
