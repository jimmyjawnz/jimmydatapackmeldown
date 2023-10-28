############# DEFROST | EXECUTE ##############

summon marker ~ ~ ~ {Tags:["smokeGrenade"]}
execute as @e[type=marker,tag=smokeGrenade] unless score @s steamgrenadeT matches -2147483648..2147483647 run scoreboard players operation @s steamgrenadeT = base steamgrenadeT
particle smoke ~ ~ ~ 0 0 0 0 1 force

##############################################

## jimmyjawnz