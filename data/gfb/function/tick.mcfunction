
## Ghast Fireball
execute as @a[scores={da.snowball_use=1..}] at @s if entity @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{"ghast_fireball":true}}}},distance=..10] run function gfb:use

execute as @e[type=marker,tag=ghast_fireball_primer,tag=!INIT] at @s run function gfb:check_fireball_prime

execute as @a unless score @s gfb.ID matches 0.. run function gfb:assign_id

schedule function gfb:tick 1t replace