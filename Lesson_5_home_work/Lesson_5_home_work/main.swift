import Foundation

//Урок 5 ДЗ. Массивы
/*
 №1. Через readLine вводится любое количество слов. После чего эти слова сортируются по количеству символов. Далее отображается самое короткое слово(если несколько с таким количеством - отобразить все) и так же самое длинное
 */
print ("Введите несколько слов")
var words: [String] = []
var count = 5
while let line = readLine(), count >= 0 {
    print(count)
    count -= 1
    words.append(line)
    let sortedArray = words.sorted{$0.count > $1.count}
    print (sortedArray)
}
print (words)
print ("Конец")

//№2. Составить список из 20 контактов (Имя - номер телефона). Отсортировать по алфавиту (А-Я) и отобразить на какую букву сколько контактов сохранено
var names = ["Aisuluu", "Aigerim", "Akbermet", "Aizirek", "Aida", "Aidai", "Aiym", "Ainazik", "Akmaral", "Aizada", "Zharkyn", "Zhibek", "Zhanyl", "Zhyldyz", "Saikal", "Kanyshai", "Medina", "Nazik", "Meerim", "Sanirabiga"]

var phoneNumbers = ["+996555000000", "+996500010101", "+996505996699", "+996700101010", "+996709090909", "+996557707070", "+996707666999", "+996555555333", "+996556887788", "+996700233445", "+996502474747", "+996999999999", "+996500434343", "+996555123123", "+996222022022", "+996705555555", "+996708655665", "+996556669996", "+996772223322", "+996770170717"]

for (index, item) in names.sorted (by: <).enumerated() {
    print ("\(item): \(phoneNumbers[index])")
}
var a: [String] = names.filter{$0.hasPrefix("A")}
print ("Количество контактов на А - \(a.count)\nСписок контактов - \(a)")

var k: [String] = names.filter{$0.hasPrefix("K")}
print ("Количество контактов на K - \(k.count)\nСписок контактов - \(k)")

var m: [String] = names.filter{$0.hasPrefix("M")}
print ("Количество контактов на M - \(m.count)\nСписок контактов - \(m)")

var n: [String] = names.filter{$0.hasPrefix("N")}
print ("Количество контактов на N - \(n.count)\nСписок контактов - \(n)")

var s: [String] = names.filter{$0.hasPrefix("S")}
print ("Количество контактов на S - \(s.count)\nСписок контактов - \(s)")

var z: [String] = names.filter{$0.hasPrefix("Z")}
print ("Количество контактов на Z - \(z.count)\nСписок контактов - \(z)")


/*№3. Составить мини-игру “Викторина” используя массивы для записи вопросов и ответов
В игре должно быть 5 раундов по 3 вопроса
Так же должны быть несгораемые суммы
Так же в конце если человек проиграл - показать какой ответ был верным и отобразить выигрыш и сколько раундов было выиграно
 */
print ("Добро пожаловать на игру Вопрос-Ответ!\nИгра состоит из 5 раундов\nВ каждом раунде по 3 вопроса\nЗа каждый правильный ответ вы получите 10 баллов\nВведите свой вариант ответа после заданного вопроса\nПоехали!")
var questionRound1: [String] = ["Из какого фильма Прекрасный принц?", "Из какой страны родом Джастин Бибер?","В сиквеле какого праздничного фильма снялся Дональд Трамп?"]
var questionRound2: [String] = ["Какой герой мультфильма живет в ананасе под водой?", "Что является национальным животным Шотландии?", "В каком известном романе фигурировали Джо, Мег, Бет и Эми Марч?"]
var questionRound3: [String] = ["Какая страна производит больше всего кофе в мире?", "Как называются четыре Факультета Хогвартса?", "Какая самая маленькая планета в нашей Солнечной системе?"]
var questionRound4: [String] = ["Как называется колокол часов Вестминстерского дворца в Лондоне?", "Какая игрушка была первой, которую рекламировали по телевидению?", "За какую страну играл Дэвид Бекхэм?"]
var questionRound5: [String] = ["В какой стране находится Прага?", "Какая служба электронной почты принадлежит компании Microsoft?", "Как назывался батончик “Сникерс” до его смены названия в 1990 году?"]

var answerRound1: [String] = ["Золушка", "Канада", "Один дома 2: Затерянный в Нью-Йорке"]
var answerRound2: [String] = ["Губка Боб Квадратные Штаны", "Единорог", "Маленькие женщины"]
var answerRound3: [String] = ["Бразилия", "Гриффиндор, Пуффендуй, Когтевран и Слизерин", "Меркурий"]
var answerRound4: [String] = ["Биг Бен", "Мистер Картофельная Голова", "Англия"]
var answerRound5: [String] = ["Чехия", "Outlook", "Marathon"]

var score = 0
var rounds = 0

