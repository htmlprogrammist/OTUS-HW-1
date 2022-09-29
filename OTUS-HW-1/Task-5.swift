//
//  Task-5.swift
//  OTUS-HW-1
//
//  Created by Егор Бадмаев on 29.09.2022.
//

/**
 # Работа с коллекциями
 
 ## Описание/Пошаговая инструкция выполнения домашнего задания:
 1. Есть произвольный массив чисел, найти максимальное и минимальное число и поменять их местами
 2. Есть два массива символов - собрать результирующее множество из символов, что повторяются в 2х массивах
 3. Создать словарь с соотношением имя (ключ) пользователя - пароль (значение), получить из словаря все имена, пароли которых длиннее 10 символов
 
 ## Примечание:
 Этот проект создан как macOS/Command Line Tool и в целом ничем не отличается от обычного Playground за исключением той детали, что вам не приходится ждать по 10 минут (или перезапускать по 10 раз Xcode), пока не запустится Playground: тут всё срабатывает моментально.
 */

func task5() {
    /// Соответственно каждому подпункту этого задания
    task51()
    task52()
    task53()
}

func task51() {
    /// Массив с рандомными числами.
    var numbers = [Int]()
    /// Заполнение массива.
    for _ in 0..<10 {
        numbers.append(Int.random(in: 0..<10))
    }
    
    
}

func task52() {
    /// Произвольные массивы символов.
    let firstSymbolsArray = ["a", "b", "c", "d", "e"]
    let secondSymbolsArray = ["b", "d", "f", "e", "r"]
    
    /// Преобразовываем их во множества. Это необходимо для задействования метода `intersection(:)`
    let firstSymbolsSet = Set(firstSymbolsArray)
    let secondSymbolsSet = Set(secondSymbolsArray)
    print(firstSymbolsSet.intersection(secondSymbolsSet))
}

func task53() {
    /// Исходный словарь.
    var users = [String: String]()
    /// Словарь имён, у которых длина паролей >10 символов.
    var names = [String]()
    
    /// Формирование словаря. Пример: `"user68038": "abcdabcdabcdabcd"`
    for _ in 0..<10 {
        users["user\(Int.random(in: 10_000..<100_000))"] = String(repeating: "abcd", count: Int.random(in: 1...4))
    }
    
    for (name, password) in users {
        if password.count > 10 {
            names.append(name)
        }
    }
    print("Полученные имена: \(names)")
}
