scoreboard players set #FakeMax posY 250
scoreboard players set #complete posY 0
scoreboard players operation #Try posY = @s posY
execute as @s run function rpgorigins:safe_tp_up