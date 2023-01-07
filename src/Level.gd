extends Spatial

func _ready():
  var grass := $Grass/Straw
  var straw_scene = load("res://src/GrassStraw.tscn")
  var width = 50
  for x in width:
    for z in width:
        var straw_instance = straw_scene.instance()
        straw_instance.set_name("Straw" + str(x) + str(z))
        straw_instance.translation.x = (x - width / 2) * 0.5
        straw_instance.translation.z = (z - width / 2) * 0.5

        var rng = RandomNumberGenerator.new()
        rng.randomize()
        straw_instance.translation.y -= rng.randi_range(0, 3) * 0.1

        $Grass.add_child(straw_instance)
