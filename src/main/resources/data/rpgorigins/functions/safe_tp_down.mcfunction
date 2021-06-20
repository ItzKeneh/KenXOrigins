execute in overworld if block ~ ~1 ~ air if block ~ ~2 ~ air unless block ~ ~-1 ~ #rpgorigins:non_solid run scoreboard players set #complete posY 1
execute in overworld if block ~ ~1 ~ air if block ~ ~2 ~ air unless block ~ ~-1 ~ #rpgorigins:non_solid run tp @s ~ ~1 ~
execute in overworld positioned ~ ~-1 ~ run function rpgorigins:safe_tp_down
