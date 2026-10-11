

scoreboard players set .has_vehicle temp 0
execute on vehicle run scoreboard players set .has_vehicle temp 1

execute if score .has_vehicle temp matches 0 run function gfb:explode_trigger