extends CanvasLayer

@onready var container : VBoxContainer = %VBoxContainer

var debug_panel_item_scene : PackedScene = load("res://addons/codewithtom/debug_panel/debug_panel_item.tscn")
var items : Dictionary = {}

func add(id : String, title : String, initial_content : String) -> void:
	var debug_panel_item = _find_or_add_item(id)
	
	if !debug_panel_item:
		return
	
	debug_panel_item.set_content(title, initial_content)

func update(id : String, content : String) -> void:
	var debug_panel_item = _find_or_add_item(id)
	
	if !debug_panel_item:
		return
	
	debug_panel_item.set_content("", content)

func _find_or_add_item(id : String) -> DebugPanelItem:
	var debug_panel_item : DebugPanelItem
	
	if items.has(id):
		debug_panel_item = items[id] as DebugPanelItem
	
	if !debug_panel_item:
		debug_panel_item = debug_panel_item_scene.instantiate()
		container.add_child(debug_panel_item)
		items[id] = debug_panel_item
	
	return debug_panel_item
