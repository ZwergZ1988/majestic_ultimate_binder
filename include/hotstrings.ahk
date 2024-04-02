#Requires AutoHotkey v2.0

;===================================================================================
;------------------------------------------------------------------------------------------------------------
;                                                -----Рации-----
;------------------------------------------------------------------------------------------------------------
;===================================================================================
	:?:.фиб::/dep to FIB:{space}
;===================================================================================
	:?:.пд::/dep to LSPD:{space}
;===================================================================================
	:?:.сд::/dep to LSCSD:{space}
;===================================================================================
	:?:.санг::/dep to SANG:{space}
;===================================================================================
	:?:.гов::/dep to GOV:{space}
;===================================================================================
	:?:.емс::/dep to EMS:{space}
;===================================================================================
	:?:.вн::/dep to WN:{space}
;===================================================================================
	:?:.гос::/dep to all:{space}
;===================================================================================
	:?:.волна::/dep to all: Занята ли гос волна на , если нет то занимаю...{Left 24}
;===================================================================================
	:?:.вз::/wnews{space}
;===================================================================================
	:?:.вч::/adv{space}
;===================================================================================
	:?:.сигналка::/dep to all: Сработала ли сигнализация в каком либо частном/муниципальном заведении?
;===================================================================================
	:?:.норм::/dep to all: Требования похитителей адекватные. Ждите дальнейших указаний...{enter}
;===================================================================================
	:?:.пуш::/dep to all: Требования похитителей неадекватные. Готовьте силы к штурму захватчиков...{enter}
;===================================================================================
	:?:.юр::/dep to LSCSD: Разрешите нарушить юрисдикцию для проведения комфортного патрулирования...{enter}
;===================================================================================
	:?:.фз::/dep to all: На Fort Zancudo напали{!} Нужна поддержка всех государственных силовых структур, всем 10-38{!} Повторяю на нас напали, всем 10-38...{enter}
;===================================================================================
			:?:.коридор::{
	SendInput("/mark 10-20")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/dep to all: С моих 10-20 выехали похитители, на них действует зеленый коридор в радиусе %bSteal1% метров...")
		sleep 200
	SendInput("{enter}")
		return
  }
;===================================================================================
			:?:.патрули::{
	SendInput("/mark 10-20")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/dep to all: С моих 10-20 выехали похитители, прошу предоставить отмену патрулей на %bSteal2% секунд...")
		sleep 200
	SendInput("{enter}")
		return
  }
;===================================================================================
			:?:.пох::{
	SendInput("/dep to all: %qfrac% займётся переговорами с захватчиками, ожидайте дальшейших указаний...{enter}")
		return
  }
;===================================================================================
			:?:.гетто::{
	SendInput("/dep to SANG: Окажите поддержку в городе Los Santos, а также 'Ghetto', обстановка с криминальными еденицами обострилась. Ориентир 'code 10-20' от нашей структуры или же центр района...{enter}")
		return
  }
;===================================================================================
			:?:.адвокат::{
	SendInput("/dep to GOV: В соответствии с законодательством нашей страны, гарантирующим права задержанных граждан на юридическую помощь, я обращаюсь к Вам, уважаемый адвокат, с просьбой обеспечить задержанного квалифицированной юридической защитой. Согласно Статье 16 Пункту 2.1 Процессуального кодекса, если задержанный изъявил желание воспользоваться услугами государственного адвоката, сотрудник, производящий задержание, обязан немедленно сообщить в департамент о необходимости явки государственного адвоката по месту нахождения задержанного. В данном случае, я как представитель правоохранительных органов, действую в соответствии с законом и уведомляю Вас о необходимости оказания юридической помощи задержанному. В целях обеспечения прав граждан и соблюдения принципа равенства перед законом, я прошу Вас обеспечить задержанного квалифицированной юридической защитой. По этой причине прошу прибыть в КПЗ LSPD по адресу Мишн-Роу для обеспечения юридической защиты задержанного. Ожидаю Вашего ответа в течение пяти минут. ")
          return
        }
;===================================================================================
			:?:.прокурор::{
	SendInput("/dep to GOV: Запрашиваю прокурора в КПЗ LSPD Мишн-Роу.")
	    return
    }
;===================================================================================
			:?:.кпп1::{
	SendInput("/dep to all: Внимание, у КПП-1 Forta Zancudo скопление автомобилей и множество граданских, возможно вооружены. Будьте на готове{!}{enter}")
	return
}
;===================================================================================
			:?:.кпп2::{
	SendInput("/dep to all: Внимание, у КПП-2 Forta Zancudo скопление автомобилей и множество граданских, возможно вооружены. Будьте на готове{!}{enter}")
	return
}
;===================================================================================
			:?:.госнабор::{
	SendInput("/dep to all: Занял гос. волну... ")
		sleep 300
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/gnews Уважаемые жители штата! В данный момент проходит набор в ряды академии LSPD. Требования для трудоустройства: возраст от 21 года, иметь опрятный внешний вид, права категории Drive D, мед. карту, военный билет, и отсутствие судимостей. Набор проходит в холле LSPD. На карте штата мы отмечены синим щитом. Также, мы всегда рады выдать вам лицензии на оружие, для этого необходимо иметь при себе 15 000 $. С уважением, сотрудники отдела PAI!")
		sleep 200
	SendInput("{enter}")
	return
}
;===================================================================================
			:?:.гослиц::{
	SendInput("/dep to all: Занял гос. волну... ")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/gnews [Уведомление] Внимание{!} %qfrac% информирует{!} Сейчас будет проходить выдача лицензий в центральном отделении %qfrac%. В течении следующего часа Вы можете посетить отделение %qfrac%. При себе иметь: медицинское освидетельствование, 25.000$ и знание законов штата{!} С уважением руководящий состав %qfrac%...")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/dep to all: Освободил гос. волну...")
	return
}
;===================================================================================
;------------------------------------------------------------------------------------------------------------
;                                                -----Коды-----
;------------------------------------------------------------------------------------------------------------
;===================================================================================
	:?:.код7::/mark CODE-7 to ALL {enter}
;===================================================================================
	:?:.код0::/mark CODE-0 to ALL {enter}
;===================================================================================
	:?:.код1::/mark CODE-1 to ALL {enter}
