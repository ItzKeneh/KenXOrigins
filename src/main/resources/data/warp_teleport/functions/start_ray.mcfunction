tag @s add chainrayw
scoreboard players set #hit chaintempw 0
scoreboard players set #distance chaintempw 0
execute positioned ~ ~5.3 ~ run function warp_teleport:ray
tag @s remove chainrayw
playsound minecraft:entity.illusioner.mirror_move master @a[distance=..5] ~ ~ ~ 1 2
