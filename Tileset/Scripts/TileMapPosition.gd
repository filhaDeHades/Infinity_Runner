extends TileMap

export(NodePath) var playerPath
onready var player = get_node(playerPath)

func _process(delta):
	position.x = player.get_position().x
