#Requires AutoHotkey v2.0

;===================================================================================
;------------------------------------------------------------------------------------------------------------
;                                        -----Mane Ini KEY-----
;------------------------------------------------------------------------------------------------------------
;===================================================================================
	key1 := IniRead("Settings.ini", "KeySetup", "KEY1")
	key3 := IniRead("Settings.ini", "KeySetup", "KEY3")
	key4 := IniRead("Settings.ini", "KeySetup", "KEY4")
	key5 := IniRead("Settings.ini", "KeySetup", "KEY5")
	key6 := IniRead("Settings.ini", "KeySetup", "KEY6")
	key7 := IniRead("Settings.ini", "KeySetup", "KEY7")
	key8 := IniRead("Settings.ini", "KeySetup", "KEY8")
	key9 := IniRead("Settings.ini", "KeySetup", "KEY9")
	key10 := IniRead("Settings.ini", "KeySetup", "KEY10")
	key11 := IniRead("Settings.ini", "KeySetup", "KEY11")
	key12 := IniRead("Settings.ini", "KeySetup", "KEY12")
	key13 := IniRead("Settings.ini", "KeySetup", "KEY13")
	key14 := IniRead("Settings.ini", "KeySetup", "KEY14")
	key15 := IniRead("Settings.ini", "KeySetup", "KEY15")
	key16 := IniRead("Settings.ini", "KeySetup", "KEY16")
	key17 := IniRead("Settings.ini", "KeySetup", "KEY17")
	key18 := IniRead("Settings.ini", "KeySetup", "KEY18")
	key19 := IniRead("Settings.ini", "KeySetup", "KEY19")
;===================================================================================
;------------------------------------------------------------------------------------------------------------
;                                        -----Mane Ini Radial-----
;------------------------------------------------------------------------------------------------------------
;===================================================================================
	Radio1Rez := IniRead("Settings.ini", "Resolution", "1920x1080")
	Radio2Rez := IniRead("Settings.ini", "Resolution", "1680x1050")
	Radio3Rez := IniRead("Settings.ini", "Resolution", "1440x900")
	Radio4Rez := IniRead("Settings.ini", "Resolution", "1280x1024")
	Radio5Rez := IniRead("Settings.ini", "Resolution", "1280x720")
	Radio6Rez := IniRead("Settings.ini", "Resolution", "1920x1920")
	Radio1Gen := IniRead("Settings.ini", "Gender", "Мужской")
	Radio2Gen := IniRead("Settings.ini", "Gender", "Женский")
;===================================================================================
;------------------------------------------------------------------------------------------------------------
;                                    -----Mane Ini Peref-----
;------------------------------------------------------------------------------------------------------------
;===================================================================================
	sTime := IniRead("Settings.ini", "timestamp", "sTime")
;===================================================================================
	cX := IniRead("Settings.ini", "cord", "cX")
	cY := IniRead("Settings.ini", "cord", "cY")
	c2Y := IniRead("Settings.ini", "cord", "c2Y")
;===================================================================================
	mMir1 := IniRead("Settings.ini", "Miranda", "mMir1")
	mMir2 := IniRead("Settings.ini", "Miranda", "mMir2")
	mMir3 := IniRead("Settings.ini", "Miranda", "mMir3")
	mMir4 := IniRead("Settings.ini", "Miranda", "mMir4")
	mMir5 := IniRead("Settings.ini", "Miranda", "mMir5")
;===================================================================================
	bSteal1 := IniRead("Settings.ini", "Steal", "bSteal1")
	bSteal2 := IniRead("Settings.ini", "Steal", "bSteal2")
;===================================================================================
	rColor1 := IniRead("Settings.ini", "Color", "rColor1")
	rColor2 := IniRead("Settings.ini", "Color", "rColor2")
;===================================================================================
	gbadge := IniRead("Settings.ini", "Badge", "gbadge")
;===================================================================================
	qfrac := IniRead("Settings.ini", "Personal", "qfrac")
	wTel := IniRead("Settings.ini", "Personal", "wTel")
	vdis := IniRead("Settings.ini", "Personal", "vdis")

  if vdis=ERROR {
;===================================================================================
;------------------------------------------------------------------------------------------------------------
;                                    -----Предустановка-----
;------------------------------------------------------------------------------------------------------------
;===================================================================================
	IniWrite("LSPD", "Settings.ini", "Personal", "qfrac")
;===================================================================================
	IniWrite("На груди висит бейджик: [LSPD |  CPD | Demion Soprano | 123123]", "Settings.ini", "Badge", "gbadge")
;===================================================================================
	IniWrite("123-123-123", "Settings.ini", "Personal", "wTel")
;===================================================================================
	IniWrite("zwergz@disc.com", "Settings.ini", "Personal", "vdis")
;===================================================================================
	IniWrite("1000", "Settings.ini", "timestamp", "sTime")
;===================================================================================
	IniWrite(0, "Settings.ini", "cord", "cX")
	IniWrite(0, "Settings.ini", "cord", "cY")
	IniWrite(530, "Settings.ini", "cord", "c2Y")
;===================================================================================
	IniWrite(750, "Settings.ini", "Steal", "bSteal1")
	IniWrite(45, "Settings.ini", "Steal", "bSteal2")
;===================================================================================
	IniWrite("Yellow", "Settings.ini", "Color", "rColor1")
	IniWrite("White", "Settings.ini", "Color", "rColor2")
;===================================================================================
	IniWrite("1. Вы имеете право хранить молчание.", "Settings.ini", "Miranda", "mMir1")
	IniWrite("2. Все что Вы скажите может и будет использовано против Вас.", "Settings.ini", "Miranda", "mMir2")
	IniWrite("3. Вы имеете право на пользование услугами адвоката.", "Settings.ini", "Miranda", "mMir3")
	IniWrite("4. Если вы не можете оплатить услуги адвоката он будет предоставлен вам государством бесплатно.", "Settings.ini", "Miranda", "mMir4")
	IniWrite("5. Вы имеете право на пользование личным мобильным телефоном длительностью до 3 минут.", "Settings.ini", "Miranda", "mMir5")
;===================================================================================
	IniWrite(1, "Settings.ini", "Gender", "Мужской")
	IniWrite("Tab", "Settings.ini", "KeySetup", "key4")
		reload
;===================================================================================
}	