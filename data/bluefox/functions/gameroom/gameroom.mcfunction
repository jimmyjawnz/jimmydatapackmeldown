execute at @s run setblock 8 -41 8 barrier destroy 
execute at @a run effect clear @a levitation
execute if entity @a positioned 8 -40 8 run scoreboard players add @s gameroom 1