#Requires AutoHotkey v2.0

;------------------------------------------------------------------------------------------------------------
;                                    -----Mane KEY-----
;------------------------------------------------------------------------------------------------------------
;===================================================================================
	;Hotkey(key1, rel, "On") ; , UseErrorLevel)
	;Hotkey(key1, "Off") ; , UseErrorLevel)
	;Hotkey(key3, "Off") ; , UseErrorLevel)
	;Hotkey(key3, Mira, "On") ; , UseErrorLevel)
	;Hotkey(key4, "Off") ; , UseErrorLevel)
	;Hotkey(key4, Inventory, "On") ; , UseErrorLevel)
	;Hotkey(key5, "Off") ; , UseErrorLevel)
	;Hotkey(key5, qBadge, "On") ; , UseErrorLevel)
	;;Hotkey(key6, "Off") ; , UseErrorLevel)
	;;Hotkey(key6, Mega1, "On") ; , UseErrorLevel)
	;;Hotkey(key7, "Off") ; , UseErrorLevel)
	;;Hotkey(key7, Mega2, "On") ; , UseErrorLevel)
	;Hotkey(key8, "Off") ; , UseErrorLevel)
	;Hotkey(key8, Geo, "On") ; , UseErrorLevel)
	;Hotkey(key9, "Off") ; , UseErrorLevel)
	;Hotkey(key9, CODE1, "On") ; , UseErrorLevel)
	;Hotkey(key10, "Off") ; , UseErrorLevel)
	;Hotkey(key10, CODE0, "On") ; , UseErrorLevel)
	;Hotkey(key11, "Off") ; , UseErrorLevel)
	;Hotkey(key11, CODE7, "On") ; , UseErrorLevel)
	;Hotkey(key12, "Off") ; , UseErrorLevel)
	;Hotkey(key12, CODE6, "On") ; , UseErrorLevel)
	;;Hotkey(key13, "Off") ; , UseErrorLevel)
	;;Hotkey(key13, Cam, "On") ; , UseErrorLevel)
	;;Hotkey(key14, "Off") ; , UseErrorLevel)
	;;Hotkey(key14, CamAC, "On") ; , UseErrorLevel)
	;Hotkey(key15, "Off") ; , UseErrorLevel)
	;Hotkey(key15, Signl, "On") ; , UseErrorLevel)
	;Hotkey(key16, "Off") ; , UseErrorLevel)
	;Hotkey(key16, steal, "On") ; , UseErrorLevel)
	;Hotkey(key17, "Off") ; , UseErrorLevel)
	;Hotkey(key17, Badgeq, "On") ; , UseErrorLevel)
	;Hotkey(key18, "Off") ; , UseErrorLevel)
	;Hotkey(key18, Arm, "On") ; , UseErrorLevel)
	;Hotkey(key19, "Off") ; , UseErrorLevel)
	;Hotkey(key19, Help, "On") ; , UseErrorLevel)

;===================================================================================
;------------------------------------------------------------------------------------------------------------
;                                                -----HotKeys-----
;------------------------------------------------------------------------------------------------------------
;===================================================================================
steal() {
	SendMessage(0x50,, 0x4190419,, "A")
	SendInput("{t}")
	sleep 200
	SendInput("f Займусь похищением.")
	sleep 200
	SendInput("{enter}")
	sleep %sTime%
	SendInput("{t}")
	sleep 200
	SendInput("dep to all: %qfrac% займётся переговорами с захватчиками, ожидайте дальшейших указаний...")
	sleep 200
	SendInput("{enter}")
	return
}
;===================================================================================
rel() {
;	Buttonrel:
	Reload
	return
}
;===================================================================================
CODE0() {
	SendInput("{t}")
	sleep 200
	SendInput("mark CODE-0 to ALL")
	sleep 200
	SendInput("{enter}")
	return
}
;===================================================================================
CODE1() {
	SendInput("{t}")
	sleep 200
	SendInput("mark CODE-1 to ALL")
	sleep 200
	SendInput("{enter}")
	return
}
;===================================================================================
CODE7() {
	SendInput("{t}")
	sleep 200
	SendInput("mark CODE-7 to ALL")
	sleep 200
	SendInput("{enter}")
	return
}
;===================================================================================
CODE6() {
	SendInput("{t}")
	sleep 200
	SendInput("mark CODE-6 to ALL")
	sleep 200
	SendInput("{enter}")
	return
}
;===================================================================================
Geo() {
	SendInput("{t}")
	sleep 200
	SendInput("mark code 10-20 to %qfrac%")
	sleep 200
	SendInput("{enter}")
	return
 }
