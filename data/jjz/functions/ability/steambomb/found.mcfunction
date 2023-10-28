############# DEFROST | EXECUTE ##############

summon snowball ~ ~ ~ {Tags:["smokeGrenade","init","noteam"],Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1}},Passengers:[{id:"minecraft:marker",Tags:["smokeGrenade"]}]}
data modify entity @e[type=snowball,tag=smokeGrenade,tag=init,limit=1] Owner set from entity @s Owner
data modify entity @e[type=snowball,tag=smokeGrenade,tag=init,limit=1] Motion set from entity @s Motion

execute as @e[type=snowball,tag=smokeGrenade,tag=init,limit=1] on owner if entity @s[team=1] run tag @e[tag=smokeGrenade,tag=init,sort=nearest,limit=1] add team1
execute as @e[type=snowball,tag=smokeGrenade,tag=init,limit=1] on owner if entity @s[team=2] run tag @e[tag=smokeGrenade,tag=init,sort=nearest,limit=1] add team2
execute as @e[type=snowball,tag=smokeGrenade,tag=init,limit=1] on owner if entity @s[team=3] run tag @e[tag=smokeGrenade,tag=init,sort=nearest,limit=1] add team3
execute as @e[type=snowball,tag=smokeGrenade,tag=init,limit=1] on owner if entity @s[team=4] run tag @e[tag=smokeGrenade,tag=init,sort=nearest,limit=1] add team4

tag @e[type=snowball,tag=smokeGrenade,tag=init,limit=1] remove init

kill @s

##############################################

## jimmyjawnz