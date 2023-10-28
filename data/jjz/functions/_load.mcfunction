#################### LOAD ####################


effect give @a minecraft:resistance infinite 255 true
effect give @a minecraft:saturation infinite 255 true

## GAMERULES ##
gamerule keepInventory true
gamerule doLimitedCrafting true
gamerule spectatorsGenerateChunks false
#gamerule sendCommandFeedback false

## SCHEDULES ##
schedule clear jjz:schedule/particles
schedule function jjz:schedule/particles 1t append

schedule clear jjz:schedule/sounds
schedule function jjz:schedule/sounds 1t append

## SCOREBOARDS ##
scoreboard objectives add rightClick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add rightClickHorn minecraft.used:minecraft.goat_horn
scoreboard objectives add rightClickObj minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add hornTime dummy
scoreboard objectives add abilityUses dummy

scoreboard objectives add playerHeaterState dummy
# if 0 -> heater is in inventory #
# if 1 -> heater is placed and is pickupable #
# if 2 -> heater is broken #
# if 3 -> heater is on cooldown #
# if 4 -> heater is placed and is not pickupable #

scoreboard objectives add playerAbilityState dummy
# if 0 -> ability is in inventory #
# if 1 -> ability is used #
# if 2 -> ability start cooldown #
# if 3 -> ability is on cooldown #
# if 4 -> ability is disabled #


scoreboard objectives add placedHeater used:glow_item_frame
scoreboard objectives add heaterTimer dummy
scoreboard objectives add heaterTimerT dummy
scoreboard players set @a heaterTimerT 0
scoreboard players set tickTime heaterTimerT 20

scoreboard objectives add abilityTimer dummy
scoreboard objectives add abilityTimerT dummy
scoreboard players set @a abilityTimerT 0
scoreboard players set tickTime abilityTimerT 20

scoreboard objectives add playerID dummy
execute unless score base playerID matches -2147483648..2147483647 run scoreboard players set base playerID -2147483647

scoreboard objectives add teamID dummy
scoreboard players set .red teamID 1
scoreboard players set .blue teamID 2
scoreboard players set .green teamID 3
scoreboard players set .yellow teamID 4



# Ability Scores #
scoreboard players set defrostMax abilityUses 3
scoreboard players set defrostManiaMax abilityUses 5
scoreboard players set overheatMax abilityUses 3
scoreboard players set steambombMax abilityUses 6


scoreboard objectives add abilityID dummy
scoreboard objectives add frozenPercent dummy
scoreboard objectives add frozenPercentT dummy
scoreboard players set @a frozenPercentT 0
scoreboard players set tickTime frozenPercentT 3
scoreboard objectives add heaterJuice dummy
scoreboard players set base heaterJuice 600
scoreboard objectives add heaterLife dummy
scoreboard players set base heaterLife 840
scoreboard objectives add heaterOverheatT dummy
scoreboard players set base heaterOverheatT 60

scoreboard objectives add steamstepActiveT dummy
scoreboard players set base steamstepActiveT 35


scoreboard objectives add totalFreezeKills dummy 
scoreboard objectives add totalTeamElims dummy

team add 0 "Team Empty"

team add 1 "Team 1"
team add 2 "Team 2"
team add 3 "Team 3"
team add 4 "Team 4"

say RELOADED 0.1.1

##############################################

## jimmyjawnz