;===================================================================================
qBadge() {
	SendMessage(0x50,, 0x4190419,, "A")
	SendInput("{t}")
	sleep 200
	SendInput("do %gbadge%.")
	sleep 200
	SendInput("{enter}")
	return
}
;===================================================================================
Badgeq() {
	if (Radio1Gen==1) {
		SendMessage(0x50,, 0x4190419,, "A")
	  SendInput("{t}")
		sleep 200
	  SendInput("me присмотрелся к человеку напротив")
		sleep 200
	  SendInput("{enter}")
		sleep %sTime%
	  SendInput("{t}")
		sleep 200
	  SendInput("do Какой символ идентификации можно увидеть на @ и что за информация на нем содержится?{Left 39}")
	} else if (Radio2Gen==1) {
		SendMessage(0x50,, 0x4190419,, "A")
	  SendInput("{t}")
		sleep 200
	  SendInput("me присмотрелась к опозновательному знаку человека напротив")
		sleep 200
	  SendInput("{enter}")
		sleep %sTime%
	  SendInput("{t}")
		sleep 200
	  SendInput("do Какой опознавательный знак на человеке и что на нём написано?")
		sleep 200
	  SendInput("{enter}")
	} else {
    MsgBox(16, "Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
	}
	return
}
;===================================================================================
Inventory() {
	SendInput("{i}")
	return
}
;===================================================================================
Signl() {
	SendMessage(0x50,, 0x4190419,, "A")
	SendInput("{t}")
	sleep 200
	SendInput("dep to all: Сработала ли сигнализация в каком либо частном/муниципальном заведении?")
	sleep 200
	SendInput("{enter}")
	return
}

Arm() {
  if (Radio1Rez==1) {
    sendinput("{i}")
    sleep 90
    MouseMove(1410, 405)
    sleep 20
    MouseClick("Right")
    
    sleep 20
    MouseMove(1485, 425)
    sleep 10
    MouseClick("Left")
    sleep 20
    sendinput("{Esc}")
  } else if (Radio2Rez==1) {
    sendinput("{i}")
    sleep 50
    MouseMove(1275, 405)
    sleep 20
    MouseClick("Right")
    
    sleep 20
    MouseMove(1360, 430)
    sleep 10
    MouseClick("Left")
    sleep 20
    sendinput("{Esc}")
  } else if (Radio3Rez==1) {
    sendinput("{i}")
    sleep 50
    MouseMove(1095, 345)
    sleep 20
    MouseClick("Right")
    
    sleep 20
    MouseMove(1170, 370)
    sleep 10
    MouseClick("Left")
    sleep 20
    sendinput("{Esc}")
  } else if (Radio4Rez==1) {
    sendinput("{i}")
    sleep 50
    MouseMove(1000, 415)
    sleep 20
    MouseClick("Right")
    
    sleep 20
    MouseMove(1015, 445)
    sleep 10
    MouseClick("Left")
    sleep 20
    sendinput("{Esc}")
  } else if (Radio5Rez==1) {
    sendinput("{i}")
    sleep 50
    MouseMove(935, 280)
    sleep 20
    MouseClick("Right")
    
    sleep 20
    MouseMove(1000, 295)
    sleep 10
    MouseClick("Left")
    sleep 20
    sendinput("{Esc}")
  } else if (Radio6Rez==1) {
    sendinput("{i}")
    sleep 50
    MouseMove(830, 300)
    sleep 20
    MouseClick("Right")
    
    sleep 20
    MouseMove(885, 320)
    sleep 10
    MouseClick("Left")
    sleep 20
    sendinput("{Esc}")
  } else { 
    MsgBox(16, "Ошибка, К сожалению, твой монитор не подходит под данную функцию, настрой Resolution.")
  }
  return
}
;===================================================================================
defolt() {
  Filedelete("%A_ScriptDir%\Settings.ini")
  Reload
  return
}
;===================================================================================
;relog() {
;;  ButtonПерезапуститьскрипт:
;  Reload
;  return
;}
;===================================================================================
exit() {
;  ButtonЗакрытьскрипт:
  exitResult := MsgBox("Exit", "Вы действительно хотите закрыть скрипт?")
  if (exitResult = "Yes") {
    ExitApp
  } else if (exitResult = "No") {
    return
  }  
  return
}
;===================================================================================
persona() {
  personaGui := Gui("-MaximizeBox", "Ваша Визитка")
  personaGui.Show("w250 h110")
  personaGui.BackColor := "838d96"
  personaGui.SetFont("c0x000000")
  vdisEdit := personaGui.Add("Edit", "x5 y10 w145 h21", vdis)	
	wTelEdit := personaGui.Add("Edit", "x5 y35 w145 h21", wTel)
  qfracEdit := personaGui.Add("Edit", "x5 y60 w145 h21", qfrac)  
	personaGui.Add("Text", "x140 y8 w115 h23 +0x200 +0x1", "Discord Name")
  personaGui.Add("Text", "x140 y57 w115 h23 +0x200 +0x1", "Ваша фракция")
  personaGui.Add("Text", "x140 y33 w115 h23 +0x200 +0x1", "Номер телефона")
  personaGuiAcceptButton := personaGui.Add("Button", "x5 y85 w118 h20", "𝐀𝐜𝐜𝐞𝐩𝐭")
  personaGuiAcceptButton.OnEvent("Click", personaGuiAcceptButton_Click)
	personaGuiAcceptButton_Click(*) {
		personaGui.Submit(false)
		vdis := vdisEdit.Value
		qfrac := qfracEdit.Value
		wTel := wTelEdit.Value
		IniWrite(vdis, "Settings.ini", "Personal", "vdis")
		IniWrite(qfrac, "Settings.ini", "Personal", "qfrac")
		IniWrite(wTel, "Settings.ini", "Personal", "wTel")
		MsgBox("Данные сохранены:`n" vdis "`n" qfrac "`n" wTel, "SAVE")
		Reload
	}	
  personaGuiDeclineButton := personaGui.Add("Button", "x128 y85 w120 h20", "𝐃𝐞𝐜𝐥𝐢𝐧𝐞")
  personaGuiDeclineButton.OnEvent("Click", (*) => personaGui.Destroy())
  return
}
;===================================================================================
Mir() {
  mirandaGui := Gui("-MaximizeBox", "𝐌𝐢𝐫𝐚𝐧𝐝𝐚")
  mirandaGui.Show("w510 h165")
  mirandaGui.BackColor := "838d96"
  mirandaGui.SetFont("c0x000000")
  mMir1Edit := mirandaGui.Add("Edit", "x5 y5 w500 h20", mMir1)
  mMir2Edit := mirandaGui.Add("Edit", "x5 y30 w500 h20", mMir2)
  mMir3Edit := mirandaGui.Add("Edit", "x5 y55 w500 h20", mMir3)
  mMir4Edit := mirandaGui.Add("Edit", "x5 y80 w500 h20", mMir4)
  mMir5Edit := mirandaGui.Add("Edit", "x5 y105 w500 h20", mMir5)
  mirandaGuiAcceptButton := mirandaGui.Add("Button", "x50 y130 w400 h30", "𝐀𝐜𝐜𝐞𝐩𝐭")
  mirandaGuiAcceptButton.OnEvent("Click", mirandaGuiAcceptButton_Click)
	mirandaGuiAcceptButton_Click(*) {
		;Gui, 7: Submit, NoHide
		mMir1 := mMir1Edit.Value
		mMir2 := mMir2Edit.Value
		mMir3 := mMir3Edit.Value
		mMir4 := mMir4Edit.Value
		mMir5 := mMir5Edit.Value
		IniWrite(mMir1, "Settings.ini", "Miranda", "mMir1")
		IniWrite(mMir2, "Settings.ini", "Miranda", "mMir2")
		IniWrite(mMir3, "Settings.ini", "Miranda", "mMir3")
		IniWrite(mMir4, "Settings.ini", "Miranda", "mMir4")
		IniWrite(mMir5, "Settings.ini", "Miranda", "mMir5")
		MsgBox("Данные сохранены:`n"
		mMir1 "`n"
		mMir2 "`n"
		mMir3 "`n"
		mMir4 "`n"
		mMir5, "SAVE"
		)
		Reload
		return
	}
  return
}

badge() {
  badgeGui := Gui("-MaximizeBox", "Ваш Жетон")
  badgeGui.Show("w360 h75")
  badgeGui.BackColor := "838d96"
  badgeGui.SetFont("c0x000000")
  gbadgeEdit := badgeGui.Add("Edit", "x5 y5 w350 h35", gbadge)
  badgeGui.Add("Text", "x5 y27 w260 h42 +0x200 +0x1", "Пишем полную отыгровку, не ставя '/do'.")
  badgeGuiAcceptButton := badgeGui.Add("Button", "x260 y43 w45 h28", "𝐀𝐜𝐜𝐞𝐩𝐭")
  badgeGuiAcceptButton.OnEvent("Click", badgeGuiAcceptButton_Click)
	badgeGuiAcceptButton_Click(*) {
		badgeGui.Submit(false)
		gbadge := gbadgeEdit.Value
		IniWrite(gbadge, "Settings.ini", "Badge", "gbadge")
		MsgBox("Данные сохранены:`n" gbadge, "SAVE")
		Reload
		return
	}
  badgeGuiDeclineButton := badgeGui.Add("Button", "x310 y43 w45 h28", "𝐃𝐞𝐜𝐥𝐢𝐧𝐞")
  badgeGuiDeclineButton.OnEvent("Click", (*) => badgeGui.Destroy())
  return
}  

;===================================================================================

;------------------------------------------------------------------------------------------------------------
;                                                -----Оверлеи-----
;------------------------------------------------------------------------------------------------------------

;===================================================================================
Mira() {
	State3:=!State3
	If state3 {
	CustomColor3 := "EEAA99"
	miraGui := Gui("+LastFound +AlwaysOnTop -Caption +ToolWindow") 
	miraGui.BackColor :=  "black"
	miraGui.SetFont( "s8")
	miraGui.SetFont( "cYellow")
	miraGui.SetFont( "w650")
	miraGui.SetFont( "verdana")
	miraGui.ADD("TEXT","cBlue","==============================================================================================")
	miraGui.ADD("TEXT","cRed","`                        		 Правило введёное Верховным судом USA:")
	miraGui.ADD("TEXT","c%rColor2%", "%mMir1%")
	miraGui.ADD("TEXT","c%rColor2%", "%mMir2%")
	miraGui.ADD("TEXT","c%rColor2%", "%mMir3%")
	miraGui.ADD("TEXT","c%rColor2%", "%mMir4%")
	miraGui.ADD("TEXT","c%rColor2%", "%mMir5%")
	miraGui.ADD("TEXT","cBlue","==============================================================================================")
	WinSetTransparent(180, miraGui)
	miraGui.Show("x0 y0 NoActivate")
	}
	Else
    miraGui.Destroy()
	return
}
;===================================================================================
Help() {
	State3 := !State3
	If state3 {
	CustomColor3 := "EEAA99"
	helpGui := Gui("+LastFound +AlwaysOnTop -Caption +ToolWindow ")
	helpGui.BackColor := "black"
	helpGui.SetFont("s8")
	helpGui.SetFont("c0x000000")
	helpGui.SetFont("w680")
	helpGui.SetFont("verdana")
	helpGui.ADD("TEXT","c%rColor2%", ".угон .нарко .фрапс .вин .тикет Розыск-.кпк")
	helpGui.ADD("TEXT","c%rColor2%", "Проверка личности: .бдкпк | .отпечатки | .кровь (в лаборатории) ")
	helpGui.ADD("TEXT","c%rColor2%", ".адвокат .прокурор .взятка .обыск .юр .кпз ")
	helpGui.ADD("TEXT","c%rColor2%", ".пут .пул .спавн .лиц .волна .госнабор")
	helpGui.ADD("TEXT","c%rColor2%", ".радио .визитка .кам .скам1/2 ")
	helpGui.ADD("TEXT","cRed", "Закон о гос.службе | Требовать удостоверение - ст. 14.2 ")
	helpGui.ADD("TEXT","cRed", "ПК | Опознание личности - ст. 15 | Отойти на 10 метров - ст. 20 пункт 2")
	helpGui.ADD("TEXT","cRed", "ПК | Обыск при проходе на закрытую территорию(холл) - ст. 23 пункт 2.1 ")
	helpGui.ADD("TEXT","c%rColor2%", "АК | Ложный вызов - ст. 6.3(5000$) Оск - ст. 7.1(5000$)")
	helpGui.ADD("TEXT","c%rColor2%", "АК | Мелкое хулиг. - ст. 9.1(10000$) Стрельба - ст. 10(5000$)")
	helpGui.ADD("TEXT","c%rColor2%", "АК | Хулиганство(Оск. гос. сотрудника) - ст. 9.2(20000$)")
	helpGui.ADD("TEXT","cGreen", "ДК | Остановка Авто - ст. 7(3000$) Выйти из машины - ст. 17 и 71")
	helpGui.ADD("TEXT","cGreen", "ДК | Предъяв.лицензию - ст.6(3000$) Основания для траф.стопа - ст. 70")
	helpGui.ADD("TEXT","cGreen", "ДК | Нет номера/грязный номер - ст. 66(15000$ и эвак.авто)")
	helpGui.ADD("TEXT","cGreen", "Текст при остановке авто - Я имею право остановить вас на основании")
	helpGui.ADD("TEXT","cGreen", "70 статьи дк, также требую выйти из машины на основании 17 и 71 статьи дк")
	helpGui.ADD("TEXT","cGreen", "и показать лицензии на основании 6 статьи дк. Это законные требования.")
	helpGui.ADD("TEXT","c%rColor1%", "Выход под залог запрещен: 6.3,6.4,12.1,12.2,12.3,12.12,12.14,13.6, ")
	helpGui.ADD("TEXT","c%rColor1%", "13.8, 14.1,14.2,16.2,16.17,17.1 ук. | Более чем по 3-ем статьям.")
	helpGui.ADD("TEXT","c%rColor1%", "Судимость выдается за 5 звезд. ")
	helpGui.ADD("TEXT","c%rColor1%", "НАНЕСЕНИЕ ТЕЛ.ПОВРЕЖДЕНИЙ/УБИЙСТВО - 6.1/(CR)6.2  4/5 звезд")
	helpGui.ADD("TEXT","c%rColor1%", "УГОН АВТО - 10.7  3 звезды")
	helpGui.ADD("TEXT","c%rColor1%", "УМЫШЛЕННОЕ ПОВРЕЖДЕНИЕ ЧУЖОГО ИМУЩ. - 10.8  3 звезды")
	helpGui.ADD("TEXT","c%rColor1%", "УМЫШЛЕННОЕ ПОВРЕЖДЕНИЕ ГОС.ИМУЩ. - 10.8.1  3 звезды	")
	helpGui.ADD("TEXT","c%rColor1%", "ЗАКРЫТЫЙ ОБЪЕКТ - 12.7  3 звезды")
	helpGui.ADD("TEXT","c%rColor1%", "НОШЕНИЕ ОРУЖИЯ - 12.8  4 звезды ")
	helpGui.ADD("TEXT","c%rColor1%", "НАРКОТА - 13.1/13.2/(CR)13.3 (3,7,20 грамм) - 2/4/5 звезды")
	helpGui.ADD("TEXT","c%rColor1%", "1 пак. - 1 грамм | до 3-х грамм(вкл.) - легально и изымается без статьи.")
	helpGui.ADD("TEXT","c%rColor1%", "ДАЧА ВЗЯТКИ - 15.5  3 звезды")
	helpGui.ADD("TEXT","c%rColor1%", "ПРОВОКАЦИЯ - 15.8  2 звезды")
	helpGui.ADD("TEXT","c%rColor1%", "ЧЕЛОВЕК НАХОДИТСЯ В РОЗЫСКЕ - 16.16  1 звезда")
	helpGui.ADD("TEXT","c%rColor1%", "(CR)ПОСЯГАТЕЛЬСТВО НА ЖИЗНЬ СОТРУДНИКА - 17.1  5 звезд")
	helpGui.ADD("TEXT","c%rColor1%", "ТЕЛ.ПОВРЕЖДЕНИЯ СОТРУДНИКУ - 17.2  3 звезды")
	helpGui.ADD("TEXT","c%rColor1%", "НЕПОДЧИНЕНИЕ ТРЕБОВАНИЯМ - 17.5  3 звезды ")
	helpGui.ADD("TEXT","c%rColor1%", "ОТКАЗ ОТ ОПЛАТЫ ШТРАФА - 17.6  3 звезды")
	helpGui.ADD("TEXT","c%rColor1%", "УКРЫВАТЕЛЬСТВО - 17.7  2 звезды")
	helpGui.ADD("TEXT","c%rColor1%", "ПОМЕХА ПРИ ЗАДЕРЖАНИИ - 17.8  2 звезды")
	helpGui.ADD("TEXT","c%rColor1%", "ПОБЕГ ПРИ ЗАДЕРЖАНИИ - 17.10  4 звезды")
  WinSetTransparent(180, helpGui)
	helpGui.Show("x1385 y56 NoActivate")
	}
	Else
    helpGui.Destroy()
	return
 }
;===================================================================================
;------------------------------------------------------------------------------------------------------------
;                                                -----Боксы-----
;------------------------------------------------------------------------------------------------------------
;===================================================================================
Manu() {
	MsgBox("Описание, О софте:`nСофт обширен и универсален для работы во всех гос структурах.`n`nНемного о кнопках:`n СОКРАЩЕНИЯ - Содержит в себе расшифровку всех сокращений.`n КОМАНДЫ - Содержит все доступные команды игрокам на сервере.`n БИНДЫ - Содержит описание всех хоткеев, расположенных на основном GUI.`n МИРАНДА - Тут идёт настройка для посказки, просто меняете текст на который нужен.`n BADGE - Отыгровка Вашего бейджа/нашивки/шеврона, не имеет значения, пишете отыгровку без '/do' и без точки в конце.`n VISITING CARD - Ваша визитка. Содержит номер/почту/отдел.`n SAVE - Нужна для сохранения всех параметров, выставленных в главном меню.`n`nУдаление горячих клавишь происходит на Backspace, после создания 'бинда' необходимо сохранение, как и после его снятия!`n`nЗакрывать скрип только на кнопку 'EXIT', в противном случае он уйдёт в фоновые процессы! `nВо всех случаях Ctrl + F10 завершит работу скрипта, а Ctrl + F9 его перезапустит!`n`n Создатель - 𝐤𝐞𝐥𝐥𝐲`n`n Реконструктор/Воссоздатель - 𝐃𝐢𝐬𝐜𝐨𝐫𝐝: 𝐲𝐚𝐬𝐡𝐢𝐳𝐚.𝐬.𝐛𝐞𝐤𝐨𝐧𝐨𝐦`n                                                       𝐘𝐨𝐮𝐓𝐮𝐛𝐞: 𝐊𝐢𝐜𝐤𝐋𝐨𝐬`n`n Создание биндера - ⋘𝟏𝟑.𝟎𝟕.𝟐𝟎𝟐𝟏⋙`n`n Дата воссоздания -⋘𝟏𝟒.𝟏𝟐.𝟐𝟎𝟐𝟐⋙`n`n Последнее обновление - ⋘𝟎𝟗.𝟎𝟑.𝟐𝟎𝟐𝟒⋙")
return
}
;===================================================================================
Info1() {
	MsgBox("Основные команды в чат, .тикет - написать тикет и эвакуировать авто.`n`n .отпечатки - отыгровка распознавания личности по отпечаткам пальцев.`n`n .кровь - отыгровка распознавания человека по анализу крови(брать в лаборатории).`n`n .юр - запрос на нарушение юрисдикции.`n`n .гос - обращение в рацию департамента ко всем гос.структурам '/dep to all:' и по аналогии к остальным - .пд .фиб .сд .санг .гов .емс .вн.`n`n .кпк - выдать розыск.`n`n .бдкпк - когда нет документов, идет отыгровка, как вы делаете фото, после чего в базе данных чекаете человека.`n`n .кпз - отыгровка, как вы заводите человека в кпз.`n`n .нарко - проверка неизвестного вещества. проще говоря док-ва, что у человека наркота, а не чай с чабрецом.`n`n .взятка - процесс отыгровки в /do перед дачей взятки. (Проверка на видеофиксацию)`n`n .адвокат - вызов адвоката в кпз LSPD.`n`n .прокурор - вызов прокурора в кпз LSPD.`n`n .угон - проверка на угон авто. (отыгровка проверки номеров в базе данных) *Если че, то отыгровка сделана мною так, что человек в любом случае не сможет`n отыграть наподобие: 'Что написано в ориентировке?' И даже если отыграл, то на это можно забить. Это - некорректная отыгровка в 'do' считается.*`n`n .вин - отыгровка проверки vin-номера авто в базе данных.(Нужно стоять около двери машины с водительской стороны.)`n`n .пут [ID] - засунуть человека в машину.`n`n .пул [ID] - вытащить человека из машины.`n`n .радио - включить радио по рп. (Для того, чтобы слушать музыку через гч)`n`n .спавн - спавн тачек во фракции (15 секунд).`n`n .фрапс - рп отыгровка, как вы сохраняете запись с боди камеры, вставляете флешку в пк и отправляете на почту. `n`n .лиц - начало выдачи лицензий.`n`n .кам - отыгровка закрепления боди камеры.`n`n .обыск - отыгровка обыска человека напротив.`n`n .визитка - отыгровка вашей визитки. Редактировать ее можно в GUI 'PERSONALIZATION'`n`n .скам1 -> .скам2 - последовательность действий, которые содержат в себе отыгровки, как вы кладете документы в бардачок машины, а далее, что при вас их нет.`n`n .волна - отыгровка, которая пишет в рацию департамента о том, что вы занимаете волну на определенное время.`n`n .госнабор - отыгровка, которая пишет в рацию департамента, что вы заняли гос.волну и потом скрипт отправляет само объявление в gnews.`n`n`nЕсть еще множество команд в этом биндере, но я выделил самые основные. Остальные можно поискать в биндере самому(тому, кто понимает о чем я).`n`n`n!!!СНАЧАЛА ПОТРЕНЕРУЙТЕСЬ С КОМАНДАМИ. ЧТО, ГДЕ, КАК ОТЫГРЫВАЕТСЯ И КАК ПРАВИЛЬНО ИХ ПРИМЕНЯТЬ!!! ")
	return
}
;===================================================================================
Com() {
	MsgBox("Сокращения популярных команд,- .с - Быстрая просись /c(Семейный чат IC).`n- .си - Быстрая просись /cb(Семейный чат OOC).`n- .мут - Быстрая пропись /vmute(Мут игрока).`n- .ы - Быстрая пропись /s(Крик).`n- .и - Быстрая пропись /b(OOC чат).`n- .а - Быстрая пропись /f(IC чат).`n- .аи - Быстрая пропись /fb(OOC чат).`n- .ц - Быстрая пропись /w(Шёпот).`n- .вз - Пропись команды(/wnews WN).`n- .вч - Пропись команды(/adv WN).`n- .су - Быстрая пропись /su(Выдача звёзд).`n- .ев - Быстрая пропись /event(Телепорт на МП).`n- .кл - Быстрая пропись /clearchat.`n- .ьу - Быстрая пропись /me.`n- .вщ - Быстрая пропись /do.`n- .куз - Быстрая пропись /report.`n- /rep - Быстрая пропись /report.")
	return
}
;===================================================================================
HotKey() {
	MsgBox("HotKey's,- Relog - Перезапуск скрипта. *Можно использовать в роле 'Остановки РП'. Я делаю именно так*`n- CODE-0 - Офицер ранен/убит.`n- CODE-7 - Код о скоплении вооруженных лиц.`n- CODE-6 - Код о массовых беспорядках.`n- Badge - Отыгровка нашивки, на груди.`n- Badge(Q) - Вопрос в /do про нашивки игрока.`n- Miranda - Окошечко в левом углу с текстом.`n- Armor - Помогает быстро одеть броник, но его центр должен быть в пятом ряду и четвёртом столбце, Вашего инвентаря.`n- Памятка- Небольшие полезные подсказки от меня.")
	return
}
;===================================================================================
