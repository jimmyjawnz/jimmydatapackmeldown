############## PICKUP | RAYCAST ##############

execute if block ~ ~ ~ air positioned ^ ^ ^0.05 run function jjz:ability/overheat/raycast
execute if block ~ ~ ~ soul_lantern at @e[tag=heater,limit=1,sort=nearest] if score @s playerID = @e[tag=heater,limit=1,sort=nearest] playerID as @e[tag=heater,limit=1,sort=nearest] run function jjz:ability/overheat/start


##############################################

## jimmyjawnz