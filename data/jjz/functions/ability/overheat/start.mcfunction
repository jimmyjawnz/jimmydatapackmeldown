############### OVERHEAT | RUN ###############


clear @s[gamemode=!creative] blaze_rod
say OVERHEAT START
tag @s add overheat
execute at @s run summon text_display ~ ~1 ~ {Tags:["overheatText"],billboard:"vertical",Rotation:[0F,-10F],view_range:0.5f,shadow:1b,text:'{"text":" OVER-HEAT IN 3 ","color":"#FFFFFF"}',background:-87250170}
scoreboard players operation @e[tag=overheatText,sort=nearest,limit=1] heaterOverheatT = base heaterOverheatT


##############################################

## jimmyjawnz