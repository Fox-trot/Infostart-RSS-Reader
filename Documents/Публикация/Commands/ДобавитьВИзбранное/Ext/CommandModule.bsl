﻿
&НаКлиенте
Процедура ОбработкаКоманды(ПараметрКоманды, ПараметрыВыполненияКоманды)
	Если ТипЗнч(ПараметрКоманды) = Тип("ДокументСсылка.Публикация") Тогда
		Если ТипЗнч(ПараметрыВыполненияКоманды.Источник) = Тип("УправляемаяФорма") Тогда
			ПараметрыВыполненияКоманды.Источник.ОтключитьОбработчикОжидания("Обновка");
		КонецЕсли;
		ИзбранноеДобавить(ПараметрКоманды);
	ИначеЕсли ТипЗнч(ПараметрКоманды) = Тип("Массив") Тогда
		Для Каждого тЭлемент Из ПараметрКоманды Цикл
			ОбработкаКоманды(тЭлемент, ПараметрыВыполненияКоманды);
		КонецЦикла;
	КонецЕсли;
КонецПроцедуры

Процедура ИзбранноеДобавить(Ссылка)
	НЗ = РегистрыСведений.Избранное.СоздатьНаборЗаписей();
	НЗ.Отбор.Публикация.Установить(Ссылка);
	НЗ.Прочитать();
	Если НЗ.Количество() = 0 Тогда
		ТекЗапись = НЗ.Добавить();
		ТекЗапись.Публикация = Ссылка;
		НЗ.Записать();
	КонецЕсли;
КонецПроцедуры
