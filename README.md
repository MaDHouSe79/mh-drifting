## qb-drfting

## Install 
- place qb-drifting in [qb] folder
- add the icon to your qbcore resources/[qb]/qb-core/shared/items.lua file
- copy the icon in img folder to your resources/[qb]/qb-inventory/html/images folder


**How it works**
* for admins to spawn in the drift item: /givemitem [id] driftkit 1
* Open your inventory, drag the drift item to use.
* if you done with drifting, open your inventory drag the drift item to use.
* the vecihle stop drifting if you go offline of store the vehicle.
* as long as you are driving, the drif mod will be enable untill your are disable it via inventory drag to use again.

Enjoy driving sideways 👊😎

## Shared item in qb-core items.lua
```lua
['driftkit'] = {['name'] = 'driftkit', ['label'] = 'Drift Kit', ['weight'] = 50,['type'] = 'item', ['image'] = 'driftkit.png', ['unique'] = false,['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Vehicle Drift Kit'},
```
