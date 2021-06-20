execute unless block ~ ~ ~ #warp_teleport:non_solid run function warp_teleport:hit_block
scoreboard players add #distance chaintempw 1
execute if score #hit chaintempw matches 0 if score #distance chaintempw matches ..800 positioned ^ ^ ^0.1 run function warp_teleport:ray
particle minecraft:dust 0.369 0.016 0.588 .7 ~ ~ ~ 0.1 0.1 0.1 1 1 normal
particle minecraft:dust 0.459 0.149 0.49 .7 ~ ~ ~ 0.1 0.1 0.1 1 1 normal
particle minecraft:dust 0.612 0.447 0.635 .7 ~ ~ ~ 0.1 0.1 0.1 1 1 normal
particle minecraft:dust 0.278 0.235 0.557 .7 ~ ~ ~ 0.1 0.1 0.1 1 1 normal
particle minecraft:dust 0.722 0.216 0.702 .7 ~ ~ ~ 0.1 0.1 0.1 1 1 normal
particle minecraft:dust 0.325 0.306 0.333 .7 ~ ~ ~ 0.1 0.1 0.1 1 1 normal
