#Flare Totem Ticks
execute as @e[tag=flareTotem,type=armor_stand] at @s run tp @s ~ ~ ~ ~6 ~
execute as @e[tag=flareTotem,type=armor_stand] at @s run particle flame ^ ^ ^1.5 0 0 0 0 1 force
execute as @e[tag=flareTotem,type=armor_stand] at @s run particle flame ^ ^ ^-1.5 0 0 0 0 1 force
execute as @e[tag=flareTotem,type=armor_stand] at @s run particle dust 0.976 0.435 0.145 2 ^ ^ ^3.5 0 0 0 0 1 force
execute as @e[tag=flareTotem,type=armor_stand] at @s run particle dust 0.976 0.435 0.145 2 ^ ^ ^-3.5 0 0 0 0 1 force
execute as @e[tag=flareTotem,type=armor_stand] at @s run tag @e[tag=!totemSelf,type=!item,type=!trident,type=!arrow,type=!spectral_arrow,type=!armor_stand,type=!area_effect_cloud,distance=..3.4] add inFlareTotem
execute as @e[tag=flareTotem,type=armor_stand] at @s run tag @e[tag=inFlareTotem,type=!item,type=!trident,type=!arrow,type=!spectral_arrow,type=!armor_stand,type=!area_effect_cloud,distance=3.5..] remove inFlareTotem

#Heal Totem Ticks
execute as @e[tag=healTotem,type=armor_stand] at @s run tp @s ~ ~ ~ ~6 ~
execute as @e[tag=healTotem,type=armor_stand] at @s run particle dust 0.91 0.231 0.435 2 ^ ^ ^1.5 0 0 0 0 1 force
execute as @e[tag=healTotem,type=armor_stand] at @s run particle dust 0.91 0.231 0.435 2 ^ ^ ^-1.5 0 0 0 0 1 force
execute as @e[tag=healTotem,type=armor_stand] at @s run particle heart ^ ^ ^3.5 0 0 0 0 1 force
execute as @e[tag=healTotem,type=armor_stand] at @s run particle heart ^ ^ ^-3.5 0 0 0 0 1 force


#Harpy Ticks
execute as @e[tag=harpyShield,type=armor_stand] at @s run tp @s ~ ~ ~ ~2 ~
execute as @e[tag=harpyShield2,type=armor_stand] at @s run tp @s ~ ~ ~ ~8 ~
execute at @a as @e[tag=harpyShield,type=armor_stand] if score @s harpyID = @p[distance=..4] harpyID run tp @s ~ ~2 ~
execute at @a as @e[tag=harpyShield2,type=armor_stand] if score @s harpyID = @p[distance=..4] harpyID run tp @s ~ ~2 ~
execute as @e[tag=harpyShield,type=minecraft:armor_stand] at @s run particle dust .6 .6 .8 1 ^ ^-1.5 ^.8 0 0 0 0 1 force
execute as @e[tag=harpyShield,type=minecraft:armor_stand] at @s run particle dust .6 .6 .8 1 ^ ^-1.5 ^-.8 0 0 0 0 1 force
execute as @e[tag=harpyShield2,type=minecraft:armor_stand] at @s run particle dust 0.455 0.651 0.804 1 ^ ^-1 ^.5 0 0 0 0 1 force
execute as @e[tag=harpyShield2,type=minecraft:armor_stand] at @s run particle dust 0.455 0.651 0.804 1 ^ ^-1 ^-.5 0 0 0 0 1 force

#Goblin Trap Ticks
execute as @e[tag=goblinTrap,type=armor_stand] at @s run tp @s ~ ~ ~ ~6 ~
execute as @e[tag=goblinTrap,type=armor_stand] at @s run effect give @e[team=!goblins,type=!item,type=!arrow,type=!spectral_arrow,type=!armor_stand,type=!area_effect_cloud,distance=..2] slowness 1 4 true
execute as @e[tag=goblinTrap,type=armor_stand] at @s run effect give @e[team=!goblins,type=!item,type=!arrow,type=!spectral_arrow,type=!armor_stand,type=!area_effect_cloud,distance=..2] blindness 2 0 true
execute as @e[tag=goblinTrap,type=armor_stand] at @s run particle dust 0 0 0 2 ~ ~ ~ 0 0 0 0 1 force @a[team=goblins]
execute as @e[tag=goblinTrap,type=armor_stand] at @s run particle dust 0.2 0 0 2 ~ ~ ~ 0 0 0 0 1 force @a[team=goblins]
execute as @e[tag=goblinTrap,type=armor_stand] at @s run particle dust 0 0 0 1.2 ^ ^ ^-2.08 0 0 0 0 1 force @a[team=goblins]
execute as @e[tag=goblinTrap,type=armor_stand] at @s run particle dust 0.2 0 0 1.2 ^ ^ ^-2 0 0 0 0 1 force @a[team=goblins]
execute as @e[tag=goblinTrap,type=armor_stand] at @s run particle dust 0 0 0 1.2 ^ ^ ^2.08 0 0 0 0 1 force @a[team=goblins]
execute as @e[tag=goblinTrap,type=armor_stand] at @s run particle dust 0.2 0 0 1.2 ^ ^ ^2 0 0 0 0 1 force @a[team=goblins]

