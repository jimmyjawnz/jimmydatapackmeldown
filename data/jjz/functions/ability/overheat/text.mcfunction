############# OVERHEAT | EXECUTE #############

scoreboard players remove @s heaterOverheatT 1

execute if score @s heaterOverheatT matches 0 run kill @s
execute if score @s heaterOverheatT matches 40 run data merge entity @s {text:'{"text":" OVER-HEAT IN 2 ","color":"#FFFFFF"}',background:-83916283}
execute if score @s heaterOverheatT matches 20 run data merge entity @s {text:'{"text":" OVER-HEAT IN 1 ","color":"#FFFFFF"}',background:-83934958}
execute if score @s heaterOverheatT matches 1 run tag @e[limit=1,sort=nearest,tag=heater] add completeOverheat
execute if score @s heaterOverheatT matches 0 run data merge entity @s {text:'{"text":" OVER-HEAT IN 0 ","color":"#FFFFFF"}',background:-83896824}
execute unless entity @e[limit=1,sort=nearest,tag=heater,distance=..1] run kill @s

particle smoke ~ ~-0.5 ~ 0 0 0 0.01 1
particle flame ~ ~-0.75 ~ 1.5 0 1.5 0.01 5

execute if score @s heaterOverheatT matches 59 run playsound block.note_block.pling block @a ~ ~ ~ 0.5 1.5
execute if score @s heaterOverheatT matches 39 run playsound block.note_block.pling block @a ~ ~ ~ 0.5 1.5
execute if score @s heaterOverheatT matches ..19 run playsound block.note_block.pling block @a ~ ~ ~ 0.5 2
execute if score @s heaterOverheatT matches 19.. run playsound block.campfire.crackle block @a ~ ~ ~ 0.5 2


##############################################

## jimmyjawnz