execute in overworld if block ~ ~1 ~ air if block ~ ~2 ~ air unless block ~ ~-1 ~ #rpgorigins:non_solid run scoreboard players set #complete posY 1
execute in overworld if block ~ ~1 ~ air if block ~ ~2 ~ air unless block ~ ~-1 ~ #rpgorigins:non_solid run tp @s ~ ~1 ~
scoreboard players add #Try posY 1
execute in overworld positioned ~ ~1 ~ if score #Try posY matches ..250 run function rpgorigins:safe_tp_up
execute as @s if score #Try posY matches 250.. if score #complete posY matches ..0 run function rpgorigins:safe_tp_down