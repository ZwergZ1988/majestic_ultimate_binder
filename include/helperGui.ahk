#Requires AutoHotkey v2.0

createHelperGui() {
  helperGui := Gui("-MaximizeBox", "𝐌𝐚𝐣𝐞𝐬𝐭𝐢𝐜 𝐇𝐞𝐥𝐩𝐞𝐫")

  helperGui.Show("w595 h505")
  helperGui.BackColor := "000000"
  helperGui.SetFont("c0xFFFFFF")
  helperGui.Add("Text", "x155 y10 w120 h20 +0x200 +Border +0x1", "𝐇𝐨𝐭𝐤𝐞𝐲𝐬")
  helperGui.Add("Text", "x375 y10 w138 h20 +0x200 +Border +0x1", "𝐏𝐞𝐫𝐬𝐨𝐧𝐚𝐥𝐢𝐳𝐚𝐭𝐢𝐨𝐧")
  helperGui.Add("Text", "x155 y480 w190 h20 +0x200 +Border +0x1", "𝐌𝐚𝐣𝐞𝐬𝐭𝐢𝐜 𝐇𝐞𝐥𝐩𝐞𝐫 𝐛𝐲 𝐊𝐢𝐜𝐤𝐋𝐨𝐬")
  ;===================================================================================
  ;------------------------------------------------------------------------------------------------------------
  ;                                    	  		-----Картинка-----
  ;------------------------------------------------------------------------------------------------------------ 
  ;===================================================================================
  helperGui.Add("Picture", "x365 y205 w215 h300", A_ScriptDir "\img\back.png")
  ;===================================================================================
  ;------------------------------------------------------------------------------------------------------------
  ;                                    		-----Левый верхний-----
  ;------------------------------------------------------------------------------------------------------------
  ;===================================================================================
  ManuButton := helperGui.Add("Button", "x10 y10 w113 h27", "ИНФОРМАЦИЯ")
  ManuButton.OnEvent("Click", ManuButton_Click)
  HotKeyButton := helperGui.Add("Button", "x10 y45 w113 h27", "БИНДЫ")
  HotKeyButton.OnEvent("Click", HotKeyButton_Click)
  Info1Button := helperGui.Add("Button", "x10 y80 w113 h27", "КОМАНДЫ")
  Info1Button.OnEvent("Click", Info1Button_Click)
  ComButton := helperGui.Add("Button", "x10 y115 w113 h27", "СОКРАЩЕНИЯ")
  ComButton.OnEvent("Click", ComButton_Click)
  MirButton := helperGui.Add("Button", "x10 y150 w113 h27", "МИРАНДА")
  MirButton.OnEvent("Click", MirButton_Click)
    
  ManuButton_Click(x, y) {
    Manu()  
  }
  HotKeyButton_Click(x,y) {
    HotKey()
  }
  Info1Button_Click(x,y) {
    Info1()
  }
  ComButton_Click(x,y) {
    Com()
  }
  MirButton_Click(x,y) {
    Mir()
  }
  
  
  ;===================================================================================
  ;------------------------------------------------------------------------------------------------------------
  ;                                    		-----Левый нижний-----
  ;------------------------------------------------------------------------------------------------------------
  ;===================================================================================
  SaveDataButton := helperGui.Add("Button", "x10 y415 w113 h25", "𝐒𝐀𝐕𝐄")
  ;SaveDataButton.OnEvent("Click", SaveDataButton_Click)
  relogButton := helperGui.Add("Button", "x10 y445 w113 h25", "𝐑𝐄𝐋𝐎𝐀𝐃")
  ;relogButton.OnEvent("Click", relogButton_Click)
  exitButton := helperGui.Add("Button", "x10 y475 w113 h25", "𝐄𝐗𝐈𝐓")
  ;exitButton.OnEvent("Click", exitButton_Click)
  ;===================================================================================
  ;------------------------------------------------------------------------------------------------------------
  ;                                    	  -----Правый блок кнопок-----
  ;------------------------------------------------------------------------------------------------------------
  ;===================================================================================
  badgeButton := helperGui.Add("Button", "x300 y38 w138 h25", "𝐁𝐀𝐃𝐆𝐄")
  ;badgeButton.OnEvent("Click", badgeButton_Click)
  personaButton := helperGui.Add("Button", "x445 y38 w138 h25", "𝐕𝐈𝐒𝐈𝐓𝐈𝐍𝐆 𝐂𝐀𝐑𝐃")
  ;personaButton.OnEvent("Click", personaButton_Click)
  ;===================================================================================
  ;------------------------------------------------------------------------------------------------------------
  ;                                    	-----GUI HotKey-----
  ;------------------------------------------------------------------------------------------------------------
  ;===================================================================================
  helperGui.Add("Hotkey", "x156 y40 w48 h21 vHot1") ; , KEY1)
  helperGui.Add("Hotkey", "x156 y65 w48 h21 vHot3") ; , KEY3)
  helperGui.Add("Hotkey", "x156 y90 w48 h21 vHot5") ; , KEY5)
  helperGui.Add("Hotkey", "x156 y115 w48 h21 vHot9") ; , KEY9)
  helperGui.Add("Hotkey", "x156 y140 w48 h21 vHot10") ; , KEY10)
  helperGui.Add("Hotkey", "x156 y165 w48 h21 vHot11") ; , KEY11)
  helperGui.Add("Hotkey", "x156 y190 w48 h21 vHot12") ; , KEY12)
  helperGui.Add("Hotkey", "x156 y215 w48 h21 vHot17") ; , KEY17)
  helperGui.Add("Hotkey", "x156 y240 w48 h21 vHot18") ; , KEY18)
  helperGui.Add("Hotkey", "x156 y265 w48 h21 vHot19") ; , KEY19)
  ;===================================================================================
  ;------------------------------------------------------------------------------------------------------------
  ;                                	-----GUI Расшифровок-----
  ;------------------------------------------------------------------------------------------------------------
  ;===================================================================================
  helperGui.Add("Text", "x213 y43 w70 h14 +0x200", "𝐑𝐄𝐋𝐎𝐆")
  helperGui.Add("Text", "x213 y68 w70 h14 +0x200", "𝐌𝐈𝐑𝐀𝐍𝐃𝐀")
  helperGui.Add("Text", "x213 y93 w60 h14 +0x200", "𝐁𝐀𝐃𝐆𝐄")
  helperGui.Add("Text", "x213 y118 w70 h14 +0x200", "𝐂𝐎𝐃𝐄-𝟏")
  helperGui.Add("Text", "x213 y143 w70 h14 +0x200", "𝐂𝐎𝐃𝐄-𝟎")
  helperGui.Add("Text", "x213 y168 w70 h14 +0x200", "𝐂𝐎𝐃𝐄-𝟕")
  helperGui.Add("Text", "x213 y193 w70 h14 +0x200", "𝐂𝐎𝐃𝐄-𝟔")
  helperGui.Add("Text", "x213 y218 w70 h14 +0x200", "𝐁𝐀𝐃𝐆𝐄 (𝐐)")
  helperGui.Add("Text", "x213 y243 w70 h14 +0x200", "𝐀𝐑𝐌𝐎𝐑")
  helperGui.Add("Text", "x213 y268 w70 h14 +0x200", "Памятка")
  ;===================================================================================
  ;------------------------------------------------------------------------------------------------------------
  ;                                	-----Radial Расшифровка-----
  ;------------------------------------------------------------------------------------------------------------
  ;===================================================================================
  helperGui.Add("Text", "x381 y75 w125 h20 +0x200 +Border +0x1", "𝐑𝐞𝐬𝐨𝐥𝐮𝐭𝐢𝐨𝐧")
  helperGui.Add("Radio", "x320 y105 w80 h15 Group vRadio1Rez Checked%Radio1Rez%", "𝟏𝟗𝟐𝟎𝐱𝟏𝟎𝟖𝟎")
  helperGui.Add("Radio", "x415 y105 w80 h15 vRadio2Rez Checked%Radio2Rez%", "𝟏𝟔𝟖𝟎𝐱𝟏𝟎𝟓𝟎")
  helperGui.Add("Radio", "x510 y105 w80 h15 vRadio3Rez Checked%Radio3Rez%", "𝟏𝟒𝟒𝟎𝐱𝟗𝟎𝟎")
  helperGui.Add("Radio", "x320 y130 w80 h15 vRadio4Rez Checked%Radio4Rez%", "𝟏𝟐𝟖𝟎𝐱𝟏𝟎𝟐𝟒")
  helperGui.Add("Radio", "x415 y130 w80 h15 vRadio5Rez Checked%Radio5Rez%", "𝟏𝟐𝟖𝟎𝐱𝟕𝟐𝟎")
  helperGui.Add("Radio", "x510 y130 w80 h15 vRadio6Rez Checked%Radio6Rez%", "𝟏𝟗𝟐𝟎𝐱𝟏𝟗𝟐𝟎")

  return helperGui
}