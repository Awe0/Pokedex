extends Node2D



func download_texture(url : String, fileName : String):
	var http = HTTPRequest.new()
	add_child(http)
	http.set_download_file(fileName)
	print(http)
	http.request(url)
	


func _on_main_pokemons_are_created(pokemons : Object):
	download_texture(pokemons.img, pokemons.name + ".png")

