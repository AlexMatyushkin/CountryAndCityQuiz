//
//  forQuestion.swift
//  CountryAndCityQuiz
//
//  Created by Алексей on 06.09.2018.
//  Copyright © 2018 Алексей. All rights reserved.
//

import Foundation

class forQuestion{
    //Словарь используемых значений Страна - столица
   private var countries = ["Австралия" :  "Канберра","Австрия" :  "Вена","Азербайджан" :  "Баку","Армения" :  "Ереван","Беларусь" :  "Минск","Болгария" :  "София","Ватикан" :  "Ватикан","Великобритания" :  "Лондон","Россия" :  "Москва","Соединенные Штаты Америки" :  "Вашингтон","Хорватия" :  "Загреб","Чехия" :  "Прага","Швеция" :  "Стокгольм","Япония" :  "Токио","Канада" :  "Оттава","Исландия" :  "Рейкьявик","Ирландия" :  "Дублин","Испания" :  "Мадрид","Италия" :  "Рим","Израиль" :  "Иерусалим","Индия" :  "Нью-Дели","Египет" :  "Каир","Куба" :  "Гавана","Латвия" :  "Рига","Литва" :  "Вильнюс","Мексика" :  "Мехико","Молдавия" :  "Кишинев","Монако" :  "Монако","Монголия" :  "Улан-Батор","Нидерланды" :  "Амстердам","Норвегия" :  "Осло","Объединенные Арабские Эмираты" :  "Абу-Даби","Перу" :  "Лима","Польша" :  "Варшава","Португалия" :  "Лиссабон","Румыния" :  "Бухарест","Саудовская Аравия" :  "Эр-Рияд","Словакия" :  "Братислава","Словения" :  "Любляна","Таджикистан" :  "Душанбе","Таиланд" :  "Бангкок","Турция" :  "Анкара","Тунис" :  "Тунис","Узбекистан" :  "Ташкент","Украина" :  "Киев","Финляндия" :  "Хельсинки","Франция" :  "Париж","Черногория" :  "Подгорица","Эстония" :  "Таллин","Южная Корея" :  "Сеул","Аргентина" :  "Буэнос-Айрес","Бельгия" :  "Брюссель","Бразилия" :  "Бразилиа","Венгрия" :  "Будапешт","Германия" :  "Берлин","Грузия" :  "Тбилиси","Дания" :  "Копенгаген","Греция" :  "Афины","Китай" :  "Пекин"]
    private var countries2 = ["Албания" : "Тирана","Алжир" : "Алжир","Ангола" : "Луанда","Андорра" : "Андорра-ла-Велья","Антигуа и Барбуда" : "Сент-Джонс","Афганистан" : "Кабул","Багамы" : "Нассау","Бангладеш" : "Дакка","Барбадос" : "Бриджтаун","Бахрейн" : "Манама","Белиз" : "Бельмопан","Бенин" : "Порто-Ново","Боливия" : "Сукре","Босния и Герцеговина" : "Сараево","Ботсвана" : "Габороне","Бруней" : "Бандар-Сери-Багаван","Буркина Фасо" : "Уагадугу","Бурунди" : "Бужумбура","Бутан" : "Тхимпху","Вануату" : "Порт-Вила","Венесуэла" : "Каракас","Восточный Тимор" : "Дили","Вьетнам" : "Ханой","Габон" : "Либревиль","Гаити" : "Порт-о-Пренс","Гайана" : "Джорджтаун","Гамбия" : "Банжул","Гана" : "Аккра","Гватемала" : "Гватемала","Гвинея" : "Конакри","Гвинея-Бисау" : "Бисау","Гондурас" : "Тегусигальпа","Гренада" : "Сент-Джорджес","Джибути" : "Джибути","Доминика" : "Розо","Доминиканская Республика" : "Санто-Доминго","Замбия" : "Лусака","Зимбабве" : "Хараре","Индонезия" : "Джакарта","Иордания" : "Амман","Ирак" : "Багдад","Иран" : "Тегеран","Йемен" : "Сана","Кабо-Верде" : "Прая","Казахстан" : "Астана","Камбоджа" : "Пномпень","Камерун" : "Яунде","Катар" : "Доха","Кения" : "Найроби","Кипр" : "Никосия","Киргизия" : "Бишкек","Кирибати" : "Южная Тарава","Колумбия" : "Санта-Фе-де-Богота","Коморы" : "Морони","Конго, демократическая республика" : "Киншаса","Конго, республика" : "Браззавиль","Коста-Рика" : "Сан-Хосе","Кот-д’Ивуар" : "Ямусукро","Кувейт" : "Эль-Кувейт","Лаос" : "Вьентьян","Лесото" : "Масеру","Либерия" : "Монровия","Ливан" : "Бейрут","Ливия" : "Триполи","Лихтенштейн" : "Вадуц","Люксембург" : "Люксембург","Маврикий" : "Порт-Луи","Мавритания" : "Нуакшот","Мадагаскар" : "Антананариву","Македония" : "Скопье","Малави" : "Лилонгве","Малайзия" : "Куала-Лумпур","Мали" : "Бамако","Мальдивы" : "Мале","Мальта" : "Валлетта","Марокко" : "Рабат","Маршалловы Острова" : "Маджуро","Мозамбик" : "Мапуту","Мьянма" : "Найпьидо","Намибия" : "Виндхук","Науру" : "официальной столицы не имеет","Непал" : "Катманду","Нигер" : "Ниамей","Нигерия" : "Абуджа","Никарагуа" : "Манагуа","Новая Зеландия" : "Веллингтон","Оман" : "Маскат","Пакистан" : "Исламабад","Палау" : "Мелекеок","Панама" : "Панама","Папуа - Новая Гвинея" : "Порт-Морсби","Парагвай" : "Асунсьон","Руанда" : "Кигали","Сальвадор" : "Сан-Сальвадор","Самоа" : "Апиа","Сан-Марино" : "Сан-Марино","Сан-Томе и Принсипи" : "Сан-Томе","Свазиленд" : "Мбабане","Северная Корея" : "Пхеньян","Сейшелы" : "Виктория","Сенегал" : "Дакар","Сент-Винсент и Гренадины" : "Кингстаун","Сент-Китс и Невис" : "Бастер","Сент-Люсия" : "Кастри","Сербия" : "Белград","Сингапур" : "Сингапур","Сирия" : "Дамаск","Соломоновы Острова" : "Хониара","Сомали" : "Могадишо","Судан" : "Хартум","Суринам" : "Парамарибо","Сьерра-Леоне" : "Фритаун","Танзания" : "Додома","Того" : "Ломе","Тонга" : "Нукуалофа","Тринидад и Тобаго" : "Порт-оф-Спейн","Тувалу" : "Фунафути","Туркмения" : "Ашхабад","Уганда" : "Кампала","Уругвай" : "Монтевидео","Федеративные штаты Микронезии" : "Паликир","Фиджи" : "Сува","Филиппины" : "Манила","Центрально-Африканская Республика" : "Банги","Чад" : "Нджамена","Чили" : "Сантьяго","Швейцария" : "Берн","Шри-Ланка" : "Коломбо","Эквадор" : "Кито","Экваториальная Гвинея" : "Малабо","Эритрея" : "Асмэра","Эфиопия" : "Аддис-Абеба","Южно-Африканская Республика" : "Претория","Ямайка" : "Кингстон"]
    
