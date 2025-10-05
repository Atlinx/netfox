extends Node


@export var cpp_test: CPPTest


func _ready() -> void:
	#print("one".hash())
	#print("two".hash())
	#_test_rpc()
	_test_get_autoload()


func _test_get_autoload():
	#cpp_test.
	pass


func _test_rpc():
	cpp_test.test_rpc("hello")


func _test_set():
	var _set = _Set.new()
	for i in range(5):
		print("values in _set:")
		var values = _set.values()
		print("value: ", values)
		print("set: ", _set)
		_set.add(i)
	print("max: ", _set.max())
	for i in _set:
		print(" ", i)
	print("  min: ", _set.min())
	print("  max: ", _set.max())
	
	var _set2 = _Set.of([0, 1, 2, 4, 3])
	print("_set2: ", _set2)
	print("_set == _set2 ? ", _set.equals(_set2))
	var _set3 = _Set.of([0, 7, 3])
	print("_set3: ", _set3)
	print("_set == _set3 ? ", _set.equals(_set3))
	_set3.erase(7)
	print("_set3 erase 7: ", _set3)
	_set3.clear()
	print("_set3 cleared: ", _set3)