#Warporean Warp Ticks
execute as @e[tag=warpStand,type=armor_stand] at @s run tp @s ~ ~ ~ ~6 ~
execute as @e[tag=warpStand,type=armor_stand] at @s run particle dust 0.431 0.122 0.702 2 ~ ~ ~ 0 0 0 0 1 force
execute as @e[tag=warpStand,type=armor_stand] at @s run particle dust 0.443 0.035 0.506 2 ~ ~ ~ 0 0 0 0 1 force
execute as @e[tag=warpStand,type=armor_stand] at @s run particle dust 0.659 0.263 0.647 1.2 ^ ^ ^-2.08 0 0 0 0 1 force
execute as @e[tag=warpStand,type=armor_stand] at @s run particle dust 0.302 0 0.361 1.2 ^ ^ ^-2 0 0 0 0 1 force
execute as @e[tag=warpStand,type=armor_stand] at @s run particle dust 0.659 0.263 0.647 1.2 ^ ^ ^2.08 0 0 0 0 1 force
execute as @e[tag=warpStand,type=armor_stand] at @s run particle dust 0.302 0 0.361 1.2 ^ ^ ^2 0 0 0 0 1 force

#Flameling Ticks
execute as @e[tag=flameling_particle,type=armor_stand] at @e[tag=flameling,type=armor_stand] if score @s flamelingID = @e[tag=flameling,type=armor_stand,limit=1] flamelingID run tp @s ~ ~ ~
execute as @e[tag=flameling,type=armor_stand] at @e[tag=flameling,type=wolf] if score @s flamelingID = @e[tag=flameling,type=wolf,limit=1,distance=..4] flamelingID run tp @s ~ ~ ~ ~ ~
execute as @e[tag=flameling_particle,type=armor_stand] at @s run tp @s ~ ~ ~ ~8 ~
execute as @e[tag=flameling_particle,type=minecraft:armor_stand] at @s run particle flame ^ ^.5 ^1 0 0 0 0 1 force
execute as @e[tag=flameling,type=minecraft:armor_stand] at @s run particle dust 0.773 0.275 0.063 1 ~ ~ ~ 0.3 0.6 0.3 0 1 force
execute as @a at @e[tag=flameling,type=armor_stand] if score @s[distance=..5] flamelingID = @e[tag=flameling,type=armor_stand,limit=1] flamelingID run effect give @s fire_resistance 8 0 true
execute as @a at @e[tag=flameling,type=armor_stand] if score @s[distance=..5] flamelingID = @e[tag=flameling,type=armor_stand,limit=1] flamelingID run effect give @s absorption 8 1 true
execute as @a at @e[tag=flameling,type=armor_stand] if score @s[distance=..5] flamelingID = @e[tag=flameling,type=armor_stand,limit=1] flamelingID run effect give @s strength 8 1 true

#Flameling TP
execute at @a as @e[tag=flameling,type=wolf] if score @s[distance=25..] flamelingID = @p flamelingID run tp @s ~.3 ~ ~

#Solar Guardian TP 
execute at @a as @e[tag=solar_guardian,type=sheep] if score @s[distance=25..] solarID = @p solarID run tp @s ~.3 ~ ~

#Store Pos Y
execute store result score @a[team=end] posY run data get entity @p[team=end] Pos[1]

#Team End
execute at @a[team=end] run team join end @e[type=enderman,distance=..12]
execute at @a[team=end] run team leave @e[type=enderman,distance=12.1..]

#Team Aqua
execute at @a[team=aqua] run team join aqua @e[type=guardian,distance=..12]
execute at @a[team=aqua] run team leave @e[type=guardian,distance=12.1..]

#Shrouding Darkness
execute as @e[tag=shroudingAnchor,type=armor_stand] at @s run particle dust 0.125 0.09 0.2 1 ~ ~1 ~ 2 2 2 0 6
execute as @e[tag=shroudingAnchor,type=armor_stand] at @s run effect give @e[tag=!darknessSelf,distance=..4] poison 1 1
execute as @e[tag=shroudingAnchor,type=armor_stand] at @s run effect give @e[tag=!darknessSelf,distance=..4] blindness 2 0
execute as @e[tag=shroudingAnchor,type=armor_stand] at @s run effect give @e[tag=!darknessSelf,distance=..4] slowness 2 2

#No Elytra For End Team 
execute as @a[team=end,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] run replaceitem entity @s armor.chest air

#Ender Buddy TP 
execute at @a as @e[tag=endBuddy,type=enderman] if score @s[distance=16..] enderBuddy = @p enderBuddy run tp @s ~.3 ~ ~