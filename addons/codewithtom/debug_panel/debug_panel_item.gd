class_name DebugPanelItem
extends PanelContainer

@onready var label : RichTextLabel = %RichTextLabel

var current_title : String
var current_body : String

func set_content(title : String, body : String) -> void:
	if title.length() > 0:
		current_title = title
	
	current_body = body
	label.text = "[b]%s[/b]\n%s" % [current_title, current_body]
