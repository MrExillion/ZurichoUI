local _, addonTable = ...

activeStatusColor = "none"

function ZurichoUISettingsFrame_OnLoad(self)


	self.name = "ZurichoUI"


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

end

function ZurichoUISettingsFrameStanceBarVisible_OnClick(self)
	
        StanceShow = not StanceShow;
        self:SetChecked(StanceShow);
        handleStanceBar()
end


function ZurichoUISettingsFrameLoadVariables()
-- LOAD ALL SAVED VARIABLES FROM WTF

    -- Stance Bar
    LoadVariable("StanceShow") 
    -- ClassColour
    LoadVariable("classColorPaladin")
    LoadVariable("classColorDruid")
    LoadVariable("classColorAll")

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
        info.func = StatusWheelUpdate(key)
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

function ZurichoUISettingsFrameStatusWheelColor_OnClick() 
    ToggleDropDownMenu(1, nil, ZurichoUISettingsFrameStatusWheelColor, ZurichoUISettingsFrameStatusWheelColorButton, -50, -50);
end

function StatusWheelUpdate(key)
    
    if(ColorModeList.name[activeStatusColor] ~= UIDropDownMenu_GetSelectedName(ZurichoUISettingsFrameStatusWheelColor)) then
        _G[activeStatusColor] = false;

        _G[key] = true;
        activeStatusColor = key;

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

    if(VariableName == "classColorAll" or VariableName == "classColorDruid" or VariableName == "classColorPaladin") then
    activeStatusColor = LoadVariables_ONDEMANDSUBROUTINE_XPWheelCurrentColor();

    --UIDropDownMenu_SetText(ZurichoUISettingsFrameStatusWheelColor, ColorModeList.name[activeStatusColor]);
    UIDropDownMenu_SetText(dropDown, ColorModeList.name[activeStatusColor]) 
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




-- Create the dropdown, and configure its appearance
 dropDown = CreateFrame("FRAME", "ZurichoUISettingsFrameStatusBarColorModeDropDown", ZurichoUISettingsFrame, "UIDropDownMenuTemplate")
--TestDropDown = dropDown;
dropDown.label = CreateFrame("FRAME","ZurichoUISettingsFrameStatusBarColorModeDropDownDescriptionText",ZurichoUISettingsFrameStatusBarColorModeDropDown)



ClassColorSettingsHandler()
UIDropDownMenu_SetWidth(dropDown, 200)

UIDropDownMenu_SetText(dropDown, ColorModeList.name[activeStatusColor]) 
local selectedItem = ColorModeList.name[activeStatusColor] -- A user-configurable setting

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


dropDown:HookScript("OnLoad", function()
dropDown:SetParent(ZurichoUISettingsFrame)
end)




function PopulateDropDown()
    

    for key,array in pairs(ColorModeList.name) do
		local info = UIDropDownMenu_CreateInfo();
		info.text = ColorModeList.name[key];
        info.value = key;
        info.checked = false;
        info.func = StatusWheelUpdate(key)
        UIDropDownMenu_AddButton(info);
        
        
--[[         print(ColorModeList.name[key])
        print(info.text)
        print(info.value)
        print(info.checked)
        print(info.menuList) ]]
    end -- for key, subarray

end

