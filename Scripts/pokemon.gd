class_name Pokemon

var num : String = ""
var name : String = ""
var img : String = ""
var type : Array = []
var height : String = "" 
var weight : String = ""
var candy : String = ""
var candyCount : int = 0 
var egg : String = ""
var spawnChance : int = 0 
var avgSpawns : float = 0.0
var spawnTime : String = ""
var multipliers : Array = []
var weaknesses : Array = []
var nextEvolution : Array = [] 


func _init(dict : Dictionary):
	num = dict["num"]
	name = dict["name"]
	img = dict["img"]
	type = dict["type"]
	height = dict["height"]
	weight = dict["weight"]
	candy = dict["candy"]
	#candyCount = dict["candy_count"]
	egg = dict["egg"]
	spawnChance = dict["spawn_chance"]
	#avgSpawns = dict["avg_spawns"]
	spawnTime = dict["spawn_time"]
	#multipliers = dict["multipliers"]
	weaknesses = dict["weaknesses"]
	#nextEvolution = dict["next_evolution"]

