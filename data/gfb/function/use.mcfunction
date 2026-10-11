kill @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{"ghast_fireball":true}}}}]

scoreboard players operation #search gfb.ID = @s gfb.ID
execute at @s rotated as @s positioned ~ ~1.5 ~ summon fireball run function gfb:shoot_fireball

playsound minecraft:entity.breeze.jump player @a ~ ~ ~ 1 1.3
playsound minecraft:item.firecharge.use player @a ~ ~ ~ 1 0.8

rotate @s ~ ~-2