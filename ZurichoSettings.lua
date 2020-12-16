local _, addonTable = ...

activeStatusColor = "none"

function ZurichoUISettingsFrame_OnLoad(self)


	self.name = "|cff003399ZurichoUI"


	InterfaceOptions_AddCategory(self);

	self:RegisterEvent("VARIABLES_LOADED");
    
    dropDown:SetParent(self) 
    dropDown:SetPoint("TOPLEFT", ZurichoUISettingsFrameStatusBarColorModeDropDown:GetParent(),"TOPLEFT",15,-210)
    dropDown.label:SetWidth(250) 
    dropDown.label:SetHeight(40) 
    dropDown.label:SetPoint("TOPLEFT",ZurichoUISettingsFrameStatusBarColorModeDropDown.label:GetParent(),"TOPLEFT",15,28)
    dropDown.label.text = dropDown.label:CreateFontString(nil,"OVERLAY","GameFontNormal")
    dropDown.label.text:SetJustifyH("LEFT")
    dropDown.label.text:SetJustifyV("TOP")
    dropDown.label.text:SetText("StautsBar Color Mode: ");
    dropDown.label.text:SetPoint(dropDown.label:GetPoint(),0,-5)


    dropDown2:SetParent(self) 
    dropDown2:SetPoint("TOPLEFT", ZurichoUISettingsFrameStatusBarArtFrameDropDown:GetParent(),"TOPLEFT",15,-310)
    dropDown2.label:SetWidth(250) 
    dropDown2.label:SetHeight(40) 
    dropDown2.label:SetPoint("TOPLEFT",ZurichoUISettingsFrameStatusBarArtFrameDropDown.label:GetParent(),"TOPLEFT",15,28)
    dropDown2.label.text = dropDown2.label:CreateFontString(nil,"OVERLAY","GameFontNormal")
    dropDown2.label.text:SetJustifyH("LEFT")
    dropDown2.label.text:SetJustifyV("TOP")
    dropDown2.label.text:SetText("StautsBar Frame Art: ");
    dropDown2.label.text:SetPoint(dropDown2.label:GetPoint(),0,-5)



    --TestFrame()
end

function ZurichoUISettingsFrameStanceBarVisible_OnClick(self)
	
        StanceShow = not StanceShow;
        self:SetChecked(StanceShow);
        handleStanceBar()
end

function ZurichoUISettingsFrameShowReputationWhileLeveling_OnClick(self)
	
    repWhileLeveling = not repWhileLeveling;
    self:SetChecked(repWhileLeveling);
    StatusWheel.SetXPBar()
end


function ZurichoUISettingsFrameLoadVariables()
-- LOAD ALL SAVED VARIABLES FROM WTF

    -- Stance Bar
    LoadVariable("StanceShow") 
    -- ClassColour
    LoadVariable("classColorPaladin")
    LoadVariable("classColorDruid")
    LoadVariable("classColorAll")
    -- XpWheel Track Preferences
    LoadVariable("repWhileLeveling")
    -- Status Wheel Art
    LoadVariable("silverXPWheel")
    LoadVariable("noFrameXPWheel")
    LoadVariable("classColorXPWheel")

end

function ClassColorSettingsHandler()

    ColorModeList = {};
    ColorModeList.name = {};
    ColorModeList.name["none"] = "Default" 
    ColorModeList.name["classColorPaladin"] = "Paladin"
    ColorModeList.name["classColorDruid"] = "Druid"
    ColorModeList.name["classColorAll"] = "Class"
    ColorModeList.currentValue = nil;

end


function StatusFrameArtSettingsHandler()

    FrameList = {};
    FrameList.name = {};
    FrameList.name["none"] = "Default" 
    FrameList.name["silverXPWheel"] = "Silver Frame"
    FrameList.name["noFrameXPWheel"] = "No Frame"
    FrameList.name["classColorXPWheel"] = "Class Colored Frame"
    FrameList.currentValue = nil;

end

function ZurichoUISettingsFrameStatusWheelArtFrame_Initialize(self)
    StatusFrameArtSettingsHandler()
    info            = {};
    info.text       = FrameList.name[activeFrame];
    info.value      = activeFrame;

   UIDropDownMenu_AddButton(info);

	  for key,array in pairs(FrameList.name) do
		local info = UIDropDownMenu_CreateInfo();
		info.text = FrameList.name[key];
        info.value = key;
        info.checked = false;
        --info.menuList = ColorModeList.name;
        --info.type = CONTROLTYPE_DROPDOWN;
        info.func = StatusWheelUpdate(key,"artframe")  
        UIDropDownMenu_AddButton(info);
        
        --UIDropDownMenu_AddButton(ColorModeList.name,1)