print (questionRound1[0])
var answer = readLine()
if answer?.lowercased() == answerRound1[0] {
    print (questionRound1[1])
    let answer = readLine()
    if answer?.lowercased() == answerRound1[1] {
        print (questionRound1[2])
        let answer = readLine()
        if answer?.lowercased() == answerRound1[2] {
            score += 30
            rounds += 1
            print(questionRound2[0])
            let answer = readLine()
            if answer?.lowercased() == answerRound2[0] {
                print (questionRound2[1])
                let answer = readLine()
                if answer?.lowercased() == answerRound2[1] {
                    print (questionRound2[2])
                    let answer = readLine()
                    if answer?.lowercased() == answerRound2[2] {
                       score += 30
                        rounds += 1
                        print(questionRound3[0])
                        let answer = readLine()
                        if answer?.lowercased() == answerRound3[0] {
                            print (questionRound3[1])
                            let answer = readLine()
                            if answer?.lowercased() == answerRound3[1] {
                                print (questionRound3[2])
                                let answer = readLine()
                                if answer?.lowercased() == answerRound3[2] {
                                   score += 30
                                    rounds += 1
                                    print(questionRound4[0])
                                    let answer = readLine()
                                    if answer?.lowercased() == answerRound4[0] {
                                        print (questionRound4[1])
                                        let answer = readLine()
                                        if answer?.lowercased() == answerRound4[1] {
                                            print (questionRound4[2])
                                            let answer = readLine()
                                            if answer?.lowercased() == answerRound4[2] {
                                               score += 30
                                                rounds += 1
                                                print(questionRound5[0])
                                                let answer = readLine()
                                                if answer?.lowercased() == answerRound5[0] {
                                                    print (questionRound5[1])
                                                    let answer = readLine()
                                                    if answer?.lowercased() == answerRound5[1] {
                                                        print (questionRound5[2])
                                                        let answer = readLine()
                                                        if answer?.lowercased() == answerRound5[2] {
                                                            score += 30
                                                             rounds += 1
                                                            print ("Поздравляем!\nВы прошли игру!\nВаши очки - \(score)!\nКоличество пройденных раундов - \(rounds)")
                                                        }
                                                        else {
                                                            print ("Правильный ответ - \(answerRound5[2])\nКоличество пройденных раундов - \(rounds)\nВаши баллы - \(score)")
                                                        }
                                                    }
                                                    else {
                                                        print ("Правильный ответ - \(answerRound5[1])\nКоличество пройденных раундов - \(rounds)\nВаши баллы - \(score)")
                                                    }
                                                }
                                                else {
                                                    print ("Правильный ответ - \(answerRound5[0])\nКоличество пройденных раундов - \(rounds)\nВаши баллы - \(score)")
                                                }
                                            }
                                            else {
                                                print ("Правильный ответ - \(answerRound4[2])\nКоличество пройденных раундов - \(rounds)\nВаши баллы - \(score)")
                                            }
                                        }
                                        else {
                                            print ("Правильный ответ - \(answerRound4[1])\nКоличество пройденных раундов - \(rounds)\nВаши баллы - \(score)")
                                        }
                                    }
                                    else {
                                        print ("Правильный ответ - \(answerRound4[0])\nКоличество пройденных раундов - \(rounds)\nВаши баллы - \(score)")
                                    }
                                }
                                else {
                                    print ("Правильный ответ - \(answerRound3[2])\nКоличество пройденных раундов - \(rounds)\nВаши баллы - \(score)")
                                }
                            }
                            else {
                                print ("Правильный ответ - \(answerRound3[1])\nКоличество пройденных раундов - \(rounds)\nВаши баллы - \(score)")
                            }
                        }
                        else {
                            print ("Правильный ответ - \(answerRound3[0])\nКоличество пройденных раундов - \(rounds)\nВаши баллы - \(score)")
                        }
                    }
                    else {
                        print ("Правильный ответ - \(answerRound2[2])\nКоличество пройденных раундов - \(rounds)\nВаши баллы - \(score)")
                    }
                }
                else {
                    print ("Правильный ответ - \(answerRound2[1])\nКоличество пройденных раундов - \(rounds)\nВаши баллы - \(score)")
                }
            }
            else {
                print ("Правильный ответ - \(answerRound2[0])\nКоличество пройденных раундов - \(rounds)\nВаши баллы - \(score)")
            }
        }
        else {
            print ("Правильный ответ - \(answerRound1[2])\nКоличество пройденных раундов - \(rounds)\nВаши баллы - \(score)")
        }
    }
    else {
        print ("Правильный ответ - \(answerRound1[1])\nКоличество пройденных раундов - \(rounds)\nВаши баллы - \(score)")
    }
}
else {
    print ("Правильный ответ - \(answerRound1[0])\nКоличество пройденных раундов - \(rounds)\nВаши баллы - \(score)")
}
