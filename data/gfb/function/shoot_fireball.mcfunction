data modify entity @s ExplosionPower set value 0

execute positioned 0.0 0.0 0.0 positioned ^ ^ ^1.2 run summon marker ~ ~ ~ {Tags:[motion_applier]}
data modify entity @s Motion set from entity @n[type=marker,x=0,y=0,z=0,distance=..5,tag=motion_applier] Pos 

summon marker ~ ~ ~ {Tags:[ghast_fireball_primer,INIT]}

ride @e[type=marker,tag=ghast_fireball_primer,tag=INIT,limit=1] mount @s
scoreboard players operation @e[type=marker,tag=ghast_fireball_primer,tag=INIT,limit=1] gfb.ID = #search gfb.ID

tag @e[type=marker,tag=ghast_fireball_primer] remove INIT

kill @e[type=marker,x=0,y=0,z=0,distance=..5,tag=motion_applier]