--[[         print(ColorModeList.name[key])
        print(info.text)
        print(info.value)
        print(info.checked)
        print(info.menuList) ]]
    end -- for key, subarray

end




function ZurichoUISettingsFrameStatusWheelColor_Initialize(self)
    ClassColorSettingsHandler()
    info            = {};
    info.text       = ColorModeList.name[activeStatusColor];
    info.value      = activeStatusColor;

   UIDropDownMenu_AddButton(info);

	  for key,array in pairs(ColorModeList.name) do
		local info = UIDropDownMenu_CreateInfo();
		info.text = ColorModeList.name[key];
        info.value = key;
        info.checked = false;
        --info.menuList = ColorModeList.name;
        --info.type = CONTROLTYPE_DROPDOWN;
        info.func = StatusWheelUpdate(key,"centercolor")
        UIDropDownMenu_AddButton(info);
        
        --UIDropDownMenu_AddButton(ColorModeList.name,1)
--[[         print(ColorModeList.name[key])
        print(info.text)
        print(info.value)
        print(info.checked)
        print(info.menuList) ]]
    end -- for key, subarray

end

function ZurichoUISettingsFrameStatusWheelColor_OnLoad()
    ClassColorSettingsHandler()
end
function ZurichoUISettingsFrameStatusWheelArtFrame_OnLoad()
    StatusFrameArtSettingsHandler()
end


function ZurichoUISettingsFrameStatusWheelColor_OnClick() 
    ToggleDropDownMenu(1, nil, ZurichoUISettingsFrameStatusWheelColor, ZurichoUISettingsFrameStatusWheelColorButton, -50, -50);    
end
function ZurichoUISettingsFrameStatusWheelArtFrame_OnClick() 
    ToggleDropDownMenu(1, nil, ZurichoUISettingsFrameStatusWheelArtFrame, ZurichoUISettingsFrameStatusWheelArtFrameButton, -50, -50);    
end


function StatusWheelUpdate(key,caller)
    
    if(caller == "centercolor") then

        if(ColorModeList.name[activeStatusColor] ~= UIDropDownMenu_GetSelectedName(ZurichoUISettingsFrameStatusWheelColor)) then
        _G[activeStatusColor] = false;

        _G[key] = true;
        activeStatusColor = key;

        end
    elseif (caller == "artframe") then
        if(FrameList.name[activeFrame] ~= UIDropDownMenu_GetSelectedName(ZurichoUISettingsFrameStatusWheelArtFrame)) then
            _G[activeFrame] = false;
    
            _G[key] = true;
            activeFrame = key;
    
        end
    end
    GSetStatusBar();

    CloseDropDownMenus(1);
end



function ZurichoUISettingsFrame_OnEvent(self, event)
	if event == "VARIABLES_LOADED" then
		ZurichoUISettingsFrameLoadVariables();
	end
end

function LoadVariable(VariableName)
    if(VariableName == "StanceShow") then 
        if(StanceShow == nil) then 
            StanceShow = false; -- maybe add autodetect later (look to see if blizzard hides it per default for the given class)
            end
            ZurichoUISettingsFrameStanceBarVisbility:SetChecked(StanceShow);
    end
    if(VariableName == "repWhileLeveling") then 
        if(repWhileLeveling == nil) then 
            repWhileLeveling = false;
            end
            ZurichoUISettingsFrameShowReputationWhileLeveling:SetChecked(repWhileLeveling);
    end
    if(VariableName == "classColorAll") then 
        if(classColorAll == nil) then 
            classColorAll = false;
            end
            
    elseif(VariableName == "classColorDruid") then 
        if(classColorDruid == nil) then 
            classColorDruid = false;
            end
    elseif(VariableName == "classColorPaladin") then 
        if(classColorPaladin == nil) then 
            classColorPaladin = false;
            end
    end
    if(VariableName == "silverXPWheel") then 
        if(silverXPWheel == nil) then 
            silverXPWheel = false;
            end
            
    elseif(VariableName == "noFrameXPWheel") then 
        if(noFrameXPWheel == nil) then 
            noFrameXPWheel = false;
            end
    elseif(VariableName == "classColorXPWheel") then 
        if(classColorXPWheel == nil) then 
            classColorXPWheel = false;
            end
    end




    if(VariableName == "classColorAll" or VariableName == "classColorDruid" or VariableName == "classColorPaladin") then
    activeStatusColor = LoadVariables_ONDEMANDSUBROUTINE_XPWheelCurrentColor();

    --UIDropDownMenu_SetText(ZurichoUISettingsFrameStatusWheelColor, ColorModeList.name[activeStatusColor]);
    UIDropDownMenu_SetText(dropDown, ColorModeList.name[activeStatusColor])
    
    end
    if(VariableName == "silverXPWheel" or VariableName == "noFrameXPWheel" or VariableName == "classColorXPWheel") then
    activeFrame = LoadVariables_ONDEMANDSUBROUTINE_XPWheelCurrentArtFrame(); 
    UIDropDownMenu_SetText(dropDown2, FrameList.name[activeFrame])
    end 
