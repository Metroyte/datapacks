execute store success score _fallback_ sp.lr.pa.fail run data merge entity @e[type=minecraft:item,limit=1,sort=nearest,nbt=!{Item:{id:"minecraft:redstone_torch",tag:{}}},nbt={Item:{id:"minecraft:redstone_torch",Count:1b}},distance=..2] {Item:{id:"minecraft:redstone_torch",Count:1b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],display:{Name:"{\"text\":\"Lightning Rod\",\"color\":\"yellow\",\"italic\":false}"}}}}
execute if score _fallback_ sp.lr.pa.fail > 0 sp.lr.pa.fail run scoreboard players remove @s sp.lr.pa.fail 1
scoreboard players set _fallback_ sp.lr.pa.fail 0
