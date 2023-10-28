############# OVERHEAT | RAYCAST #############

execute if block ~ ~ ~ air positioned ^ ^ ^0.05 run function jjz:heater/pickup/raycast
execute if block ~ ~ ~ soul_lantern at @e[tag=heater,limit=1,sort=nearest] if score @s playerID = @e[tag=heater,limit=1,sort=nearest] playerID if entity @e[tag=heater,limit=1,sort=nearest] if entity @e[tag=!overheat,limit=1,sort=nearest] run function jjz:heater/pickup/start

##############################################

## jimmyjawnz