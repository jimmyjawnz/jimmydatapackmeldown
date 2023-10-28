#################### NO DROP ##################

#  Handles the commands to prevent the player from dropping an item

data modify entity @e[type=item,sort=nearest,limit=1] Owner set from entity @s UUID
tp @e[type=item,sort=nearest,limit=1] @s


##############################################

## jimmyjawnz