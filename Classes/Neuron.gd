@abstract class_name Neuron extends Node

## Абстрактный суперкласс нейрона сети.
##
## Представляет собой одну функцию процедурноё текстуры (ПТ).

## Список ссылок на следующие нейроны.
var next_neurons: Array[Neuron]

## Список параметров-весов функции-нейрона.
var params: Array

## Матрица промежуточных результатов по пикселям. Результаты выполнения этого нейрона.
var intermediate_results: Array[Array]


## Функция, выполняющая нейрон-функцию ПТ.
@abstract func execute(...args: Array) -> Array

## Функция исправления.
@abstract func tune(...args: Array) -> Array
