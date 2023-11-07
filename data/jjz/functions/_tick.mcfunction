#################### TICK ####################



######### GAMEMODE MANAGERS #########










# #

######### GAMEPLAY MANAGERS #########

## Item Manager ##
# Makes specifided Items without the {droppable:1b} tag be undroppable
execute as @e[type=item,nbt=!{Item:{tag:{droppable:1b}}}] at @s on origin run function jjz:player/nodrop
execute as @e[type=item,nbt=!{Item:{tag:{droppable:1b}}}] run data modify entity @s PickupDelay set value 0s

# Keeps an arrow in the player's inventory so the bow functions properly
execute as @a[tag=inGame,nbt=!{Inventory:[{id:"minecraft:arrow"}]}] run item replace entity @s inventory.26 with arrow
# #

## Player Manager ##
# Give a player an ID if they have no ID
execute as @a[tag=!hasID] run function jjz:player/id
# Give a player their team ID
execute as @a[team=1] run scoreboard players operation @s teamID = .red teamID
execute as @a[team=2] run scoreboard players operation @s teamID = .blue teamID
execute as @a[team=3] run scoreboard players operation @s teamID = .green teamID
execute as @a[team=4] run scoreboard players operation @s teamID = .yellow teamID
# #

## Cooldown Manager ##
# Heater Cooldown
execute as @a[tag=!frozen,scores={playerHeaterState=3}] if entity @s[tag=inGame] run function jjz:player/timer/heater/time

# Ability Cooldown ## TODO ##
execute as @a[tag=!frozen,scores={playerAbilityState=3}] if entity @s[tag=inGame] run function jjz:player/timer/ability/time

#execute as @a[tag=!frozen,nbt=!{Inventory:[{tag:{abilityItem:1}}]}] if entity @s[nbt=!{Inventory:[{id:"minecraft:light_gray_dye"}]}] run function jjz:ability/check
# #

## Ability Manager ##
# Gets ability ID
execute as @a[tag=inGame,nbt={SelectedItem:{tag:{abilityItem:1}}}] store result score @s abilityID run data get entity @s SelectedItem.tag.CustomModelData

execute as @a[tag=inGame,nbt={SelectedItem:{tag:{abilityItem:1}}}] if score @s rightClick matches 1.. if score @s abilityID matches 1.. at @s run function jjz:ability/_execute

# #

## Steamstep Manager ##
# Runs timer for Steamstep
execute as @a[tag=steamstep] if score @s steamstepActiveT matches 1.. at @s run function jjz:ability/steamstep/tick
# #

#> Bounce Manager type=item,nbt={Item:{tag:{droppable:1b}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:snowball",tag:{CustomModelData:1,abilityItem:1}}}] at @s run function jjz:ability/physics


## SteamGrenade Manager ##
# Tests if grenade is on the ground
execute as @e[type=snowball,nbt={Item:{tag:{CustomModelData:1,abilityItem:1}}},tag=!smokeGrenade] at @s run function jjz:ability/steambomb/found
execute as @e[type=snowball,tag=smokeGrenade] at @s run function jjz:ability/steambomb/inair
execute as @e[type=marker,tag=smokeGrenade] at @s unless predicate jjz:is_riding_snowball at @s run function jjz:ability/steambomb/landed
execute as @e[type=snowball,tag=smokeGrenade] run function jjz:vis_fix
scoreboard players operation .global visfix *= .-1 visfix

execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:snowball",tag:{CustomModelData:1,abilityItem:1}}}] at @s run function jjz:ability/steambomb/dropped


execute as @e[type=marker,tag=physical_smoke_grenade] at @s run function jjz:ability/steambomb/tick
# #

## Player/Ability Inventory Manager ##
# Tests if a player has no ability item
execute as @a[tag=!frozen,nbt=!{Inventory:[{tag:{abilityItem:1}}]}] at @s unless entity @e[type=item,nbt=!{Item:{tag:{droppable:1b}}},limit=1,sort=nearest,distance=..1] if entity @s[tag=inGame] if score @s playerAbilityState matches 0 run scoreboard players set @s playerAbilityState 1

# Tests if a player has used an ability
execute as @a[scores={playerAbilityState=1}] run scoreboard players set @s playerAbilityState 2

# Starts cooldown if heater was in the broken state
execute as @a[scores={playerAbilityState=2}] run function jjz:ability/check

# Reset state if the player has the ability unless disabled
execute as @a[tag=!frozen,nbt={Inventory:[{tag:{abilityItem:1}}]}] unless score @s playerAbilityState matches 4 run scoreboard players set @s playerAbilityState 0
# #

## Interaction Manager ##
# Heater Interact
execute as @e[type=minecraft:interaction,tag=heater] at @s[tag=!overheat,tag=!siphon] on target if entity @s[nbt=!{SelectedItem:{tag:{abilityItem:1}}},gamemode=!creative] run function jjz:heater/pickup/execute
execute as @e[type=minecraft:interaction,tag=heater] at @s[tag=!overheat] on target if entity @s[nbt={SelectedItem:{id:"minecraft:blaze_rod"}},scores={playerAbilityState=0..2}] run function jjz:ability/overheat/execute
execute as @e[type=minecraft:interaction,tag=heater] at @s[tag=!siphon] on target if entity @s[nbt={SelectedItem:{id:"minecraft:gold_ingot"}},scores={playerAbilityState=0..2}] run function jjz:ability/siphon/execute
# Heater Attack
execute as @e[type=minecraft:interaction,tag=heater] at @s on attacker unless score @s teamID = @e[type=minecraft:interaction,tag=heater,limit=1,sort=nearest] teamID as @e[type=minecraft:interaction,tag=heater,sort=nearest,limit=1] run function jjz:heater/destroy
# Reset Interaction/Attack Data
execute as @e[type=minecraft:interaction] run data remove entity @s interaction
execute as @e[type=minecraft:interaction] run data remove entity @s attack

