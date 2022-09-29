//
//  Task-4.swift
//  OTUS-HW-1
//
//  Created by Егор Бадмаев on 29.09.2022.
//

/**
 # Сгенерировать массив случайных чисел
 
 ## Описание/Пошаговая инструкция выполнения домашнего задания:
 1. Сгенерировать массив случайных чисел (например 200 чисел).
 2. Найти индекс первого повторяющегося числа в массиве. Если все числа разные - то `-1`.
 
 ### Пример: `[3, 4, 5, 6, 8, 78, 67, 4, 88]` - `4`, индекс 1

 ## Критерии оценки:
 Для сдачи будет достаточно ссылки на открытый проект в github/bitbucket/gitlab
 */

func task4() {
    /// Массив с рандомными числами.
    var numbers = [Int]()
    /// Ответ на второе задание.
    var secondTaskAnswer = -1
    /// Количество чисел в массиве, которое вводит пользователь.
    print("Введите количество чисел в массиве:")
    /// `readLine()` возвращает опциональную строку (`String?`), поэтому мы разворачиваем опционал и в случае ошибки пользователя мы ставим, например, 10 чисел
    let amountOfNumbers = Int(readLine() ?? "") ?? 10
    
    /// Заполнение массива случайными числами.
    for _ in 0..<amountOfNumbers {
        numbers.append(Int.random(in: 0...100))
    }
    
    
    
    /// Находим индекс первого повторяющегося числа в массиве. Для этого в циклах мы используем индексы элементов. Нам необходимо два цикла. Такой алгоритм не самый эффективный: O(n \* lon(n) по времени.
//    outerLoop: for i in 0..<numbers.count - 1 {
//        for j in 1..<numbers.count {
//            if numbers[i] == numbers[j] {
//                /// Задаём получившееся число
//                secondTaskAnswer = numbers[i]
//                break outerLoop // выходим сразу из первого цикла, потому что нет смысла делать что-то дальше
//            }
//        }
//    }
    print(numbers) // для проверки
    print("Ответ на второе задание: \(secondTaskAnswer)")
}

/**
 ## Вывод:
 ```
 Введите количество чисел в массиве:
 200
 [27, 63, 4, 25, 43, 88, 0, 26, 58, 14, 89, 60, 22, 4, 21, 14, 91, 51, 88, 57, 89, 95, 54, 33, 25, 77, 38, 86, 55, 7, 45, 22, 54, 7, 76, 60, 87, 59, 41, 3, 45, 2, 15, 23, 81, 27, 95, 81, 15, 8, 92, 99, 82, 37, 34, 9, 49, 90, 11, 69, 39, 28, 3, 81, 43, 41, 0, 89, 60, 100, 37, 49, 12, 99, 33, 88, 63, 53, 33, 48, 46, 14, 11, 4, 79, 23, 56, 27, 93, 39, 24, 67, 68, 55, 67, 84, 87, 34, 28, 14, 28, 31, 77, 2, 5, 35, 84, 62, 32, 67, 13, 71, 54, 94, 39, 13, 40, 71, 83, 24, 68, 77, 28, 17, 94, 27, 42, 87, 50, 49, 18, 21, 1, 41, 71, 6, 9, 74, 47, 32, 31, 59, 99, 51, 53, 93, 92, 46, 4, 51, 49, 11, 49, 58, 82, 41, 8, 45, 12, 53, 9, 60, 4, 1, 39, 98, 50, 16, 39, 16, 87, 3, 9, 15, 98, 81, 97, 6, 89, 54, 28, 62, 22, 41, 57, 1, 5, 45, 39, 56, 73, 91, 30, 96, 66, 8, 64, 86, 38, 81]
 Ответ на второе задание: 0
 ```
 */
