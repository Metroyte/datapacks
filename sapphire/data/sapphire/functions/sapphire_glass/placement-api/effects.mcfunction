tag @s remove sp.glass_block
#placement (recursive)
execute if entity @s[scores={sp.glass_placed=1..}] positioned ~ ~1.5 ~ run function sapphire:sapphire_glass/placement-api/placement/1
