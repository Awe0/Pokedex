extends CanvasLayer

@onready var buttonContainer = $MainBox/HBoxContainer/ScrollContainer/ButtonContainer
@onready var imgPokemon = $MainBox/RightBoxInfo/HBoxContainer/ImgPokemon
@onready var namePokemon = $MainBox/RightBoxInfo/HBoxContainer/NamePokemon
@onready var rightBoxInfo = $MainBox/RightBoxInfo

@onready var type = $MainBox/RightBoxInfo/HBoxContainer/BoxStatsData/Type
@onready var weight = $MainBox/RightBoxInfo/HBoxContainer/BoxStatsData/Weight
@onready var height = $MainBox/RightBoxInfo/HBoxContainer/BoxStatsData/Height


@export var button : PackedScene

var pokemonsArr : Array

func _ready():
	rightBoxInfo.visible = false
	Eventbus.buttonPressed.connect(on_buttonPressed)

func _process(delta):
	pass

func _on_main_pokemons_are_created(pokemons : Object):
	pokemonsArr.append(pokemons)
	createButton(pokemons)

func createButton(pokemons : Object):
	var newButton = button.instantiate()
	newButton.text = pokemons.name
	buttonContainer.add_child(newButton)


func displayGoodInfos(buttonName : String):
	type.text = ""
	for objects in pokemonsArr:
		if objects.name == buttonName:
			imgPokemon.texture = ResourceLoader.load("res://Imgs/"+ buttonName +".png")
			namePokemon.text = buttonName + "    "
			weight.text = objects.weight
			height.text = objects.height
			for i in objects.type:
				type.text += i + "  "

func on_buttonPressed(pokeName):
	rightBoxInfo.visible = false
	if rightBoxInfo.visible == false:
		rightBoxInfo.visible = true
		displayGoodInfos(pokeName)
	else:
		rightBoxInfo.visible = false
