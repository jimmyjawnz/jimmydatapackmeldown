############# DEFROST | EXECUTE ##############

say boom smoke

summon marker ~ ~ ~ {Tags:["physical_smoke_grenade","init"]}
scoreboard players operation @e[type=marker,tag=init,sort=nearest,limit=1] steamsmokeTimerT = base steamsmokeTimerT

playsound block.candle.extinguish player @a ~ ~ ~ 10 1.25

kill @s

##############################################

## jimmyjawnz