    var correctAnswer = ""
    var valueOfAnswers = [String]()
    
    func chooseCountryLevelEasy() -> String {
        let index: Int = Int(arc4random_uniform(UInt32(self.countries.count)))
        let key = Array(self.countries.keys)[index]
        let value = Array(self.countries.values)[index]
        self.correctAnswer = value
        self.valueOfAnswers.removeAll()
        self.valueOfAnswers.append(value)
        self.countries.removeValue(forKey: key)
        let question = "Назовите столицу страны - " + key + "?"
        //make Answer
            for _ in 1...3 {
                let index = Int(arc4random_uniform(UInt32(self.countries.count)))
                let _ = Array(self.countries.keys)[index]
                let valueAnswer = Array(self.countries.values)[index]
                self.valueOfAnswers.append(valueAnswer)
            }
        return question
    }
    func chooseCountryLevelHard() -> String {
        let index: Int = Int(arc4random_uniform(UInt32(self.countries2.count)))
        let key = Array(self.countries2.keys)[index]
        let value = Array(self.countries2.values)[index]
        self.correctAnswer = value
        self.valueOfAnswers.removeAll()
        self.valueOfAnswers.append(value)
        self.countries2.removeValue(forKey: key)
        let question = "Назовите столицу страны - " + key + "?"
        //make Answer
        for _ in 1...3 {
            let index = Int(arc4random_uniform(UInt32(self.countries2.count)))
            let _ = Array(self.countries2.keys)[index]
            let valueAnswer = Array(self.countries2.values)[index]
            self.valueOfAnswers.append(valueAnswer)
        }
        return question
    }
    
    
}