execute as @e[type=minecraft:interaction,tag=heater] at @s run function jjz:heater/shotbyarrow

# Right click detection for ability functionality
execute as @a if score @s rightClick matches 1.. run function jjz:rightclick/base
# #

## Arrow Manager ##
# Entity Data
execute as @e[type=arrow,tag=!T] run data merge entity @s {Tags:["T"],crit:0b,SoundEvent:"block.chain.place",Potion:"minecraft:luck"}

# Kill if in ground
execute as @e[type=arrow,nbt={inGround:true}] run kill @s
# #

## Heater Manager ##
# Heater Destroy
execute as @e[tag=heater] at @s unless entity @e[tag=heaterModel,sort=nearest,limit=1,distance=..1.5] run function jjz:heater/destroy

# Heater Summon
execute as @e[type=glow_item_frame,nbt={Silent:1b}] at @s run function jjz:heater/pre_summon
tag @a[tag=inGame,scores={placedHeater=1..}] add hasPlacedHeater

# Invalid Heater Placement Detection
execute as @e[tag=heater] at @s unless block ~ ~ ~ soul_lantern as @a[tag=inGame,scores={placedHeater=1..}] if score @s playerID = @e[sort=nearest,limit=1] playerID run function jjz:heater/invalid
execute as @e[tag=heater] at @s if block ~ ~-1 ~ air as @a[tag=inGame,scores={placedHeater=1..}] if score @s playerID = @e[sort=nearest,limit=1] playerID run function jjz:heater/invalid
#execute as @e[tag=heater] at @s if block ~ ~-1 ~ soul_lantern as @a[tag=inGame,scores={placedHeater=1..}] if score @s playerID = @e[sort=nearest,limit=1] playerID run function jjz:heater/invalid
execute as @e[tag=heater] at @s unless block ~ ~ ~ soul_lantern run function jjz:heater/destroy

# Heater Tick
execute as @e[tag=heater] at @s[tag=!overheat] run function jjz:heater/_tick

# Starts thawing players around it
execute as @e[tag=heater] at @s[tag=!ranout] positioned ~-3 ~-3 ~-3 if entity @a[dx=5,dy=5,dz=5,tag=frozen] at @s run function jjz:heater/player

# Resets if not heating players
execute as @e[tag=heater] at @s positioned ~-3 ~-3 ~-3 unless entity @a[dx=5,dy=5,dz=5,tag=frozen] at @s run tag @s remove heating

# If not frozen dont thaw
execute as @a[tag=!frozen] run tag @s remove thaw
# #

## Overheat Manager ##
# Run Overheat
execute as @e[tag=completeOverheat] at @s run function jjz:ability/overheat/run
execute as @e[tag=overheatText] at @s run function jjz:ability/overheat/text
# #

## Player/Heater Inventory Manager ##
# Tests if a player has placed their heater
execute as @a[tag=!frozen,nbt=!{Inventory:[{id:"minecraft:glow_item_frame"}]}] at @s[tag=!steamstep] unless entity @e[type=item,nbt=!{Item:{tag:{droppable:1b}}},limit=1,sort=nearest,distance=..1] if entity @s[tag=inGame] if score @s playerHeaterState matches 0 run item replace entity @s hotbar.1 with air
execute as @a[tag=!frozen,nbt=!{Inventory:[{id:"minecraft:glow_item_frame"}]}] at @s[tag=!steamstep] unless entity @e[type=item,nbt=!{Item:{tag:{droppable:1b}}},limit=1,sort=nearest,distance=..1] if entity @s[tag=inGame] if score @s playerHeaterState matches 0 run scoreboard players set @s playerHeaterState 1

# Tests if a player's placed heater has been broken
execute as @a[scores={playerHeaterState=1}] at @e[tag=heater] unless score @s playerID = @e[tag=heater,sort=nearest,limit=1] playerID run scoreboard players set @s playerHeaterState 2
execute as @a[scores={playerHeaterState=1}] unless entity @e[tag=heater] run scoreboard players set @s playerHeaterState 2

# Starts cooldown if heater was in the broken state
execute as @a[scores={playerHeaterState=2}] at @e[tag=heater] if score @s playerID = @e[tag=heater,sort=nearest,limit=1] playerID run scoreboard players set @s playerHeaterState 1
execute as @a[scores={playerHeaterState=2}] run function jjz:player/timer/heater/broken

# Reset state if the player has a heater
execute as @a[nbt={Inventory:[{id:"minecraft:glow_item_frame"}]},tag=!steamstep] run scoreboard players set @s playerHeaterState 0
# #


## Score Resets ##
# Resets
effect clear @e luck

scoreboard players reset @a rightClick
scoreboard players reset @a placedHeater
# #

##############################################

## jimmyjawnz