;===================================================================================
	:?:.код4::/mark CODE-4 to ALL {enter}
;===================================================================================
			:?:.к12::{
	SendInput("/mark code 10-20 to %qfrac% {enter}")
	return
}
;===================================================================================
;------------------------------------------------------------------------------------------------------------
;                                                -----Коды v2-----
;------------------------------------------------------------------------------------------------------------
;===================================================================================
	:?:/r7::/mark CODE-7 to ALL {enter}
;===================================================================================
	:?:/r0::/mark CODE-0 to ALL {enter}
;===================================================================================
	:?:/r1::/mark CODE-1 to ALL {enter}
;===================================================================================
			:?:/r12::{
	SendInput("/mark code 10-20 to %qfrac% {enter}")
	return
}
;===================================================================================
;------------------------------------------------------------------------------------------------------------
;                                                -----Команды-----
;------------------------------------------------------------------------------------------------------------
;===================================================================================
	:?:.ьу::/me
;===================================================================================
	:?:.вщ::/do
;===================================================================================
	:?:.фссузе::/accept{space}{backspace}
;===================================================================================
	:?:.куз::/report{space}{backspace}
;===================================================================================
	:?:/rep::/report{space}{backspace}
;===================================================================================
	:?:.пут::/put{space}{backspace}
;===================================================================================
	:?:.пул::/pull{space}{backspace}
;===================================================================================
	:?:.кл::/clearchat{enter}
;===================================================================================
	:?:.мут::/vmute{space}{backspace}
;===================================================================================
	:?:.с::/c{space}{backspace}
;===================================================================================
	:?:.си::/cb{space}{backspace}
;===================================================================================
	:?:.ы::/s{space}{backspace}
;===================================================================================
	:?:.и::/b{space}{backspace}
;===================================================================================
	:?:.а::/f{space}{backspace}
;===================================================================================
	:?:.аи::/fb{space}{backspace}
;===================================================================================
	:?:.ц::/w{space}{backspace}
;===================================================================================
	:?:.су::/su{space}{backspace}
;===================================================================================
	:?:.ыг::/su{space}{backspace}
;===================================================================================
	:?:.ев::/event{enter}
;===================================================================================
	:?:.есп::/netstat{enter}
;===================================================================================
	:?:.зфн::/pay{space}{backspace}
;===================================================================================
	:?:.ка::Запись Кадрового Аудита
;===================================================================================
			:?:.высер::{
	SendInput("/b Куприв, вы упали от пацанчиков из %qfrac%. Впитывай бро) Приятной игры{!}{enter}")
	return
}
;===================================================================================
;------------------------------------------------------------------------------------------------------------
;                                                -----Повседневка-----
;------------------------------------------------------------------------------------------------------------
;===================================================================================
			:?:.опзо::{
		if (Radio1Gen==1)
	{
	SendInput("/me присмотрелся к человеку напротив")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Какой символ идентификации можно увидеть на @ и что за информация на нем содержится?{Left 39}")
		sleep 200
	SendInput("{enter}")
	}
		else if (Radio2Gen==1)
	{
	SendInput("/me присмотрелась к опозновательному знаку человека напротив")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Какой опознавательный знак на человеке и что на нём написано?")
		sleep 200
	SendInput("{enter}")
	}
		else 
	{
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
	}
		return
  }
;===================================================================================
			:?:.кам::{
		if (Radio1Gen==1)
	{
	SendInput("/me достал маленькую камеру из кармана и аккуратно закрепил на воротнике, после чего нажал на кнопку записи")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Применяемый прибор, который находится в состоянии размещения, представляет собой устройство для захвата видеоинформации и автоматического непрерывного регистрационного процесса. Название применяемой камеры - Криптоаналитический Системный Аппарат для Длительной Фиксации (КСА-ДФ).")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do КСА-ДФ закреплен на воротнике. Он включен и ведет непрерывную запись.")
		sleep 200
	SendInput("{enter}")
	}
		else if (Radio2Gen==1)
	{
	SendInput("/me достала 'Боди-камеру' из рюкзака и закрепила на груди, проверив её работоспособность")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Боди-камера ведёт непрерывную запись видео.")
		sleep 200
	SendInput("{enter}")
	}
		else 
	{
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
	}
		return
  }
;===================================================================================
			:?:.взятка::{
	SendInput("/do Есть ли у человека аудио/видеофиксация?")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/b /do Нет.")
		sleep 200
	SendInput("{enter}")
	return
}
;===================================================================================
			:?:.бейдж::{
		if (Radio1Gen==1)
	{
	SendInput("/me указал пальцем на бейдж")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do На цепочке с плетением 'Ромб Двойной', сделанной из красного золота 585 пробы, у которой примерный вес составляет 15 грамм, висит элемент униформы - бейдж, который содержит данные, позволяющие идентифицировать лицо, которое его носит. Бейдж лежит в прозрачной с гравировкой 'LSPD' обложке, наверху которой напечатана надпись 'High Rank'. На бейдже напечатана четкая надпись, покрытая бесцветным изолирующим покрытием на базе алкидного полимера [ - ***].")
		sleep 200
	SendInput("{enter}")
	}
		else if (Radio2Gen==1)
	{
	SendInput("/me указала пальцем на бейдж{enter}")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do %gbadge%.{enter}")
		sleep 200
	SendInput("{enter}")
	}
		else 
	{ 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
	}
		return
  }
;===================================================================================
			:?:.нарко::{
		if (Radio1Gen==1)
	{
	SendInput("/do Кейс в руках.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me открыл кейс, после чего достал портативное устройство")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me нажал на кнопку 'Идентификация неизвестного вещества'")
		sleep 200
	SendInput("{enter}")
	     sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me достал пакетик с неизвестным веществом, после чего насыпал в портативное устройство")
		sleep 200
	SendInput("{enter}")
	     sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Неизвестное вещество внутри устройства.")
		sleep 200
	SendInput("{enter}")
          sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me нажал на кнопку 'Начать идентификацию'")
		sleep 200
	SendInput("{enter}")
	      sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Идет идентификация вещества.")
		sleep 200
	SendInput("{enter}")
          sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Портативное устройство показало результаты.")
		sleep 200
	SendInput("{enter}")
	     sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do На мониторе написано: основное химическое вещество - Каннабис.")
		sleep 200
	SendInput("{enter}")
	}
		else if (Radio2Gen==1)
	{
	SendInput("/me обнюхала человека")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Есть ли у человека наркотические вещества?")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Исходит ли от человека запах пороховых газов?")
		sleep 200
	SendInput("{enter}")
	}
		else 
	{ 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
	}
		return
  }
