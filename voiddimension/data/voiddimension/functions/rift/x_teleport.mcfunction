#tp based on score
execute at @s if score x_temp vd.coordinates >= 100000 vd.coordinates run tp ~100000 ~ ~
execute at @s if score x_temp vd.coordinates >= 100000 vd.coordinates run scoreboard players remove x_temp vd.coordinates 100000
execute at @s if score x_temp vd.coordinates >= 10000 vd.coordinates run tp ~10000 ~ ~
execute at @s if score x_temp vd.coordinates >= 10000 vd.coordinates run scoreboard players remove x_temp vd.coordinates 10000
execute at @s if score x_temp vd.coordinates >= 1000 vd.coordinates run tp ~1000 ~ ~
execute at @s if score x_temp vd.coordinates >= 1000 vd.coordinates run scoreboard players remove x_temp vd.coordinates 1000
execute at @s if score x_temp vd.coordinates >= 100 vd.coordinates run tp ~100 ~ ~
execute at @s if score x_temp vd.coordinates >= 100 vd.coordinates run scoreboard players remove x_temp vd.coordinates 100
execute at @s if score x_temp vd.coordinates >= 10 vd.coordinates run tp ~10 ~ ~
execute at @s if score x_temp vd.coordinates >= 10 vd.coordinates run scoreboard players remove x_temp vd.coordinates 10
execute at @s if score x_temp vd.coordinates >= 1 vd.coordinates run tp ~1 ~ ~
execute at @s if score x_temp vd.coordinates >= 1 vd.coordinates run scoreboard players remove x_temp vd.coordinates 1
execute at @s if score x_temp vd.coordinates <= -100000 vd.coordinates run tp ~-100000 ~ ~
execute at @s if score x_temp vd.coordinates <= -100000 vd.coordinates run scoreboard players add x_temp vd.coordinates 100000
execute at @s if score x_temp vd.coordinates <= -10000 vd.coordinates run tp ~-10000 ~ ~
execute at @s if score x_temp vd.coordinates <= -10000 vd.coordinates run scoreboard players add x_temp vd.coordinates 10000
execute at @s if score x_temp vd.coordinates <= -1000 vd.coordinates run tp ~-1000 ~ ~
execute at @s if score x_temp vd.coordinates <= -1000 vd.coordinates run scoreboard players add x_temp vd.coordinates 1000
execute at @s if score x_temp vd.coordinates <= -100 vd.coordinates run tp ~-100 ~ ~
execute at @s if score x_temp vd.coordinates <= -100 vd.coordinates run scoreboard players add x_temp vd.coordinates 100
execute at @s if score x_temp vd.coordinates <= -10 vd.coordinates run tp ~-10 ~ ~
execute at @s if score x_temp vd.coordinates <= -10 vd.coordinates run scoreboard players add x_temp vd.coordinates 10
execute at @s if score x_temp vd.coordinates <= -1 vd.coordinates run tp ~-1 ~ ~
execute at @s if score x_temp vd.coordinates <= -1 vd.coordinates run scoreboard players add x_temp vd.coordinates 1
#tp recusively
execute at @s unless score x_temp vd.coordinates = 0 vd.coordinates run function voiddimension:rift/x_teleport
execute at @s if score x_temp vd.coordinates = 0 vd.coordinates run function voiddimension:rift/z_teleport