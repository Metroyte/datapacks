execute positioned ~-0.5 ~ ~-0.5 as @e[type=!minecraft:area_effect_cloud,dx=-1,limit=1,sort=nearest] at @s run function ventilators:direction/push/motion/east
execute positioned ~-0.5 ~ ~-0.5 as @a[gamemode=!spectator,dx=-1,limit=1,sort=nearest] at @s if block ~-0.35 ~ ~ #ventilators:nocollision if block ~-0.35 ~1.9999 ~ #ventilators:nocollision if block ~-0.35 ~1.9999 ~0.3 #ventilators:nocollision if block ~-0.35 ~1.9999 ~-0.3 #ventilators:nocollision if block ~-0.35 ~1 ~ #ventilators:nocollision if block ~-0.35 ~1 ~0.3 #ventilators:nocollision if block ~-0.35 ~1 ~-0.3 #ventilators:nocollision if block ~-0.35 ~ ~0.3 #ventilators:nocollision if block ~-0.35 ~ ~-0.3 #ventilators:nocollision run tp @s ~-0.0625 ~ ~