;===================================================================================
			:?:.визитка::{
		if (Radio1Gen==1)
	{
	SendInput("/me достал визитку и протянул человеку напротив")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do На визитке, отчётливая надпись 'E-mail': %vdis%.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Чуть ниже, отчётливая надпись 'Номер телефона': %wTel%.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do В верхней левой части, надпись 'Организация': %qfrac%.")
		sleep 200
	SendInput("{enter}")
	}
		else if (Radio2Gen==1)
	{
	SendInput("/me достала визитки и протянула человеку")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do На визитке, отчётливая надпись 'E-mail': %vdis%.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Чуть ниже, отчётливая надпись 'Номер телефона': %wTel%.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("{enter}")
	}
		else 
	{ 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
	}
		return
  }
;===================================================================================
			:?:.дис::{
	SendInput("/b Напиши мне в DISCORD: %vdis%.{enter}")
	return
}
;===================================================================================
			:?:.лдв::{
		if (Radio1Gen==1)
	{
	SendInput("/me достал ключ-карту и провёл по панели")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Дверь закрыта.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me убрал ключ-карту в карман")
		sleep 200
	SendInput("{enter}")
	}
		else if (Radio2Gen==1)
	{
	SendInput("/me достала ключ-карту и провела по панели")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Дверь закрыта.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me убрала ключ-карту в кармана")
		sleep 200
	SendInput("{enter}")
	}
		else 
	{ 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
	}
		return
  }
;===================================================================================
			:?:.одв::{
		if (Radio1Gen==1)
	{
	SendInput("/me достал ключ-карту и провёл по панели")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Дверь открыта.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me убрал ключ-карту в карман")
		sleep 200
	SendInput("{enter}")
	}
		else if (Radio2Gen==1)
	{
	SendInput("/me достала ключ-карту и провела по панели {enter}")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("{t}/do Дверь открыта.{enter}")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("{t}/me убрала ключ-карту в карман {enter}")
		sleep 200
	SendInput("{enter}")
	}
		else 
	{ 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
	}
		return
  }
;===================================================================================
;------------------------------------------------------------------------------------------------------------
;                                        		-----RolePlay-----
;------------------------------------------------------------------------------------------------------------
;===================================================================================
			:?:.анаболик::{
		if (Radio1Gen==1)
	{
	SendInput("/me нырнув руками в подсумок, вытянул оттуда белые стерильные перчатки и натянул их на руки")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Перчатки одеты.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me достал из подсумка коробочку содержащую дозированный седативный препарат")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Коробочка оранжевого цвета с надписью: 'Paramedic'.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Чуть ниже надпись мелким шрифтом: 'Benzodiazepines'.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me открыл коробочку и достал шприц-инектор")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Рядом стоит спирт и лежит кусочек ваты.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me открыл спирт и смочил ватку")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me протёр место инъекции и сделал укол")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me достал зелёную коробочку и положил туда использованный шприц")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me закрыл обе коробочки и убрал их в подсумок")
		sleep 200
	SendInput("{enter}")
	}
        else if (Radio2Gen==1)
    {
	SendInput("/me нырнув руками в подсумок, вытянула оттуда белые стерильные перчатки и натянула их на руки")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Перчатки одеты.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me достала из подсумка коробочку содержащую дозированный седативный препарат")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Коробочка оранжевого цвета с надписью: 'Paramedic'.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Чуть ниже надпись мелким шрифтом: 'Benzodiazepines'.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me открыла коробочку и достала шприц-инектор")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Рядом стоит спирт и лежит кусочек ваты.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me открыла спирт и смочила ватку")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me протёрла место инъекции и сделала укол")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me достала зелёную коробочку и положила туда использованный шприц")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me закрыла обе коробочки и убрала их в подсумок")
		sleep 200
	SendInput("{enter}")
    }
        else 
    { 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
    }
        return
      }
;===================================================================================
			:?:.фрапс::{
		if (Radio1Gen==1)
    {
	SendInput("/me вытащил флешку с файлами из боди-камеры")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me достал персональный компьютер, после чего включил его")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Экран компьютера включен.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me вставил флешку в компьютер")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me открыл папку с видео и сохранил последний видеофайл")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Видеофайл сохранился.")
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me открыл почту, после чего нужный адрес")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me отправил последний сохраненный видеофайл")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Видеофайл отправлен на почту.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me убрал флешку в карман")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me выключил компьютер, после чего убрал его{enter}")
	}
        else if (Radio2Gen==1)
    {
	SendInput("/me нажала на клавиатуре 'space'")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Экран комьютера включился.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do На столе лежит папка с делом.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me открыла папку и осмотрела дело")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me открыла базу граждан 'Data Base', зашла в раздел 'Федеральный розыск'")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Перед лицом агента высветилась анкета с графами: 'Имя и Фамилия разыскиваемого', 'Паспорт разыскиваемого', 'Контактная информация', 'Уровень розыска', 'Награда за поимку' и 'Материалы дела'")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me заполнила необходимые граффы указаные в анкете")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me перепроверила заполненные данные")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Данные соответствуют заявленным.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me нажала на кнопку 'Объявить в розыск'")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me ввёл номер телефона '' и нажала кнопку 'Отслеживать'{left 31}")
    }
        else 
    {
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
    }
        return
      }
;===================================================================================
			:?:.тикет::{
		if (Radio1Gen==1)
    {
	SendInput("/me достал блокнот с тикетами, открыл пустой 'тикет' и начал заполнять")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me вписал статьи нарушения и гос номер авто")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me вызвал эвакуатор по номеру 'тикета'")
		sleep 200
	SendInput("{enter}")
	}
        else if (Radio2Gen==1)
    {
	SendInput("/me достала блокнот с тикетами, открыла пустой 'тикет' и начала заполнять")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me вписала статьи нарушения и гос номер авто")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me вызвала эвакуатор по номеру 'тикет`а'")
		sleep 200
	SendInput("{enter}")
    }
        else 
    { 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
    }
        return
      }
