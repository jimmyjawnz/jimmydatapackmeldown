############## HEATER | SUMMON ###############

execute if block ~ ~ ~ air run setblock ~ ~ ~ soul_lantern

execute if entity @s[nbt={Facing:0b}] run summon interaction ~ ~-0.04 ~ {Tags:["heater"],width:0.8f,height:0.8f}
execute unless entity @s[nbt={Facing:0b}] run summon interaction ~ ~ ~ {Tags:["heater"],width:0.8f,height:0.8f}

execute if entity @s[nbt={Facing:0b}] run summon item_display ~ ~0.96 ~ {brightness:{sky:15,block:10},Tags:["heaterModel"],view_range:0.5f,item_display:"head",item:{id:"minecraft:furnace",Count:1b,tag:{CustomModelData:10}}}
execute unless entity @s[nbt={Facing:0b}] run summon item_display ~ ~1 ~ {brightness:{sky:15,block:10},Tags:["heaterModel"],view_range:0.5f,item_display:"head",item:{id:"minecraft:furnace",Count:1b,tag:{CustomModelData:10}}}


execute as @e[type=interaction,tag=heater,sort=nearest,limit=1] at @s run scoreboard players operation @s playerID = @p[scores={placedHeater=1..}] playerID
execute as @e[type=interaction,tag=heater,sort=nearest,limit=1] at @s run scoreboard players operation @s teamID = @p[scores={placedHeater=1..}] teamID

execute as @e[type=interaction,tag=heater,sort=nearest,limit=1] at @a[tag=inGame] if score @p[team=1] playerID = @s playerID at @s run data modify entity @e[type=item_display,tag=heaterModel,sort=nearest,limit=1] item set value {id:"minecraft:furnace",Count:1b,tag:{display:{Name:'{"text":"Red Heater","italic":false}'},CustomModelData:1,heater:1}}
execute as @e[type=interaction,tag=heater,sort=nearest,limit=1] at @a[tag=inGame] if score @p[team=1] playerID = @s playerID run tag @s add team1
execute as @e[type=interaction,tag=heater,sort=nearest,limit=1] at @a[tag=inGame] if score @p[team=2] playerID = @s playerID at @s run data modify entity @e[type=item_display,tag=heaterModel,sort=nearest,limit=1] item set value {id:"minecraft:furnace",Count:1b,tag:{display:{Name:'{"text":"Blue Heater","italic":false}'},CustomModelData:2,heater:1}}
execute as @e[type=interaction,tag=heater,sort=nearest,limit=1] at @a[tag=inGame] if score @p[team=2] playerID = @s playerID run tag @s add team2
execute as @e[type=interaction,tag=heater,sort=nearest,limit=1] at @a[tag=inGame] if score @p[team=3] playerID = @s playerID at @s run data modify entity @e[type=item_display,tag=heaterModel,sort=nearest,limit=1] item set value {id:"minecraft:furnace",Count:1b,tag:{display:{Name:'{"text":"Green Heater","italic":false}'},CustomModelData:3,heater:1}}
execute as @e[type=interaction,tag=heater,sort=nearest,limit=1] at @a[tag=inGame] if score @p[team=3] playerID = @s playerID run tag @s add team3
execute as @e[type=interaction,tag=heater,sort=nearest,limit=1] at @a[tag=inGame] if score @p[team=4] playerID = @s playerID at @s run data modify entity @e[type=item_display,tag=heaterModel,sort=nearest,limit=1] item set value {id:"minecraft:furnace",Count:1b,tag:{display:{Name:'{"text":"Yellow Heater","italic":false}'},CustomModelData:4,heater:1}}
execute as @e[type=interaction,tag=heater,sort=nearest,limit=1] at @a[tag=inGame] if score @p[team=4] playerID = @s playerID run tag @s add team4


scoreboard players operation @e[type=interaction,tag=heater,sort=nearest,limit=1] heaterJuice = base heaterJuice
scoreboard players operation @e[type=interaction,tag=heater,sort=nearest,limit=1] heaterLife = base heaterLife

kill @s[type=!player]


##############################################

## jimmyjawnz