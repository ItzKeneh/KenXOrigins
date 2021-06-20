execute at @s run tag @e[distance=..4] add aquaHeal
execute as @e[tag=aquaHeal,distance=..5.5] run effect give @s regeneration 15 0 false
execute as @e[tag=aquaHeal] run tag @s remove aquaHeal