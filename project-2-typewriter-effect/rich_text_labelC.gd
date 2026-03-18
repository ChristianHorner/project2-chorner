extends RichTextLabel

@export var dialogue_lines: Array[String] = [
	"Hello Mr. Belford and the [i][color=yellow]Intro to Game Development Class![/i]",
	"It's me...[b]Nagito Komaeda[/b] here on your screen!!!",
	"Unfortunately my talent is trash as the [b]Ultimate Lucky Student[/b]...",
	"But take it from me, with a little bit of hope...",
	"[b]YOU'LL ALL BE THE [i][color=yellow]ULTIMATE GAME DEVELOPERS!!![/i][/b]"
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
	var display_string = ""
	var full_text = dialogue_lines[current_index]
	
	var is_reading_tag = false
	
	for character in full_text:
		if character == "[":
			is_reading_tag = true

		display_string += character
		
		if is_reading_tag == false:
			
			text = display_string
			
			await get_tree().create_timer(0.02).timeout
		
		if character == "]":
			is_reading_tag = false
