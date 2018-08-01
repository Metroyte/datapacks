#Recognizes the ItemRotation
execute as @e[type=minecraft:item_frame,nbt={ItemRotation:0b,Facing:1b,Item:{id:"minecraft:redstone_torch"}}] unless entity @s[scores={mc.itemrotation=0}] run scoreboard players set @s mc.itemrotation 0
execute as @e[type=minecraft:item_frame,nbt={ItemRotation:1b,Facing:1b,Item:{id:"minecraft:redstone_torch"}}] unless entity @s[scores={mc.itemrotation=1}] run scoreboard players set @s mc.itemrotation 1
execute as @e[type=minecraft:item_frame,nbt={ItemRotation:2b,Facing:1b,Item:{id:"minecraft:redstone_torch"}}] unless entity @s[scores={mc.itemrotation=2}] run scoreboard players set @s mc.itemrotation 2
execute as @e[type=minecraft:item_frame,nbt={ItemRotation:3b,Facing:1b,Item:{id:"minecraft:redstone_torch"}}] unless entity @s[scores={mc.itemrotation=3}] run scoreboard players set @s mc.itemrotation 3
execute as @e[type=minecraft:item_frame,nbt={ItemRotation:4b,Facing:1b,Item:{id:"minecraft:redstone_torch"}}] unless entity @s[scores={mc.itemrotation=4}] run scoreboard players set @s mc.itemrotation 4
execute as @e[type=minecraft:item_frame,nbt={ItemRotation:5b,Facing:1b,Item:{id:"minecraft:redstone_torch"}}] unless entity @s[scores={mc.itemrotation=5}] run scoreboard players set @s mc.itemrotation 5
execute as @e[type=minecraft:item_frame,nbt={ItemRotation:6b,Facing:1b,Item:{id:"minecraft:redstone_torch"}}] unless entity @s[scores={mc.itemrotation=6}] run scoreboard players set @s mc.itemrotation 6
execute as @e[type=minecraft:item_frame,nbt={ItemRotation:7b,Facing:1b,Item:{id:"minecraft:redstone_torch"}}] unless entity @s[scores={mc.itemrotation=7}] run scoreboard players set @s mc.itemrotation 7


#Determines if receiver or sender
execute as @e[type=minecraft:item_frame,scores={mc.itemrotation=0..},tag=!mc.receiver] at @s if block ~ ~-1 ~ minecraft:iron_block if block ~ ~ ~ minecraft:redstone_wire run tag @s add mc.receiver
execute as @e[type=minecraft:item_frame,scores={mc.itemrotation=0..},tag=!mc.sender] at @s if block ~ ~-1 ~ minecraft:gold_block if block ~ ~ ~ minecraft:stone_button run tag @s add mc.sender


