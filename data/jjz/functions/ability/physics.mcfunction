############# PYSICHS #############

execute store result score @s entity.bounce.x run data get entity @s Motion[0] 1000
execute store result score @s entity.bounce.y run data get entity @s Motion[1] 1000
execute store result score @s entity.bounce.z run data get entity @s Motion[2] 1000
execute unless block ~-.25 ~ ~ air store result entity @s Motion[0] double 0.01 run scoreboard players operation @s entity.bounce.x /= -1 entity.bounce.const
execute unless block ~.25 ~ ~ air store result entity @s Motion[0] double 0.01 run scoreboard players operation @s entity.bounce.x /= -1 entity.bounce.const
execute unless block ~ ~ ~-.25 air store result entity @s Motion[2] double 0.01 run scoreboard players operation @s entity.bounce.z /= -1 entity.bounce.const
execute unless block ~ ~ ~.25 air store result entity @s Motion[2] double 0.01 run scoreboard players operation @s entity.bounce.z /= -1 entity.bounce.const
execute unless block ~ ~-.25 ~ air store result entity @s Motion[1] double 0.01 run scoreboard players operation @s entity.bounce.y /= -1 entity.bounce.const
execute unless block ~ ~.25 ~ air store result entity @s Motion[1] double 0.01 run scoreboard players operation @s entity.bounce.y /= -1 entity.bounce.const

execute unless block ~-.25 ~ ~ air run playsound block.iron_trapdoor.open block @a ~ ~ ~ 0.5 2
execute unless block ~.25 ~ ~ air run playsound block.iron_trapdoor.open block @a ~ ~ ~ 0.5 2
execute unless block ~ ~ ~-.25 air run playsound block.iron_trapdoor.open block @a ~ ~ ~ 0.5 2
execute unless block ~ ~ ~.25 air run playsound block.iron_trapdoor.open block @a ~ ~ ~ 0.5 2
execute unless block ~ ~-.25 ~ air run playsound block.iron_trapdoor.open block @a ~ ~ ~ 0.5 2
execute unless block ~ ~.25 ~ air run playsound block.iron_trapdoor.open block @a ~ ~ ~ 0.5 2




##############################################

## 4p5