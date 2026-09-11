#let format_strane = "a4"         // могуће вредности: iso-b5, a4
#let naslov = "TestDataGen: Језик специфичан за домен генерисања тестних података"
#let autor = "Милица Ђумић"

// На енглеском
#let naslov_eng = "TestDataGen: A Domain-Specific Language for Test Data Generation"
#let autor_eng = "Milica Đumić"

#let indeks = "R2 5/2022"

// Име и презиме ментора
#let mentor = "Игор Дејановић"
// Звање: редовни професор, ванредни професор, доцент
#let mentor_zvanje = "редовни професор"

// Скинути коментаре са одговарајућих линија
#let studijski_program = "Софтверско инжењерство и информационе технологије"
//#let studijski_program = "Рачунарство и аутоматика"
#let stepen = "Мастер академске студије"
//#let stepen = "Основне академске студије"

#let godina = [#datetime.today().year()]

#let kljucne_reci = "Језици специфични за домен, генератори тестних података, CSV, YAML, Neo4j, Cypher"
#let apstrakt = [
     Научни рад описује софтверски алат за паметно генерисање тестних података за
     различите типове излазних података.
]

// На енглеском
#let kljucne_reci_eng = "Domain specific language, test data generator, CSV, YAML, Neo4j, Cypher"
#let apstrakt_eng = [
    Scientific paper describes a software tool for the smart generation of test
    data for various types of output data .
]

// TODO: Текст задатка добијате од ментора. Заменити доле #lorem(100) са текстом задатка.
#let zadatak = [
1. Проучити концепте језика специфичних за домен (ЈСД) и постојећу архитектуру система _TestDataGen_ за декларативно генерисање тестних података.

2. Проширити граматику и метамодел језика конструкцијом за моделовање веза између ентитета, укључујући дефинисање њихових својстава, различитих кардиналности и пратеће семантичке валидације.

3. Имплементирати три нова генератора излазних формата – _CSV_, _YAML_ и _Neo4j_ (_Cypher_), ослањајући се на заједнички механизам паметног генерисања и комбиновања података.

4. Прилагодити постојећу екстензију за окружење _Visual Studio Code_ тако да подржава нове језичке конструкте кроз бојење кода, предлоге допуне, приказ кратког описа и проналажење референци.

5. Практично верификовати рад система на комплексном тестном примеру кроз генерисање свих излазних формата и проверу валидности генерисаних података у графној бази _Neo4j_.
]

// TODO: Датум одбране и чланове комисије добијате од ментора
#let datum_odbrane = "15.09.2026."
#let komisija_predsednik = "Гордана Милосављевић"
#let komisija_predsednik_zvanje = "редовни професор"
#let komisija_clan = "Иван Прокић"
#let komisija_clan_zvanje = "ванредни професор"

// На енглеском уписати чланове на латиници
#let komisija_predsednik_eng = "Gordana Milosavljević"
#let komisija_clan_eng = "Ivan Prokić"
#let mentor_eng = "Igor Dejanović"


// Ово даље углавном не треба мењати.

#let zvanje_eng = (
     "редовни професор": "full professor",
     "ванредни професор": "assoc. professor",
     "доцент": "asist. professor",
)
#let komisija_predsednik_zvanje_eng = zvanje_eng.at(komisija_predsednik_zvanje)
#let komisija_clan_zvanje_eng = zvanje_eng.at(komisija_clan_zvanje)
#let mentor_zvanje_eng = zvanje_eng.at(mentor_zvanje)


#let vrsta_rada = if stepen == "Мастер академске студије" {
    "Дипломски - мастер рад"
} else {
    "Дипломски - бечелор рад"
}

#let oblast = "Електротехничко и рачунарско инжењерство"
#let oblast_eng = "Electrical and Computer Engineering"
#let disciplina = "Примењене рачунарске науке и информатика"
#let disciplina_eng = "Applied computer science and informatics"

#import "funkcije.typ": *
// Поглавља/страна/цитата/табела/слика/графика/прилога
#let fizicki_opis = physical()
