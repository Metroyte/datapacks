summon minecraft:vindicator ~ ~ ~
execute as @e[type=minecraft:vindicator,limit=1,sort=nearest] run function smartvillage:village/standing/hostile/takeover
tag @s add sv.replace
schedule function smartvillage:village/standing/hostile/replace_core 2t
function smartvillage:village/standing/hostile/effects
