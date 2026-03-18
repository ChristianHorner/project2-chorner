extends RichTextLabel

@export var dialogue_lines: Array[String] = [
	"Hello Mr. Belford and the Intro to Game Development Class!",
	"It's me...Nagito Komaeda here on your screen!!!",
	"Unfortunately my talent is trash as the Ultimate Lucky Student...",
	"But take it from me, with a little bit of hope...",
	"YOU'LL ALL BE THE ULTIMATE GAME DEVELOPERS, OH THE HOPE!!!"
]

var current_index: int = 0

func _ready():
	display_current_line()

func _input(event):
	if event.is_action_pressed("ui_accept") or (event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed):
		advance_dialogue()

func advance_dialogue():
	current_index += 1
	
	if current_index >= dialogue_lines.size():
		current_index = 0
	
	display_current_line()

func display_current_line():
	text = dialogue_lines[current_index]