;===================================================================================
			:?:.обыск::{
		if (Radio1Gen==1)
    {
	SendInput("/me осуществил маневр опускания своих верхних конечностей в соседние отверстия в текстильной одежде, захватив с собой находящиеся в них предметы, а именно - белые перчатки. Подобрав их к себе, произвел надевание указанных перчаток на свои кисти")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Перчатки надеты.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me провёл руками по верхней части тела")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me проверил карманы")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me провёл руками по ногам")
		sleep 200
	SendInput("{enter}")
	}
        else if (Radio2Gen==1)
    {
	SendInput("/me нырнула руками в карманы, вытянула оттуда белые перчатки и натянула их на руки")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Перчатки одеты.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me провела руками по верхней части тела")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me проверила карманы")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me провела руками по ногам")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Где у человека документы, мед справки и лицензии?")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("{t}/do Есть ли аудио/видео фиксация?")
		sleep 200
	SendInput("{enter}")
	}
        else 
    { 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
    }
        return
      }
;===================================================================================
			:?:.грим::{
		if (Radio1Gen==1)
    {
	SendInput("/me нырнул руками в подсумок, вытянул оттуда влажные салфетки и открыл пачку")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me достал салфетку и предерживая лицо человека начал вытирать грим")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me протер основные элементы лица")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me осмотрел лицо человека")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Лицо подходит для определиния по DataBase.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me выкинул салфетку в урну, закрыл пачку и убрал обратно в подсумок")
		sleep 200
	SendInput("{enter}")
	}
        else if (Radio2Gen==1)
    {
	SendInput("/me нырнула руками в подсумок, вытянул оттуда влажные салфетки и открыла пачку")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me достала салфетку и предерживая лицо человека начала вытирать грим")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me протерла основные элементы лица")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me осмотрела лицо человека")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Лицо подходит для определиния по DataBase.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me выкинула салфетку в урну, закрыла пачку и убрала обратно в подсумок")
		sleep 200
	SendInput("{enter}")
	}
        else 
    { 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
    }
        return
      }
;===================================================================================
			:?:.полиграф::{
		if (Radio1Gen==1)
    {
	SendInput("/do Полиграф стоит на столе.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do На тумбе стоит компьютер.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Полиграф подключен к компьютеру.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me включил компьютер")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Компьютер работает.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me включил полиграф")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Полиграф включен.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do От полиграфа идут две группы датчиков на присосках.")
		sleep 200
	SendInput("{enter}")
	}
        else if (Radio2Gen==1)
    {
	SendInput("/do Полиграф стоит на столе.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do На тумбе стоит компьютер.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Полиграф подключен к компьютеру.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me включила компьютер")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Компьютер работает.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me включила полиграф")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Полиграф включен.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do От полиграфа идут две группы датчиков на присосках.")
		sleep 200
	SendInput("{enter}")
	}
        else 
    { 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
    }
        return
      }
;===================================================================================
			:?:.провода::{
		if (Radio1Gen==1)
    {
	SendInput("/me взял первую группу датчиков на присосках и подключил к руке человека напротив")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Первая группа датчиков подключена.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me взял вторую группу датчиков на присосках и подключил к голове человека напротив")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Вторая группа датчиков подключена.")
		sleep 200
	SendInput("{enter}")
	}
        else if (Radio2Gen==1)
    {
	SendInput("/me взяла первую группу датчиков на присосках и подключила к руке человека напротив")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Первая группа датчиков подключена.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me взяла вторую группу датчиков на присосках и подключила к голове человека напротив")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Вторая группа датчиков подключена.")
		sleep 200
	SendInput("{enter}")
	}
        else 
    { 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
    }
        return
      }
;===================================================================================
			:?:.скам1::{
		if (Radio1Gen==1)
    {
	SendInput("/do Бардачок закрыт.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me открыл бардачок")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me нырнув руками в карманы, вытянул оттуда лицензии, ID карту, мед.справки и сложил в бардачок")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Документы лежат в бардачке автомобиля.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me закрыл бардачок")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Бардачок закрыт.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me достал маленькую камеру из кармана и аккуратно закрепил на воротнике, после чего нажал на кнопку записи видео")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Применяемый прибор, который находится в состоянии размещения, представляет собой устройство для захвата видеоинформации и автоматического непрерывного регистрационного процесса. Название применяемой камеры - Криптоаналитический Системный Аппарат для Длительной Фиксации (КСА-ДФ). ")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do В подлокотнике лежит балончик с искусственной грязью.")
		sleep 350
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 350
	SendInput("/me достал балончик и попшикал его внутренним веществом на пальцы рук")
		sleep 350
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Пальцы рук сильно запачканы грязью.")
		sleep 200
	SendInput("{enter}")
	}
        return
      }
		
		:?:.скам2::{
		if (Radio1Gen==1)
    {
	SendInput("/do ID карты, лицензий, мед.справок при себе нет.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Пальцы рук сильно запачканы грязью.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do КСА-ДФ закреплен на воротнике. Он включен и ведет непрерывную запись.")
		sleep 200
	SendInput("{enter}")
	}
		return
  }
;===================================================================================
			:?:.дрон::{
		if (Radio1Gen==1)
    {
	SendInput("/me достал кейс с дроном и открыл его")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me положил крышку на землю и поставил на неё дрон")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me протёр линзу дрона, заранее подготовленной влажной салфеткой")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Дрон в исправном состоянии и функционирует.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Камера дрона имеет захвать 230 градусов и оснащена камерой '2K HD FPV'.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Запись идёт на съёмный носитель в камере.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me достал пульт управления и включил дрон")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Дрон успешно взлетел и готов к работе.")
		sleep 200
	SendInput("{enter}")
	}
        else if (Radio2Gen==1)
    {
	SendInput("/me достала кейс с дроном и открыла его")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me положила крышку на землю и поставила на неё дрон")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me протёрла линзу дрона, заранее подготовленной влажной салфеткой")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Дрон в исправном состоянии и функционирует.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Камера дрона имеет захвать 230 градусов и оснащена камерой '2K HD FPV'.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Запись идёт на съёмный носитель в камере.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me достала пульт управления и включила дрон")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Дрон успешно взлетел и готов к работе.")
		sleep 200
	SendInput("{enter}")
	}
        else 
    { 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
    }
        return
      }
