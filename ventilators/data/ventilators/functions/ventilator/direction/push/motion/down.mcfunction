execute store result score @s v.ventilator run data get entity @s Motion[1] 1000
scoreboard players add @s v.ventilator 100
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s v.ventilator