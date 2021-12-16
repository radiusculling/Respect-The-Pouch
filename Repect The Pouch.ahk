Time0 := A_TickCount
IniRead, count, %A_ScriptDir%\rtpFiles\userData\save.ini, Amount, Clicks
Gui, font, s20
Gui, Add, Button, gAddCount,RESPECT
Gui, font, s12
Gui, Add, Text, vThisBox, Times RESPECTED: --- | RPS: 0
Gui, Show, NoActivate
Gui, Add, Picture, x0 w300 h300 gImageButton, %A_ScriptDir%\rtpFiles\imgs\background.jpg
Gui, Show, w300 h465, respect!!
return
AddCount:
count++
IniWrite, %count%, %A_ScriptDir%\rtpFiles\userData\save.ini, Amount, Clicks
Time_Since_Last_Interaction := A_TickCount - Time0, Time0 := A_TickCount
Gui, Submit, NoHide
Guicontrol, text, ThisBox, Times RESPECTED: %count% | RPS: %RPS%
GuiControl, Move, ThisBox, w400
RPS:= Round(1000 / Time_Since_Last_Interaction, 1)
if (RPS >= 5)
Gosub, Achievement8
if (RPS >=10)
Gosub, Achievement9
if (RPS >= 15)
Gosub, Achievement10
if (Count >= 1)
Gosub, Achievement1
if (Count >= 10)
Gosub, Achievement2
if (Count >= 100)
Gosub, Achievement3
if (Count >= 1000)
Gosub, Achievement4
if (Count >= 10000)
Gosub, Achievement5
if (Count >= 100000)
Gosub, Achievement6
if (Count >= 1000000)
Gosub, Achievement7
return
ImageButton:
if !WinExist("Achievements")
{
Gui, Ach:New
Gui, Ach:Add, Text, w500 vThisAchievement1, RESPECT the pouch for the first time
Gui, Ach:Add, Text, wp vThisAchievement2, RESPECT the pouch for the 10th time
Gui, Ach:Add, Text, wp vThisAchievement3, RESPECT the pouch for the 100th time
Gui, Ach:Add, Text, wp vThisAchievement4, RESPECT the pouch for the 1,000th time
Gui, Ach:Add, Text, wp vThisAchievement5, RESPECT the pouch for the 10,000th time
Gui, Ach:Add, Text, wp vThisAchievement6, RESPECT the pouch for the 100,000th time
Gui, Ach:Add, Text, wp vThisAchievement7, RESPECT the pouch for the 1,000,000th time!
Gui, Ach:Add, Text, wp vThisAchievement8, RESPECT the pouch 5 times in a second
Gui, Ach:Add, Text, wp vThisAchievement9, RESPECT the pouch 10 times in a second
Gui, Ach:Add, Text, wp vThisAchievement10, RESPECT the pouch 15 times in a second
Gui, Ach:Add, Text, wp vThisAchievement11, Find the achievements tab ðŸ†
Gui, Ach:Add, Text, wp vThisAchievement12, ???
Gui, Ach:Add, Text, wp vThisAchievement13, Complete all other achievements
}
Gui, Ach:Show, w300 h375, Achievements
goto, addcount
return
Achievement1:
GuiControl, Ach:, ThisAchievement1, RESPECT the pouch for the first time ðŸ†
return
Achievement2:
GuiControl, Ach: text, ThisAchievement2, RESPECT the pouch for the 10th time ðŸ†
return
Achievement3:
GuiControl, Ach:text, ThisAchievement3, RESPECT the pouch for the 100th time ðŸ†
return
Achievement4:
GuiControl, Ach:text, ThisAchievement4, RESPECT the pouch for the 1,000th time ðŸ†
return
Achievement5:
GuiControl, Ach:text, ThisAchievement5, RESPECT the pouch for the 10,000th time ðŸ†
return
Achievement6:
GuiControl, Ach:text, ThisAchievement6, RESPECT the pouch for the 100,00th time ðŸ†
return
Achievement7:
GuiControl, Ach:text, ThisAchievement7, RESPECT the pouch for the 1,000,000th time! ðŸ†
return
Achievement8:
GuiControl, Ach:text, ThisAchievement8, RESPECT the pouch 5 times in a second ðŸ†
return
Achievement9:
GuiControl, Ach:text, ThisAchievement9, RESPECT the pouch 10 times in a second ðŸ†
return
Achievement10:
GuiControl, Ach:text, ThisAchievement10, RESPECT the pouch 15 times in a second ðŸ†
return
GuiClose:
ToolTip, Saving...
Sleep, 500
ExitApp