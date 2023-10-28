################ GIVE | ITEMS ###############


# ICE HEAD
item replace entity @s armor.head with air

# BOW
item replace entity @s hotbar.0 with bow{frozenBow:1,Unbreakable:1b,HideFlags:69,CustomModelData:10,display:{Name:'{"text":"Frozen Bow","color":"#14F7FF","bold":true,"italic":false}',Lore:['{"text":"Fire arrows to freeze players.","color":"gray","italic":false}']}}

# HEATER
execute if score @s playerHeaterState matches 0 run function jjz:player/give/heater

# ABILITYs
execute if score @s playerAbilityState matches 0 run function jjz:player/give/ability

# BOOTIES
item replace entity @s armor.feet with iron_boots{display:{Name:'{"text":"Booties","italic":false}'},HideFlags:69,Unbreakable:1b,booties:1,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:-1,Operation:0,UUID:[I;836938830,234965840,-1971598446,-1296868229],Slot:"feet"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:10,Operation:0,UUID:[I;-607715615,1966296491,-1320945581,1833047906],Slot:"feet"}]} 1

# OTHERS
clear @s packed_ice



##############################################

## jimmyjawnz