;===================================================================================
			:?:.угон::{
		if (Radio1Gen==1)
    {
	SendInput("/me извлек из одного из карманов портативное электронное устройство типа планшета и, проявляя осторожность и внимательность, поместил свою руку поверх дисплея в целях предотвращения доступа к информации третьими лицами")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Планшет заблокирован.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me ввёл пароль")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Планшет разблокирован.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do В планшете база данных штата San Andreas.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me вошёл в базу данных на автомобили штата San Andreas")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Открыта база данных на автомобили.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me произвел ввод регистрационного номера автомобиля в систему с целью осуществления проверки наличия информации об угоне данного транспортного средства")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Согласно выданным базой данных сведениям, предоставленным в электронной форме, указанное транспортное средство имеет статус угнанного.")
			}
        else if (Radio2Gen==1)
    {
	SendInput("/me достала планшет из под бронежилета")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Планшет заблокирован.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me ввела пароль")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Планшет разблокирован.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do В планшете база данных штата San Andreas.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me вошла в базу данных на автомобили штата San Andreas")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Открыта база данных на автомобили.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me ввела номер авто и проверила числиться ли оно в угоне")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do База выдала, что данное Т/С числиться как угнанное.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me достала тикет и телефон, приклеила тикет на ТС")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me вызвала эвакуатор по номеру тикета")
		sleep 200
	SendInput("{enter}")
	}
        else 
    { 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
    }
        return
      }
;===================================================================================
			:?:.кпк::{
		if (Radio1Gen==1)
    {
	SendInput("/me достал карманный персональный компьютер")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Карманный персональный компьютер активен.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me открыл базу данных")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Открыта база данных, на граждан San Andreas.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me открыл раздел %qfrac%, после чего открыл DataBase")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me заполнил графу: возвраст, прописка, Имя_Фамилия. Также прикрепил фото задержанного.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Сведения, относящиеся к личности задержанного, проанализированы и занесены в установленный порядок в персональную анкету данного лица.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me произвел нажатие на соответствующую кнопку в системе, активизирующую процедуру объявления лица в розыск")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/su{space}")
	}
        else if (Radio2Gen==1)
    {
	SendInput("/me достала карманный персональный компьютер, держа в руке документы человека")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Карманный персональный компьютер активен.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me открыла базу данных")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Открыта база данных, на граждан San Andreas.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me открыла раздел %qfrac%, после чего открыла DataBase")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me заполнила графу: национальность, возвраст, прописка, Имя_Фамилия")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Персональная анкета задержанного заполнена.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me нажала на кнопку 'Объявить в розыск'")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/su{space}")
	}
        else 
    { 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
    }
        return
      }
;===================================================================================
			:?:.док::{
		if (Radio1Gen==1)
    {
	SendInput("/me нажал кнопку включения на системном блоке компьюетра{enter}")
		sleep %sTime%
	SendInput("{t}/do Компьютер включен.{enter}")
		sleep %sTime%
	SendInput("{t}/me открыл на компьютере текстовый редактор {enter}")
		sleep %sTime%
	SendInput("{t}/do Текстовый редактор открыт на компьютере и готов к работе.{enter}")
		sleep %sTime%
	SendInput("{t}/me напечатал в текстовом редакторе название докумета{enter}")
		sleep %sTime%
	SendInput("{t}/do Документ называется")
	}
        else if (Radio2Gen==1)
    {
	SendInput("/me нажала кнопку включения на системном блоке компьюетра{enter}")
		sleep %sTime%
	SendInput("{t}/do Компьютер включен.{enter}")
		sleep %sTime%
	SendInput("{t}/me открыла на компьютере текстовый редактор {enter}")
		sleep %sTime%
	SendInput("{t}/do Текстовый редактор открыт на компьютере и готов к работе.{enter}")
		sleep %sTime%
	SendInput("{t}/me напечатала в текстовом редакторе название докумета{enter}")
		sleep %sTime%
	SendInput("{t}/do Документ называется{enter}")
	}
        else 
    { 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
    }
        return
      }
;===================================================================================
			:?:.пдок::{
		if (Radio1Gen==1)
    {
	SendInput("/me продолжил печатать документ в текстовом редакторе{enter}")
		sleep %sTime%
	SendInput("{t}/do Документ напечатан.{enter}")
		sleep %sTime%
	SendInput("{t}/do Принтер включен.{enter}")
		sleep %sTime%
	SendInput("{t}/me нажал в текстовом редакторе 'сохранить', после чего 'печать'{enter}")
		sleep %sTime%
	SendInput("{t}/do Принтер в процессе печали документа.{enter}")
		sleep %sTime%
	SendInput("{t}/do Документ распечатан.{enter}")
		sleep %sTime%
	SendInput("{t}/me достал документ из принтера и положил в папку{enter}")
	}
        else if (Radio2Gen==1)
    {
	SendInput("/me продолжила печатать документ в текстовом редакторе{enter}")
		sleep %sTime%
	SendInput("{t}/do Документ напечатан.{enter}")
		sleep %sTime%
	SendInput("{t}/do Принтер включен.{enter}")
		sleep %sTime%
	SendInput("{t}/me нажала в текстовом редакторе 'сохранить', после чего 'печать'{enter}")
		sleep %sTime%
	SendInput("{t}/do Принтер в процессе печали документа.{enter}")
		sleep %sTime%
	SendInput("{t}/do Документ распечатан.{enter}")
		sleep %sTime%
	SendInput("{t}/me достала документ из принтера и положила в папку{enter}")
	}
        else 
    { 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
    }
        return
      }
;===================================================================================
			:?:.кпз::{
		if (Radio1Gen==1)
    {
	SendInput("/me достал ключ-карту и провёл по панеле")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Дверь открыта.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me убрал ключ-карту в карман")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me завёл человека в камеру")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me снял с человека наручники после чего закрыл решётку")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me достал ключ-карту и провёл по панеле")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Дверь закрыта.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me убрал ключ-карту в карман")
		sleep 200
	SendInput("{enter}")
	}
        else if (Radio2Gen==1)
    {
	SendInput("/me достала ключ-карту и провела по панеле")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Дверь открыта.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me убрала ключ-карту в карман")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me завела человека в камеру")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me сняла с человека наручники после чего закрыла решётку")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me достала ключ-карту и провела по панеле")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Дверь закрыта.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me убрала ключ-карту в карман")
		sleep 200
	SendInput("{enter}")
	}
        else 
    { 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
    }
        return
      }
