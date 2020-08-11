extends Object
#class_name ItemStack

var item : Item
var quantity : int
var pocket

func _init(item_id : int, amount : int):
    item = Items_database.get_item_by_id(item_id)
    item.id = item_id
    quantity = amount


func get_name() -> String: # Returns the name of the Item
    return item.name

func get_description() -> String: # Returns the description of the Item
    return item.description

func get_item_icon() -> Texture: # Returns the Texture of the Item's icon
    var texture = Texture.new()
    texture = load("res://Graphics/Icons/item" + str(item.id) + ".png")
    return texture

func get_item_id() -> int: # Returns the ID of the Item
    return item.id

static func sort_ascending(a, b): # For sorting ItemStack objects in an array
    if a.get_item_id() < b.get_item_id():
        return true
    return false