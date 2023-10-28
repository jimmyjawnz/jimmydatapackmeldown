############# OVERHEAT | EXECUTE #############

say PICKUP EXECUTE
scoreboard players set @s playerHeaterState 3


execute if score @s playerID = @e[type=interaction,tag=heater,limit=1,sort=nearest] playerID run function jjz:heater/pickup/start


#execute anchored eyes run function jjz:heater/pickup/raycast


##############################################

## jimmyjawnz