@tool
extends EditorPlugin

func _enter_tree():
	add_autoload_singleton("DebugPanel", "res://addons/codewithtom/debug_panel/debug_panel.tscn")

func _exit_tree():
	remove_autoload_singleton("DebugPanel")
