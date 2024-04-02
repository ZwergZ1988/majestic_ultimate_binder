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
  SaveDataButton.OnEvent("Click", SaveDataButton_Click)
  SaveDataButton_Click(*) {
		;Gui, Submit, NoHide
      Radio1Rez := Radio1RezRadio.Value  
      IniWrite(Radio1Rez, "Settings.ini", "Resolution", "1920x1080")
			Radio2Rez := Radio2RezRadio.Value
      IniWrite(Radio2Rez, "Settings.ini", "Resolution", "1680x1050")
			Radio3Rez := Radio3RezRadio.Value
      IniWrite(Radio3Rez, "Settings.ini", "Resolution", "1440x900")
			Radio4Rez := Radio4RezRadio.Value
      IniWrite(Radio4Rez, "Settings.ini", "Resolution", "1280x1024")
			Radio5Rez := Radio5RezRadio.Value
      IniWrite(Radio5Rez, "Settings.ini", "Resolution", "1280x720")
			Radio6Rez := Radio6RezRadio.Value
      IniWrite(Radio6Rez, "Settings.ini", "Resolution", "1920x1920")
			
      Radio1Gen := Radio1GenRadio.Value  
      IniWrite(Radio1Gen, "Settings.ini", "Gender", "Мужской")
      Radio2Gen := Radio2GenRadio.Value  
			IniWrite(Radio2Gen, "Settings.ini", "Gender", "Женский")

      key1 := Hotkey1.Value
      key3 := Hotkey3.Value
      key5 := Hotkey5.Value
      key9 := Hotkey9.Value
      key10 := Hotkey10.Value
      key11 := Hotkey11.Value
      key12 := Hotkey12.Value
      key17 := Hotkey17.Value
      key18 := Hotkey18.Value
      key19 := Hotkey19.Value

			IniWrite(key1, "Settings.ini", "KeySetup", "KEY1")
			IniWrite(key3, "Settings.ini", "KeySetup", "KEY3")
			;IniWrite(key4, "Settings.ini", "KeySetup", "KEY4")
			IniWrite(key5, "Settings.ini", "KeySetup", "KEY5")
			;IniWrite(key6, "Settings.ini", "KeySetup", "KEY6")
			;IniWrite(key7, "Settings.ini", "KeySetup", "KEY7")
			;IniWrite(key8, "Settings.ini", "KeySetup", "KEY8")
			IniWrite(key9, "Settings.ini", "KeySetup", "KEY9")
			IniWrite(key10, "Settings.ini", "KeySetup", "KEY10")
			IniWrite(key11, "Settings.ini", "KeySetup", "KEY11")
			IniWrite(key12, "Settings.ini", "KeySetup", "KEY12")
			;IniWrite(key13, "Settings.ini", "KeySetup", "KEY13")
			;IniWrite(key14, "Settings.ini", "KeySetup", "KEY14")
			;IniWrite(key15, "Settings.ini", "KeySetup", "KEY15")
			;IniWrite(key16, "Settings.ini", "KeySetup", "KEY16")
			IniWrite(key17, "Settings.ini", "KeySetup", "KEY17")
			IniWrite(key18, "Settings.ini", "KeySetup", "KEY18")
			IniWrite(key19, "Settings.ini", "KeySetup", "KEY19")
			;MsgBox("SAVE", "Данные сохранены.")
		Reload
		return
	}
  relogButton := helperGui.Add("Button", "x10 y445 w113 h25", "𝐑𝐄𝐋𝐎𝐀𝐃")
  relogButton.OnEvent("Click", (*) => Reload())
  exitButton := helperGui.Add("Button", "x10 y475 w113 h25", "𝐄𝐗𝐈𝐓")
  exitButton.OnEvent("Click", (*) => ExitApp())
  ;===================================================================================
  ;------------------------------------------------------------------------------------------------------------
  ;                                    	  -----Правый блок кнопок-----
  ;------------------------------------------------------------------------------------------------------------
  ;===================================================================================
  badgeButton := helperGui.Add("Button", "x300 y38 w138 h25", "𝐁𝐀𝐃𝐆𝐄")
  badgeButton.OnEvent("Click", (*) => badge())
  personaButton := helperGui.Add("Button", "x445 y38 w138 h25", "𝐕𝐈𝐒𝐈𝐓𝐈𝐍𝐆 𝐂𝐀𝐑𝐃")
  personaButton.OnEvent("Click", (*) => persona())
  ;===================================================================================
  ;------------------------------------------------------------------------------------------------------------
  ;                                    	-----GUI HotKey-----
  ;------------------------------------------------------------------------------------------------------------
  ;===================================================================================
  Hotkey1 := helperGui.Add("Hotkey", "x156 y40 w48 h21", key1)  
  Hotkey3 := helperGui.Add("Hotkey", "x156 y65 w48 h21", key3)
  Hotkey5 := helperGui.Add("Hotkey", "x156 y90 w48 h21", key5)
  Hotkey9 := helperGui.Add("Hotkey", "x156 y115 w48 h21", key9)
  Hotkey10 := helperGui.Add("Hotkey", "x156 y140 w48 h21", key10)
  Hotkey11 := helperGui.Add("Hotkey", "x156 y165 w48 h21", key11)
  Hotkey12 := helperGui.Add("Hotkey", "x156 y190 w48 h21", key12)
  Hotkey17 := helperGui.Add("Hotkey", "x156 y215 w48 h21", key17)
  Hotkey18 := helperGui.Add("Hotkey", "x156 y240 w48 h21", key18)
  Hotkey19 := helperGui.Add("Hotkey", "x156 y265 w48 h21", key19)
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
  Radio1RezRadio := helperGui.Add("Radio", "x320 y105 w80 h15 Group Checked" Radio1Rez, "𝟏𝟗𝟐𝟎𝐱𝟏𝟎𝟖𝟎")
  Radio2RezRadio := helperGui.Add("Radio", "x415 y105 w80 h15 Checked" Radio2Rez, "𝟏𝟔𝟖𝟎𝐱𝟏𝟎𝟓𝟎")
  Radio3RezRadio := helperGui.Add("Radio", "x510 y105 w80 h15 Checked" Radio3Rez, "𝟏𝟒𝟒𝟎𝐱𝟗𝟎𝟎")
  Radio4RezRadio := helperGui.Add("Radio", "x320 y130 w80 h15 Checked" Radio4Rez, "𝟏𝟐𝟖𝟎𝐱𝟏𝟎𝟐𝟒")
  Radio5RezRadio := helperGui.Add("Radio", "x415 y130 w80 h15 Checked" Radio5Rez, "𝟏𝟐𝟖𝟎𝐱𝟕𝟐𝟎")
  Radio6RezRadio := helperGui.Add("Radio", "x510 y130 w80 h15 Checked" Radio6Rez, "𝟏𝟗𝟐𝟎𝐱𝟏𝟗𝟐𝟎")

  helperGui.Add("Text", "x381 y160 w125 h20 +0x200 +Border +0x1", "𝐆𝐞𝐧𝐝𝐞𝐫")
  Radio1GenRadio := helperGui.Add("Radio", "x365 y190 w80 h15 Group Checked" Radio1Gen, "Мужской")
  Radio2GenRadio := helperGui.Add("Radio", "x460 y190 w80 h15 Checked" Radio2Gen, "Женский")

  return helperGui
}