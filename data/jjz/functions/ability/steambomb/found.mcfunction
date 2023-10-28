############# DEFROST | EXECUTE ##############

summon snowball ~ ~ ~ {Tags:["smokeGrenade","init"],Passengers:[{id:"minecraft:area_effect_cloud",Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["smokeGrenade"]}]}
data modify entity @e[type=snowball,tag=smokeGrenade,tag=init,limit=1] Owner set from entity @s Owner
data modify entity @e[type=snowball,tag=smokeGrenade,tag=init,limit=1] Motion set from entity @s Motion
tag @e[type=snowball,tag=smokeGrenade,tag=init,limit=1] remove init

kill @s

##############################################

## jimmyjawnz