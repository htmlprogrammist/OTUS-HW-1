//
//  Task-6.swift
//  OTUS-HW-1
//
//  Created by Егор Бадмаев on 29.09.2022.
//

/**
 # Реализовать функции
 
 ## Цель:
 Написать несколько функций

 ## Описание/Пошаговая инструкция выполнения домашнего задания:
 1. функция складывает две целочисленных переменных - отдает на выходе сумму
 2. функция принимает кортеж из числа и строки приводит число к строке и ввыводит в консоль резуультат
 3. функция принимает на вход опциональное замыкание и целое число, выполняет замыкание только. в случае если число больше 0
 4. функция принимает число на вход (год), проверить високосный ли он

 ## Критерии оценки:
 Для сдачи будет достаточно ссылки на открытый проект в github/bitbucket/gitlab
 */

func task6() {
    /// Тест для первого пункта.
    print(sum(a: 1, b: 2)) // 3
    
    print("---")
    
    /// Тест для второго пункта.
    convertTuple((123, "String")) // "123"
    
    print("---")
    
    /// Тест для третьего пункта.
    executeClosure(number: 1, closure: nil)
    executeClosure(number: 1, closure: {
        print("Выполнение замыкания")
    })
    executeClosure(number: -1, closure: {
        print("Если оно выполнилось, то тут ошибка") // не выполнилось
    })
    
    print("---")
    
    /// Тесты для четвёртого пункта.
    isLeapYear(2000)
    isLeapYear(2004)
    isLeapYear(1905)
    isLeapYear(1900)
}

func sum(a: Int, b: Int) -> Int {
    a + b
}

func convertTuple(_ tuple: (Int, String)) {
    print(String(tuple.0))
}

func executeClosure(number: Int, closure: (() -> Void)?) {
    /// Если замыкание не опциональное и переданное число > 0, замыкание выполнится
    if let closure = closure, number > 0 {
        closure()
    }
}

func isLeapYear(_ year: Int) {
    let condition = year % 4 == 0 && year % 100 != 0 || year % 400 == 0
    print(condition ? "Високосный" : "Не високосный")
}
