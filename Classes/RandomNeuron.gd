# RandomNeuron.gd
class_name RandomNeuron extends Neuron

func _init():
	params = []          # нет параметров
	next_neurons = []    # не использует другие нейроны
	intermediate_results = []

func execute(...args: Array) -> Array:
	var input = args[0] as Array   # ожидается Array[Array[Vector2]]
	var height = input.size()
	var width = input[0].size() if height > 0 else 0
	intermediate_results.clear()
	intermediate_results.resize(height)

	for y in range(height):
		var row = []
		row.resize(width)
		for x in range(width):
			var st = input[y][x] as Vector2
			row[x] = _random(st)
		intermediate_results[y] = row

	return intermediate_results

func tune(...args: Array) -> Array:

	return params
