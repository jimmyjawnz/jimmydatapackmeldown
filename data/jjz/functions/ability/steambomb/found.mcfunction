############# DEFROST | EXECUTE ##############

summon snowball ~ ~ ~ {Tags:["smokeGrenade","init"],Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1}},Passengers:[{id:"minecraft:marker",Tags:["smokeGrenade","init"]}]}
data modify entity @e[type=snowball,tag=smokeGrenade,tag=init,limit=1] Owner set from entity @s Owner
data modify entity @e[type=snowball,tag=smokeGrenade,tag=init,limit=1] Motion set from entity @s Motion

execute as @e[type=snowball,tag=smokeGrenade,tag=init,limit=1] at @s on origin if entity @s[team=1] run tag @e[type=snowball,tag=smokeGrenade,tag=init,sort=nearest,limit=1] add team1
execute as @e[type=snowball,tag=smokeGrenade,tag=init,limit=1] at @s on origin if entity @s[team=2] run tag @e[type=snowball,tag=smokeGrenade,tag=init,sort=nearest,limit=1] add team2
execute as @e[type=snowball,tag=smokeGrenade,tag=init,limit=1] at @s on origin if entity @s[team=3] run tag @e[type=snowball,tag=smokeGrenade,tag=init,sort=nearest,limit=1] add team3
execute as @e[type=snowball,tag=smokeGrenade,tag=init,limit=1] at @s on origin if entity @s[team=4] run tag @e[type=snowball,tag=smokeGrenade,tag=init,sort=nearest,limit=1] add team4
tag @e[type=snowball,tag=smokeGrenade,tag=init,limit=1] remove init

execute as @e[type=marker,tag=smokeGrenade,tag=init,limit=1] at @s on vehicle if entity @s[tag=team1] run tag @e[type=marker,tag=smokeGrenade,tag=init,sort=nearest,limit=1] add team1
execute as @e[type=marker,tag=smokeGrenade,tag=init,limit=1] at @s on vehicle if entity @s[tag=team2] run tag @e[type=marker,tag=smokeGrenade,tag=init,sort=nearest,limit=1] add team2
execute as @e[type=marker,tag=smokeGrenade,tag=init,limit=1] at @s on vehicle if entity @s[tag=team3] run tag @e[type=marker,tag=smokeGrenade,tag=init,sort=nearest,limit=1] add team3
execute as @e[type=marker,tag=smokeGrenade,tag=init,limit=1] at @s on vehicle if entity @s[tag=team4] run tag @e[type=marker,tag=smokeGrenade,tag=init,sort=nearest,limit=1] add team4

tag @e[type=marker,tag=smokeGrenade,tag=init,limit=1] remove init

kill @s

##############################################

## jimmyjawnz