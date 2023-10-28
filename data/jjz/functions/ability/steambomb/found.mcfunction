############# DEFROST | EXECUTE ##############

summon snowball ~ ~ ~ {Tags:["smokeGrenade","init"],Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1}},Passengers:[{id:"minecraft:marker",Tags:["smokeGrenade"]}]}
data modify entity @e[type=snowball,tag=smokeGrenade,tag=init,limit=1] Owner set from entity @s Owner
data modify entity @e[type=snowball,tag=smokeGrenade,tag=init,limit=1] Motion set from entity @s Motion
tag @e[type=snowball,tag=smokeGrenade,tag=init,limit=1] remove init

kill @s

##############################################

## jimmyjawnz