-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

display.setDefault( "background", 67, 0, 255 )

local myText = display.newText( "Super Epic Calculator", 160, 2, native.systemFont, 30 )
myText:setFillColor( 0, 0, 255 )

local SideAofTrapezoidTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 150, 250, 40 )
SideAofTrapezoidTextField.id = "side A textField"

local SideBofTrapezoidTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 250, 40 )
SideBofTrapezoidTextField.id = "side B textField"

local HeightofTrapezoidTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 250, 250, 40 )
HeightofTrapezoidTextField.id = "height textField"

local areaOfTrapezoidTextField = display.newText( "Answer", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 28 )
areaOfTrapezoidTextField.id = "area textField"
areaOfTrapezoidTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "Assets/enterButton.png", 250, 90 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"
 
local function calculateButtonTouch( event )
    -- this function calculates the area of a square given the length of one of its sides
 
    local SideAofTrapezoid
    local SideBofTrapezoid
    local HeightofTrapezoid
    local areaOfTrapezoid
 
    SideAofTrapezoid = SideAofTrapezoidTextField.text
    SideBofTrapezoid = SideBofTrapezoidTextField.text
    HeightofTrapezoid = HeightofTrapezoidTextField.text
    areaOfTrapezoid = ((SideAofTrapezoid+SideBofTrapezoid)/2*HeightofTrapezoid)
    areaOfTrapezoidTextField.text = "The area is " .. areaOfTrapezoid

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )