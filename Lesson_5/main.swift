import Foundation

//Массивы, Словари, Set и работа с ними, foreach
let array: [Int] = [1, 2, 3, 4, 5]
for num in array {
    print (num)
}

let arrayString: [String] = [",", " ", "/", "*"]
for sign in arrayString {
    print (sign)
}

var clothesArray: [String] = ["Кофта", "Штаны", "Футболка", "Кепка"]
var costArray: [Int] = [500, 1000, 300, 200]
//метод добавления элемента в массив
clothesArray.append("Ботинки")
costArray.append(2300)
clothesArray.insert("Шапка", at: 1)
costArray.insert(300, at: 1)

print(clothesArray)
print(costArray)


for (index, item) in clothesArray.enumerated() {
    print ("\(index + 1). \(item) - \(costArray[index]) сом")
}
////Вариант 1
////print ("Введите слово")
////let readline = readLine()!
////var word: String = readline
////var name: [Character] = []
////var nameReversed: [Character] = []
////for i in word {
////    name.append(i)
////}
////for v in word {
////    nameReversed.insert(v, at: 0)
////}
////print (name)
////print (nameReversed)
//
//Вариант 2
print ("Введите слово")
let readline = readLine()!
var array1: [String] = [""]
var array2: [String] = [""]

array1.remove(at: 0)
array2.remove(at: 0)

for i in readline {
    array1.append(String(i))
    array2.insert(String(i), at: 0)
}

print (array1)
print (array2)

var car = "Toyota"
var carSymbol: [Character] = []
for (index, item) in car.enumerated() {
    carSymbol.insert(item, at: index + index)
}
print (carSymbol)

//Двухмерный массив
//Массив в массиве
let arrayA: [String] = ["Anna", "Anton", "Aibek"]
let arrayB: [String] = ["Bakai", "Bektur", "Benazir"]
let arrayC: [String] = ["Chyngyz", "Cholpon", "Chynara"]
let generalArray: [[String]] = [arrayA, arrayB, arrayC]
print (generalArray[2][1])