#Powers every redstone_wire with same ItemRotation (sender)
execute as @e[tag=!mc.blocked,type=minecraft:item_frame,scores={mc.itemrotation=0},nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}},tag=mc.sender] at @s if block ~ ~ ~ minecraft:stone_button[powered=true] if block ~ ~-1 ~ minecraft:gold_block run execute at @e[type=minecraft:item_frame,scores={mc.itemrotation=0},nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}},tag=mc.receiver] if block ~ ~-1 ~ minecraft:iron_block run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=1] replace minecraft:redstone_wire[power=0]
execute as @e[tag=!mc.blocked,type=minecraft:item_frame,scores={mc.itemrotation=1},nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}},tag=mc.sender] at @s if block ~ ~ ~ minecraft:stone_button[powered=true] if block ~ ~-1 ~ minecraft:gold_block run execute at @e[type=minecraft:item_frame,scores={mc.itemrotation=1},nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}},tag=mc.receiver] if block ~ ~-1 ~ minecraft:iron_block run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=1] replace minecraft:redstone_wire[power=0]
execute as @e[tag=!mc.blocked,type=minecraft:item_frame,scores={mc.itemrotation=2},nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}},tag=mc.sender] at @s if block ~ ~ ~ minecraft:stone_button[powered=true] if block ~ ~-1 ~ minecraft:gold_block run execute at @e[type=minecraft:item_frame,scores={mc.itemrotation=2},nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}},tag=mc.receiver] if block ~ ~-1 ~ minecraft:iron_block run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=1] replace minecraft:redstone_wire[power=0]
execute as @e[tag=!mc.blocked,type=minecraft:item_frame,scores={mc.itemrotation=3},nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}},tag=mc.sender] at @s if block ~ ~ ~ minecraft:stone_button[powered=true] if block ~ ~-1 ~ minecraft:gold_block run execute at @e[type=minecraft:item_frame,scores={mc.itemrotation=3},nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}},tag=mc.receiver] if block ~ ~-1 ~ minecraft:iron_block run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=1] replace minecraft:redstone_wire[power=0]
execute as @e[tag=!mc.blocked,type=minecraft:item_frame,scores={mc.itemrotation=4},nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}},tag=mc.sender] at @s if block ~ ~ ~ minecraft:stone_button[powered=true] if block ~ ~-1 ~ minecraft:gold_block run execute at @e[type=minecraft:item_frame,scores={mc.itemrotation=4},nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}},tag=mc.receiver] if block ~ ~-1 ~ minecraft:iron_block run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=1] replace minecraft:redstone_wire[power=0]
execute as @e[tag=!mc.blocked,type=minecraft:item_frame,scores={mc.itemrotation=5},nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}},tag=mc.sender] at @s if block ~ ~ ~ minecraft:stone_button[powered=true] if block ~ ~-1 ~ minecraft:gold_block run execute at @e[type=minecraft:item_frame,scores={mc.itemrotation=5},nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}},tag=mc.receiver] if block ~ ~-1 ~ minecraft:iron_block run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=1] replace minecraft:redstone_wire[power=0]
execute as @e[tag=!mc.blocked,type=minecraft:item_frame,scores={mc.itemrotation=6},nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}},tag=mc.sender] at @s if block ~ ~ ~ minecraft:stone_button[powered=true] if block ~ ~-1 ~ minecraft:gold_block run execute at @e[type=minecraft:item_frame,scores={mc.itemrotation=6},nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}},tag=mc.receiver] if block ~ ~-1 ~ minecraft:iron_block run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=1] replace minecraft:redstone_wire[power=0]
execute as @e[tag=!mc.blocked,type=minecraft:item_frame,scores={mc.itemrotation=7},nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}},tag=mc.sender] at @s if block ~ ~ ~ minecraft:stone_button[powered=true] if block ~ ~-1 ~ minecraft:gold_block run execute at @e[type=minecraft:item_frame,scores={mc.itemrotation=7},nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}},tag=mc.receiver] if block ~ ~-1 ~ minecraft:iron_block run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=1] replace minecraft:redstone_wire[power=0]

#Replaces powered button with unpowered stone_button
execute as @e[type=minecraft:item_frame,scores={mc.itemrotation=0..},tag=mc.sender] at @s if block ~ ~ ~ minecraft:stone_button[powered=true,facing=north] run fill ~ ~ ~ ~ ~ ~ minecraft:stone_button[powered=false,face=floor,facing=north] replace minecraft:stone_button[powered=true,face=floor]
execute as @e[type=minecraft:item_frame,scores={mc.itemrotation=0..},tag=mc.sender] at @s if block ~ ~ ~ minecraft:stone_button[powered=true,facing=south] run fill ~ ~ ~ ~ ~ ~ minecraft:stone_button[powered=false,face=floor,facing=south] replace minecraft:stone_button[powered=true,face=floor]
execute as @e[type=minecraft:item_frame,scores={mc.itemrotation=0..},tag=mc.sender] at @s if block ~ ~ ~ minecraft:stone_button[powered=true,facing=west] run fill ~ ~ ~ ~ ~ ~ minecraft:stone_button[powered=false,face=floor,facing=west] replace minecraft:stone_button[powered=true,face=floor]
execute as @e[type=minecraft:item_frame,scores={mc.itemrotation=0..},tag=mc.sender] at @s if block ~ ~ ~ minecraft:stone_button[powered=true,facing=east] run fill ~ ~ ~ ~ ~ ~ minecraft:stone_button[powered=false,face=floor,facing=east] replace minecraft:stone_button[powered=true,face=floor]

#Receiver blocks ongoing redstone power
execute as @e[type=minecraft:item_frame,scores={mc.itemrotation=0..},tag=mc.receiver] at @s if block ~ ~ ~ minecraft:redstone_wire[power=1] run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=0] replace minecraft:redstone_wire[power=1]
