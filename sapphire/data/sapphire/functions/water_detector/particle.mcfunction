#particle setup
execute if entity @s[tag=sp.wd.SU.tag] run function sapphire:water_detector/particle_setup
#cleanup
execute unless block ~ ~ ~ minecraft:observer[facing=up] run function sapphire:water_detector/cleanup
execute if block ~ ~ ~ minecraft:observer[facing=up] run scoreboard players reset @s sp.wd.cleanup
execute as @a[distance=..12,scores={sp.wd.cleanup=1..}] at @s unless entity @e[tag=sp.wd.detector,distance=..8,scores={sp.wd.cleanup=1..}] run scoreboard players reset @s sp.wd.cleanup
#effects
execute if block ~ ~ ~ minecraft:observer[facing=up,powered=false] positioned ~ ~0.5 ~ if entity @e[tag=sp.wd.fire,distance=..0.1,limit=1,nbt={Fire:0s}] run fill ~ ~ ~ ~ ~ ~ minecraft:observer[facing=up,powered=true]
execute if block ~ ~ ~ minecraft:observer[facing=up,powered=true] positioned ~ ~0.5 ~ unless entity @e[tag=sp.wd.fire,distance=..0.1,limit=1,nbt={Fire:0s}] run fill ~ ~ ~ ~ ~ ~ minecraft:observer[facing=up,powered=false]
execute positioned ~ ~0.5 ~ if entity @e[tag=sp.wd.fire,distance=..0.1,limit=1,nbt={Fire:0s}] run scoreboard players add @s sp.wd.detector 1
execute if entity @s[scores={sp.wd.detector=1..}] run particle minecraft:dust 0.25 0.1 1 1.25 ~ ~0.5 ~ 0.3 0.3 0.3 0.05 1
execute if entity @s[scores={sp.wd.detector=1}] run playsound minecraft:block.fire.extinguish ambient @a ~ ~ ~ 0.5 1
execute if entity @s[scores={sp.wd.detector=100}] positioned ~ ~0.5 ~ run kill @e[tag=sp.wd.fire,distance=..0.1,limit=1,nbt={Fire:0s}]
execute if entity @s[scores={sp.wd.detector=100}] run summon minecraft:armor_stand ~ ~0.5 ~ {Fire:32767s,Invulnerable:1b,Invisible:1b,NoGravity:1b,Tags:["sp.wd.fire"],Small:1b}
execute if entity @s[scores={sp.wd.detector=100}] run playsound minecraft:block.fire.ambient ambient @a ~ ~ ~ 0.5 1
execute if entity @s[scores={sp.wd.detector=100}] run scoreboard players set @s sp.wd.detector 0
