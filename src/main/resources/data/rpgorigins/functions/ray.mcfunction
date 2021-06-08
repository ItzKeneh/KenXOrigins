execute if score #hit raycasttemp matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[tag=!trollPlayer,dx=0,sort=nearest] run function rpgorigins:check_hit_entity
scoreboard players add #distance raycasttemp 1
execute if score #hit raycasttemp matches 0 if score #distance raycasttemp matches ..40 positioned ^ ^ ^0.1 run function rpgorigins:ray