end









function LoadVariables_ONDEMANDSUBROUTINE_XPWheelCurrentColor()
   if (classColorDruid == true and classColorPaladin == true and classColorAll == false )then
          classColorDruid = false;
          classColorPaladin = false;
          classColorAll = false;
          return "none";
   elseif (classColorDruid == true and classColorPaladin == false and classColorAll == false )then
          classColorDruid = true;
          classColorPaladin = false;
          classColorAll = false;
          return "classColorDruid";   
   elseif (classColorDruid == false and classColorPaladin == true and classColorAll == false )then
          classColorDruid = false;
          classColorPaladin = true;
          classColorAll = false;
          return "classColorPaladin";
   elseif (classColorDruid == false and classColorPaladin == false and classColorAll == true )then
          classColorDruid = false;
          classColorPaladin = false;
          classColorAll = true;
          return "classColorAll";
   elseif (classColorAll == true )then
            classColorDruid = false;
            classColorPaladin = false;
            classColorAll = true;
            return "classColorAll";
   
   else
            classColorDruid = false;
            classColorPaladin = false;
            classColorAll = false;
            return "none";
   end

end

function LoadVariables_ONDEMANDSUBROUTINE_XPWheelCurrentArtFrame()
    if (classColorXPWheel == true and noFrameXPWheel == true and silverXPWheel == false )then
           classColorXPWheel = false;
           noFrameXPWheel = false;
           silverXPWheel = false;
           return "none";
    elseif (classColorXPWheel == true and noFrameXPWheel == false and silverXPWheel == false )then
            classColorXPWheel = true;
            noFrameXPWheel = false;
            silverXPWheel = false;
           return "classColorXPWheel";   
    elseif (classColorXPWheel == false and noFrameXPWheel == true and silverXPWheel == false )then
           classColorXPWheel = false;
           noFrameXPWheel = true;
           silverXPWheel = false;
           return "noFrameXPWheel";
    elseif (classColorXPWheel == false and noFrameXPWheel == false and silverXPWheel == true )then
           classColorXPWheel = false;
           noFrameXPWheel  = false;
           silverXPWheel = true;
           return "silverXPWheel ";
    elseif (silverXPWheel == true )then
             classColorXPWheel = false;
             noFrameXPWheel = false;
             silverXPWheel = true;
             return "silverXPWheel";
    
    else
             classColorXPWheel = false;
             noFrameXPWheel = false;
             silverXPWheel = false;
             return "none";
    end
 
 end


-- Create the dropdown, and configure its appearance
 dropDown = CreateFrame("FRAME", "ZurichoUISettingsFrameStatusBarColorModeDropDown", ZurichoUISettingsFrame, "UIDropDownMenuTemplate")
--TestDropDown = dropDown;
dropDown.label = CreateFrame("FRAME","ZurichoUISettingsFrameStatusBarColorModeDropDownDescriptionText",ZurichoUISettingsFrameStatusBarColorModeDropDown)

-- Create the dropdown, and configure its appearance
dropDown2 = CreateFrame("FRAME", "ZurichoUISettingsFrameStatusBarArtFrameDropDown", ZurichoUISettingsFrame, "UIDropDownMenuTemplate")
--TestDropDown = dropDown;
dropDown2.label = CreateFrame("FRAME","ZurichoUISettingsFrameStatusBarArtFrameDropDownDescriptionText",ZurichoUISettingsFrameStatusBarArtFrameDropDown)

ClassColorSettingsHandler()
StatusFrameArtSettingsHandler()
UIDropDownMenu_SetWidth(dropDown, 200)
UIDropDownMenu_SetWidth(dropDown2, 200)

UIDropDownMenu_SetText(dropDown, ColorModeList.name[activeStatusColor]) 
local selectedItem = ColorModeList.name[activeStatusColor] -- A user-configurable setting

