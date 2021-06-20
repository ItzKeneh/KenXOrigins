execute as @s run tag @s add shineSelf
execute as @s run tag @e[tag=!shineSelf,distance=..8] add shineTarget
effect give @e[tag=shineTarget] minecraft:slowness 30 2
effect give @e[tag=shineTarget] minecraft:blindness 30 2
execute as @e[tag=shineTarget] run tag @s remove shineTarget
effect give @s minecraft:glowing 30 1
effect give @s minecraft:speed 30 1
execute at @s run particle minecraft:firework ~ ~1 ~ 0.4 0.5 0.4 0 100
execute as @s run tag @s remove shineSelf