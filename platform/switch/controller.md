# Controllers

Up to 8 controllers can be used on the switch, they'll match the controller configuration done in the switch parameters.

Controller names is the only "link" we have to tell godot engine what is the controller switch style. So there is a little bit of semantic in it for the one that need it. It goes as follow: `switch-pad-<id>::<style>::#color`.

For example, the first controller is a joy-con in dual mode vertical it will be `switch-pad-0::dual::#ffe6b90a::#ff283cff` (yes there is 2 colors because left and right joy-cons have both their colors). Another example second controller is a left joy-con in horizontal mode, it will be `switch-pad-0::solo-left::#ffe6b90a` and so on.

**Vertical setup** `dual`/`pro`/`handheld` is supported with a pretty generic mapping, nothing special. (this mode also provides the left and right sticks' analog axes).

**Horizontal setup** `solo-left`/`solo-right` is also supported with funkier mapping. To provide consistency the vertical style provide re-oriented D-PAD + 4 buttons + L/R. Analog stick axis are also supported and follow the expected directions.

Note: pad "style" is detected at first button down on a controller and is not re-check once the game is started.

## How to debug controller?

If you want to debug the mappings simply add this in any of your scenes:

```python
func _ready():
    Input.connect("joy_connection_changed", self, "_on_joy_connection_changed")

func _input(event: InputEvent):
    var message = "device:" + String(event.device) + " event:" + event.as_text()
    print(message)
    #to see it on the switch put it in a label
    #$EventLabel.text = message

func _on_joy_connection_changed( device, connected):
    var name = Input.get_joy_name(device)
    var message = "device:" + String(device) + " connected:" + String(connected) + " name:" + name
    print(message) 
    #to see it on the switch put it in a label
    #$ControllerEvent.text = message
```