;===================================================================================
			:?:.информатор::{
		if (Radio1Gen==1)
    {
	SendInput("/do На столе лежат: Экшн-камера, Мини-Диктофон, Жучек.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me взял в руки аппаратуру и начал поочередно закреплять на одежде человека напротив")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Экшн-камера висит на груди у человека.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Мини-Диктофон спрятан в штанах человека напротив.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Жучек закреплен на внутренней части обуви.")
		sleep 200
	SendInput("{enter}")
	}
        else if (Radio2Gen==1)
    {
	SendInput("/do На столе лежат: Экшн-камера, Мини-Диктофон, Жучек.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me взяла в руки аппаратуру и начала поочередно закреплять на одежде человека напротив")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Экшн-камера висит на груди у человека.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Мини-Диктофон спрятан в штанах человека напротив.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Жучек закреплен на внутренней части обуви.")
		sleep 200
	SendInput("{enter}")
	}
        else 
    { 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
    }
        return
      }
;===================================================================================
			:?:.реклама::{
		if (Radio1Gen==1)
    {
	SendInput("/me нырнул руками в карманы")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me достал контракт и протянул человеку")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do В контракте описаны условия рекламы, согласно прайс листу.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do В контракте также содержится напоминание о не возможности 'pay-back'.")
		sleep 200
	SendInput("{enter}")
	}
        else if (Radio2Gen==1)
    {
	SendInput("/me нырнула руками в карманы")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me достала контракт и протянула человеку")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do В контракте описаны условия рекламы, согласно прайс листу.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do В контракте также содержится напоминание о не возможности 'pay-back'.")
		sleep 200
	SendInput("{enter}")
	}
        else 
    { 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
    }
        return
      }
;===================================================================================
			:?:.отпечатки::{
		if (Radio1Gen==1)
    {
	SendInput("/do На столе стоит компьютер.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
	    sleep 200
	SendInput("/me включил компьютер")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Компьютер включен.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me вошёл в базу данных")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Открыта база данных, на граждан штата San Andreas.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Сканер отпечатков пальцев подключён к компьютеру.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me взял задержанного за руку и приложил нужные пальцы к сканеру")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do На экран компьютера вывелась информация о человеке: Имя Фамилия - @ Номер id карты - .{Left 19}")
	}
        else if (Radio2Gen==1)
    {
	SendInput("/me включила компьютер")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Компьютер включен.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me вошла в базу данных")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Открыта база данных, на граждан штата San Andreas.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Сканер отпечатков пальцев подключён к компьютеру.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me взяла задержанного за руку и приложила нужные пальцы к сканеру")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do На экран компьютера вывелась информация о человеке.")
		sleep 200
	SendInput("{enter}")
	}
        else 
    { 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
    }
        return
      }
;===================================================================================
			:?:.конт::{
		if (Radio1Gen==1)
    {
	SendInput("/me нырнул руками в карманы")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me достал контракт и положил на стол")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do В контракте описаны условия: В случае увольнения Вы обязаны оплатить неустойку - 10.000$, а также отработать следующие 24 часа.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do В случае каких либо вкладов в Казну организации - 'pay-back' не возможен.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me достал ручку и положил подле контракта")
		sleep 200
	SendInput("{enter}")
	}
        else if (Radio2Gen==1)
    {
	SendInput("/me нырнула руками в карманы")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me достала контракт и положила на стол")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do В контракте описаны условия: В случае увольнения Вы обязаны оплатить неустойку - 10.000$, а также отработать следующие 24 часа.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do В случае каких либо вкладов в Казну организации - 'pay-back' не возможен.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me достала ручку и положила подле контракта")
		sleep 200
	SendInput("{enter}")
	}
        else 
    { 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
    }
        return
      }
;===================================================================================
			:?:.бдкпк::{
		if (Radio1Gen==1)
    {
	SendInput("/me достал мобильный телефон и зафиксировал изображение задержанного, а затем сохранил его в облачном хранилище")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Фото сохранено.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me включил планшет")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Планшет заблокирован.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me ввёл пароль")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Планшет разблокирован.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do В планшете база данных, на граждан штата San Andreas.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me начал поиск по фото в базе данных")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do С помощью технологий отображения данных на планшете была представлена информация о конкретном человеке. Для достижения этого результата были задействованы различные компоненты, включающие в себя аппаратные и программные элементы. Перед тем, как данные были выведены на экран планшета, они были обработаны и подготовлены для вывода с использованием процессоров, оперативной памяти и графических ускорителей. После этого информация была передана на экран планшета, который осуществил ее отображение с помощью своих технологий дисплея. Процесс вывода информации на экран планшета был выполнен в режиме реального времени, с учетом всех необходимых технических параметров и характеристик системы.")
		sleep 200
	SendInput("{enter}")
	}
        else if (Radio2Gen==1)
    {
	SendInput("/me достала телефон и сделала фото задержанного после чего сохранила в облако")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Фото сохранено.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me включила планшет")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Планшет заблокирован.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me ввела пароль")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Планшет разблокирован.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do В планшете база данных, на граждан штата San Andreas.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me начала поиск по фото в базе данных")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do На экран планшета вывелась информация о человеке.")
		sleep 200
	SendInput("{enter}")
	}
        else 
    { 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
    }
        return
      }
;===================================================================================
			:?:.порт::{
		if (Radio1Gen==1)
    {
	SendInput("/me приспустил лямки рюкзака и расстегнул его, поставив на пол")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me осмотрел рюкзак")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Что содержит в себе рюкзак?")
		sleep 200
	SendInput("{enter}")
	}
        else if (Radio2Gen==1)
    {
	SendInput("/me приспустила лямки рюкзака и расстегнула его, поставив на пол")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me осмотрела рюкзак")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Что содержит в себе рюкзак?")
		sleep 200
	SendInput("{enter}")
	}
        else 
    { 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
    }
        return
      }
