#replace
execute as @e[distance=..8,type=minecraft:item,limit=1,sort=nearest,nbt=!{Item:{id:"minecraft:cobblestone",tag:{}}},nbt={Age:0s,Item:{id:"minecraft:cobblestone",Count:1b}}] at @s run function hardstone:stone/replace
#reset score
scoreboard players reset @s hs.minestone