UIDropDownMenu_SetText(dropDown2, FrameList.name[activeFrame]) 
local selectedItem2 = FrameList.name[activeFrame] -- A user-configurable setting

-- Create and bind the initialization function to the dropdown menu
UIDropDownMenu_Initialize(dropDown, function(self, level, menuList)
 local info = UIDropDownMenu_CreateInfo()
 if (level or 1) == 1 then
 
  ClassColorSettingsHandler()
  for key,array in pairs(ColorModeList.name) do    
    info.text = ColorModeList.name[key];
    info.arg1 = key;
    info.menuList, info.hasArrow = i, false
    info.checked = ColorModeList.name[activeStatusColor] == ColorModeList.name[key]
    info.func = self.SetValue

    UIDropDownMenu_AddButton(info)
  end

 else

 end
end)

UIDropDownMenu_Initialize(dropDown2, function(self, level, menuList)
    local info = UIDropDownMenu_CreateInfo()
    if (level or 1) == 1 then
    
     StatusFrameArtSettingsHandler()
     for key,array in pairs(FrameList.name) do    
       info.text = FrameList.name[key];
       info.arg1 = key;
       info.menuList, info.hasArrow = i, false
       info.checked = FrameList.name[activeFrame] == FrameList.name[key]
       info.func = self.SetValue
   
       UIDropDownMenu_AddButton(info)
     end
   
    else
   
    end
   end)


-- Implement the function to change the favoriteNumber
function dropDown:SetValue(key)
    
    
    if(ColorModeList.name[activeStatusColor] ~= UIDropDownMenu_GetSelectedName(ZurichoUISettingsFrameStatusBarColorModeDropDown)) then
        _G[activeStatusColor] = false;

        _G[key] = true;
        activeStatusColor = key;

    end

    GSetStatusBar();
    StatusWheel.SetXPBar()
    
    selectedItem = ColorModeList.name[key]

 UIDropDownMenu_SetText(dropDown, "" .. ColorModeList.name[key])

end

function dropDown2:SetValue(key)
    
    
    if(FrameList.name[activeFrame] ~= UIDropDownMenu_GetSelectedName(ZurichoUISettingsFrameStatusBarArtFrameDropDown)) then
        _G[activeFrame] = false;

        _G[key] = true;
        activeFrame = key;

    end

    GSetStatusBar();
    StatusWheel.SetXPBar()
    
    selectedItem2 = FrameList.name[key]

 UIDropDownMenu_SetText(dropDown2, "" .. FrameList.name[key])

end



dropDown:HookScript("OnLoad", function()
dropDown:SetParent(ZurichoUISettingsFrame)
end)

dropDown2:HookScript("OnLoad", function()
dropDown2:SetParent(ZurichoUISettingsFrame)
    end)



function PopulateDropDown()
    

    for key,array in pairs(ColorModeList.name) do
		local info = UIDropDownMenu_CreateInfo();
		info.text = ColorModeList.name[key];
        info.value = key;
        info.checked = false;
        info.func = StatusWheelUpdate(key,"centercolor") 
        UIDropDownMenu_AddButton(info);
        
        
--[[         print(ColorModeList.name[key])
        print(info.text)
        print(info.value)
        print(info.checked)
        print(info.menuList) ]]
    end -- for key, subarray

end

function PopulateDropDown2()
    

    for key,array in pairs(FrameList.name) do
		local info = UIDropDownMenu_CreateInfo();
		info.text = FrameList.name[key];
        info.value = key;
        info.checked = false;
        info.func = StatusWheelUpdate(key,"artframe") 
        UIDropDownMenu_AddButton(info); 
        
        
--[[         print(ColorModeList.name[key])
        print(info.text)
        print(info.value)
        print(info.checked)
        print(info.menuList) ]]
    end -- for key, subarray

end




local testImage
function TestFrame()
testImage = CreateFrame("FRAME","TestFrameForZurichoUI",UIParent,BackdropTemplateMixin and "BackdropTemplate")
testImage:SetPoint("BOTTOM", nil, "BOTTOM",-260,180)
testImage:SetWidth(127)
testImage:SetHeight(86)
testImage:SetBackdrop({bgFile="Interface\\AddOns\\ZurichosUI\\UI-Player-Portrait-Sketch-Up",
edgeFile="Interface\\AddOns\\ZurichosUI\\UI-DialogBox-Border-ZurichoUISilver1", tile=true,tileSize=127,edgeSize=0,
insets= {left=0,right=-127,top=10,bottom=10}})

end