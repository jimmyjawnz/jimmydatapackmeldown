############# DEFROST | EXECUTE ##############

#say boom smoke

summon marker ~ ~0.5 ~ {Tags:["physical_smoke_grenade","init"]}
scoreboard players operation @e[type=marker,tag=init,sort=nearest,limit=1] steamsmokeTimerT = base steamsmokeTimerT

execute if entity @s[tag=team1] run tag @e[type=marker,tag=init,sort=nearest,limit=1] add team1
execute if entity @s[tag=team2] run tag @e[type=marker,tag=init,sort=nearest,limit=1] add team2
execute if entity @s[tag=team3] run tag @e[type=marker,tag=init,sort=nearest,limit=1] add team3
execute if entity @s[tag=team4] run tag @e[type=marker,tag=init,sort=nearest,limit=1] add team4

tag @e[type=marker,tag=init,sort=nearest,limit=1] remove init

playsound block.candle.extinguish player @a ~ ~ ~ 10 1.25

kill @s

##############################################

## jimmyjawnz