;===================================================================================
			:?:.делкам::{
		if (Radio1Gen==1)
    {
	SendInput("/do Данные храниться в архиве.{enter}")
		sleep %sTime%
	SendInput("{t}/me зашел в архив {enter}")
		sleep %sTime%
	SendInput("{t}/me удалил данные с 00:00 по 00:00 {enter}")
		sleep %sTime%
	SendInput("{t}/do Данные удалены.{enter}")
		sleep %sTime%
	SendInput("{t}/me вышел из архива {enter}")
	}
        else if (Radio2Gen==1)
    {
	SendInput("/do Данные храниться в архиве.{enter}")
		sleep %sTime%
	SendInput("{t}/me зашла в архив {enter}")
		sleep %sTime%
	SendInput("{t}/me удалила данные с 00:00 по 00:00 {enter}")
		sleep %sTime%
	SendInput("{t}/do Данные удалены.{enter}")
		sleep %sTime%
	SendInput("{t}/me вышла из архива {enter}")
	}
        else 
    { 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
    }
        return
      }
;===================================================================================
			:?:.сумка::{
		if (Radio1Gen==1)
    {
	SendInput("/me взял сумку с деньгами")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me закрыл сумку с деньгами")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me повесил сумку на плечо")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do В кармане geo-маячёк.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me подкинул маячёк в сумку")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Geo-маячёк активен.")
		sleep 200
	SendInput("{enter}")
	}
        else if (Radio2Gen==1)
    {
	SendInput("/me взяла сумку с деньгами")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me закрыла сумку с деньгами")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me повесила сумку на плечо")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do В кармане geo-маячёк.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me подкинула маячёк в сумку")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Geo-маячёк активен.")
		sleep 200
	SendInput("{enter}")
	}
        else 
    { 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
    }
        return
      }
;===================================================================================
			:?:.рп::{
		if (Radio1Gen==1)
    {
	SendInput("/me достал резиновые пули из подсумка {enter}")
		sleep %sTime%
	SendInput("{t}/do Коробочка с пулями в руках.{enter}")
		sleep %sTime%
	SendInput("{t}/me зарядил резиновые пули в обойму {enter}")
		sleep %sTime%
	SendInput("{t}/do Оружие заряжено резиновыми пулями.{enter}")
		sleep %sTime%
	SendInput("{t}/me убрал коробочку обратно в подсумок {enter}")
	}
        else if (Radio2Gen==1)
    {
	SendInput("/me достала резиновые пули из подсумка {enter}")
		sleep %sTime%
	SendInput("{t}/do Коробочка с пулями в руках.{enter}")
		sleep %sTime%
	SendInput("{t}/me зарядила резиновые пули в обойму {enter}")
		sleep %sTime%
	SendInput("{t}/do Оружие заряжено резиновыми пулями.{enter}")
		sleep %sTime%
	SendInput("{t}/me убрала коробочку обратно в подсумок {enter}")
	}
        else 
    { 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
    }
        return
      }
;===================================================================================
			:?:.пмп::{
		if (Radio1Gen==1)
    {
	SendInput("/do В подсумке лежит медицинский пакет нового поколения и дефибриллятор.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me достал из подсумка дефибриллятор и эпинефрин")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me дал разряд из дефибриллятора и вколол эпинефрин")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Человек начал приходить в сознание.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me аккуратно убрал дефибриллятор в подсумок")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me помог встать человеку и осмотрел его лицо")
		sleep 200
	SendInput("{enter}")
	}
        else if (Radio2Gen==1)
    {
	SendInput("/do В подсумке лежит медицинский пакет нового поколения и дефибриллятор.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me достала из подсумка дефибриллятор и эпинефрин")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me сделала разряд из дефибриллятора и вколола эпинефрин")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Человек начал приходить в сознание.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me аккуратно убрала дефибриллятор в подсумок")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me помогла встать человеку и осмотрела его лицо")
		sleep 200
	SendInput("{enter}")
	}
        else 
    { 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
    }
        return
      }
;===================================================================================
			:?:.вин::{
		if (Radio1Gen==1)
    {
	SendInput("/me нырнул руками в карманы, вытянул оттуда перчатки и натянул их на руки")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Перчатки надеты.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me открыл водительскую дверь, после чего осмотрел стойку водительской двери")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me достал планшет, прикрыв его рукой от посторонних глаз, после чего зашел в базу данных, проверил VIN номер и сравнил с ориентировкой")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Данные в реестре и на VIN номере авто совпали.")
	}
        else if (Radio2Gen==1)
    {
	SendInput("/me нырнула руками в карманы, вытянула оттуда перчатки и натянула их на руки")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Перчатки одеты.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me открыла водительскую дверь, после чего осмотрела стойку водительской двери")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me проверила VIN номер и сравнила с ориентировкой")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Данные в реестре и на VIN номере авто совпали.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me достала тикет и телефон, приклеила тикет на ТС")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me вызвала эвакуатор по номеру тикета")
		sleep 200
	SendInput("{enter}")
	}
        else 
    { 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
    }
        return
      }
;===================================================================================
			:?:.лиц::{
		if (Radio1Gen==1)
    {
	SendInput(" Здравствуйте, я сотрудник LSPD. Заранее скажу, что стоимость лицензии составляет 15.000. От вас требуются мед.справки, а также документы.")
		sleep 200
	SendInput("{enter}")
			}
        else if (Radio2Gen==1)
    {
	SendInput("/do На плече висит сумка.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me сняла сумку с плеча, после чего расстегнула её и поставила на землю ")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do В сумке находится .000$.{Left 6}")
	}
        else 
    { 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
    }
        return
      }
;===================================================================================
			:?:.радио::{
		if (Radio1Gen==1)
    {
	SendInput("/do В кармане лежит высокопроизводительный флеш-накопитель USB типа А с чрезвычайно высокой скоростью передачи данных, объем которого составляет 1 TБ.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me достал флеш-накопитель и вставил в автомагнитолу 'Teyes CC3 2k', которая оснащена 8 ядерным процессором, звуковым чипом DPS Adau1701, оптоволоконным и коаксиальным цифровым аудиовыходом и USB-разъёмом с током зарядки до 1.2А ")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me нажал на 'play'")
		sleep 200
	SendInput("{enter}")
	}
        else if (Radio2Gen==1)
    {
	SendInput("/do В кармане лежит флешка.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me достала флешку и вставила в магнитолу")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me нажала на 'play'")
		sleep 200
	SendInput("{enter}")
	}
        else 
    { 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
    }
        return
      }
