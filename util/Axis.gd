tool
extends Node2D
class_name Axis
export(int, 1, 20) var width = 10 setget set_width

func set_width(v : int):
    width = v
    update()

func _draw() -> void:
    if not Engine.editor_hint: return
    draw_line(Vector2(-100000, 0), Vector2(100000, 0), Color.red, width)
    draw_line(Vector2(0, -100000), Vector2(0, 100000), Color.green, width)