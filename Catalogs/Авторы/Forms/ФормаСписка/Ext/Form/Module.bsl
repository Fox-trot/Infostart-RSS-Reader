﻿
&НаКлиенте
Процедура ОткрытьПубликации(Команда)
	Если Элементы.Список.ТекущиеДанные <> Неопределено И ТипЗнч(Элементы.Список.ТекущиеДанные.Ссылка) = Тип("СправочникСсылка.Авторы") Тогда
		ПараметрыФормы = Новый Структура("Отбор", Новый Структура("Автор", Элементы.Список.ТекущиеДанные.Ссылка));
		ОткрытьФорму("Документ.Публикация.ФормаСписка", ПараметрыФормы, ЭтаФорма);
	КонецЕсли;
КонецПроцедуры