;===================================================================================
			:?:.кровь::{
		if (Radio1Gen==1)
    {
	SendInput("/do В шкафчике стоит медицинский набор.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do В него входит: Жгут, шприц для забора крови, вата, бинт, реактивы, пробирки и тп.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me открыл набор и разложил перед собой")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me взял жгут и перетянул руку человеку, выше локтя")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me взял человека за лодонь и собрал руку в кулак")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me сжал руку человека несколько раз")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Вена оптимальна для забора крови.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me взял ватку, смочив её спиртом и протёр место забора")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me кинул ватку в ящик, после чего взял шриц, сняв с него колпачок")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me аккуратным движением ввёл иглу в вену, и набрал порядка пяти кубов крови")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me приложил ватку к месту укола и согнул руку челевека в локте")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("Держите так в течение минуты.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me отлил часть био-материала в пробирки и поставил их в кейс")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/b Для продолжения нажмите 'LAlt'.")
		sleep 200
	SendInput("{enter}")
		sleep 100
;	Input, Delay, V, {LAlt}
		sleep 100
	SendInput("{t}")
		sleep 200
	SendInput("/do На столе стоит прибор необходимый для определения принадлежности крови к носителю. Также прибор подключён к компьютеру с доступом к базе данных граждан штата San Andreas.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me добавил каплю крови на сенсор, после чего накрыл одноразовым стеклом и нажал на кнопку 'Анализ'")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do На экране появилась шкала процесса, её показатель составляет 20 процентов.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Надпись чуть ниже: Примерное время ожидания 10 секунд.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/b Как только будешь готов нажми 'LAlt'.")
		sleep 200
	SendInput("{enter}")
		sleep 100
;	Input, Delay, V, {LAlt}
		sleep 100
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Звуковой сигнал с оповещением о завершении процесса.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Тест показал что данный био-материал принадлежит гражданину с номером ID карты: .{Left 1}")
	}
        else if (Radio2Gen==1)
    {
	SendInput("/do В шкафчике стоит медицинский набор.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do В него входит: Жгут, шприц для забора крови, вата, бинт, реактивы, пробирки и тп.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me открыла набор и разложила перед собой")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me взяла жгут и перетянула руку человеку, выше локтя")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me взяла человека за лодонь и собрала руку в кулак")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me сжала руку человека несколько раз")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Вена оптимальна для забора крови.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me взяла ватку, смочив её спиртом и протёрла место забора")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me кинула ватку в ящик, после чего взяла шриц, сняв с него колпачок")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me аккуратным движением ввела иглу в вену, и набрала порядка пяти кубов крови")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me приложила ватку к месту укола и согнула руку челевека в локте")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("Держите так в течении 10-15 минут.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me отлила часть био-материала в пробирки и поставила их в кейс")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/b Дальше проводить отыгровку нужно в лаборатории. Для продолжения нажмите 'LAlt'.")
		sleep 200
	SendInput("{enter}")
		sleep 100
;	Input, Delay, V, {LAlt}
		sleep 100
	SendInput("{t}")
		sleep 200
	SendInput("/do На столе стоит прибор необходимый для определения принадлежности крови к носителю. Также прибор подключён к компьютеру с доступом к базе данных граждан штата San Andreas.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me добавила каплю крови на сенсор, после чего накрыла одноразовым стеклом и нажала на кнопку 'Анализ'")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do На экране появилась шкала процесса, её показатель составляет 20 процентов.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Надпись чуть ниже: Примерное время ожидания 20 секунд.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/b Как только будешь готов нажми 'LAlt'.")
		sleep 200
	SendInput("{enter}")
		sleep 100
;	Input, Delay, V, {LAlt}
		sleep 100
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Звуковой сигнал с оповещением о завершении процесса.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Тест показал что данный био-материал на 99 процентов принадлежит гражданину с номером ID карты: .{Left 1}")
	}
        else 
    { 
    MsgBox(" Ошибка, К сожалению, ты не оределился с полом, выставь нужный параметр.")
    }
        return
      }
;===================================================================================
            :?:.снятиедеп::{
 ;   Input, WalId, V, {LAlt} {Enter}
	SendInput("{t}")
		sleep 200
	SendInput("/me достал флешку с кармана и вставил в USB порт")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me открыл записи рации департамента за %WalId% и скопировал на флешку данные о том кто был в эфире, а также сами записи переговоров")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/do Данные загружены, на съёмный USB носитель.")
		sleep 200
	SendInput("{enter}")
		sleep %sTime%
	SendInput("{t}")
		sleep 200
	SendInput("/me вытянул флешку и положил в карман")
		sleep 200
	SendInput("{enter}")
        return
      }
;===================================================================================
;------------------------------------------------------------------------------------------------------------
;                                                -----Прочее-----
;------------------------------------------------------------------------------------------------------------
;===================================================================================
	^F9::reload
;===================================================================================
	^F10::exitapp
;===================================================================================
			:?:.спавн::{
		if (Radio1Gen==1)
    {
	SendInput("/fb Через 15 СЕКУНД произойдет перезагрузка автопарка %qfrac%. Для предотвращения утери автомобиля, рекомендуется всем занять места в нем и ожидать.")
		sleep 200
	SendInput("{enter}")
		sleep 5000
	SendInput("{t}")
		sleep 200
	SendInput("/fb /spawncars через 10 секунд")
		sleep 200
	SendInput("{enter}")
		sleep 5000
	SendInput("{t}")
		sleep 200
	SendInput("/fb /spawncars через 5 секунд")
		sleep 200
	SendInput("{enter}")
	      sleep 2000
	SendInput("{t}")
		sleep 200
	SendInput("/fb /spawncars через 3 секунды")
		sleep 200
	SendInput("{enter}")
	    sleep 1000
	SendInput("{t}")
		sleep 200
	SendInput("/fb /spawncars через 2 секунды")
		sleep 200
	SendInput("{enter}")
	     sleep 1000
	SendInput("{t}")
		sleep 200
	SendInput("/fb /spawncars через 1 секунду")
		sleep 200
	SendInput("{enter}")
	    sleep 1000
	SendInput("{t}")
		sleep 200
	SendInput("/spawncars ")
    }
Return
}