
execute unless entity @a[scores= {gameroom=1}] if entity @p rotated ~ -90 positioned 8 -60 8 run effect give @p levitation infinite
execute if entity @p positioned 8 -40 8 run function bluefox:gameroom/gameroom

execute if entity @a[scores={gameroom=1}] positioned 8 -60 8 run function bluefox:gameroom/gameroomreset