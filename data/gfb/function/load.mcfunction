
tellraw @a [{"text": "[Server]: "}, {"text":"Cave SMP datapack reloaded", "color":"green"}]


scoreboard objectives add da.snowball_use used:snowball
scoreboard objectives add temp dummy
scoreboard objectives add server_data dummy
scoreboard objectives add gfb.ID dummy

forceload add 0 0

function gfb:tick