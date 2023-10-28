############## HEATER | DESTROY ###############

playsound block.metal.break block @a ~ ~ ~ 1 1

execute if entity @s[tag=overheat] run playsound block.note_block.didgeridoo block @a ~ ~ ~ 1 0

execute if score @s heaterJuice matches ..0 run particle item furnace{CustomModelData:20} ~ ~0.25 ~ 0.25 0.25 0.25 0.05 20
execute unless score @s heaterJuice matches ..0 run particle item furnace{CustomModelData:10} ~ ~0.25 ~ 0.25 0.25 0.25 0.05 20
execute if score @s heaterLife matches ..0 run playsound block.beacon.deactivate block @a ~ ~ ~ 0.3 1

execute if block ~ ~ ~ soul_lantern run setblock ~ ~ ~ air

execute at @a[tag=hasPlacedHeater] if score @s playerID = @p playerID run tag @p remove hasPlacedHeater

kill @s
kill @e[type=item_display,limit=1,sort=nearest,tag=heaterModel]



##############################################

## jimmyjawnz