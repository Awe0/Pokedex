extends Node2D

signal pokemonsAreCreated(pokemons : Object)

func _ready():
	for key in StaticData.itemData:
		var value = StaticData.itemData[key]
		for i in value:
			var pokemons = Pokemon.new(i)
			pokemonsAreCreated.emit(pokemons)
