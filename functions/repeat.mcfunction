time set midnight
tag @a add Death
tag @e[type=player] remove Death
tag @e[type=player,tag=!Death] remove DeathEvent
tag @a[tag=Death] add DeathEvent
scoreboard players set @a[tag=!DeathEvent] DeathEvent 0
scoreboard players add @a[tag=DeathEvent] DeathEvent 1
execute as @a[tag=DeathEvent,tag=!spect,scores={DeathEvent=1}] at @s run function death_trigger
execute as @a[tag=spect,m=!spectator] run gamerule showdeathmessages true
execute as @a[tag=spect,m=!spectator] run tag @s remove spect
execute as @a[tag=spect] if entity @e[tag=oper,scores={Life=1..}] run gamemode default @s
execute as @a[tag=spect] if entity @e[tag=oper,scores={Life=1..}] run tellraw @a {"rawtext":[{"text":"§l"},{"selector":"@s"},{"text":"§e님이 목숨 하나를 소비하여 부활했어요!"}]}
execute as @a[tag=spect] if entity @e[tag=oper,scores={Life=1..}] run gamerule showdeathmessages false
execute as @a[tag=spect] if entity @e[tag=oper,scores={Life=1..}] run kill @s
execute as @a[tag=spect] if entity @e[tag=oper,scores={Life=1..}] run scoreboard players remove @e[tag=oper] Life 1
titleraw @a actionbar {"rawtext":[{"text":"§l§a[ §f남은 목숨 §a] §f : "},{"score":{"name":"@e[tag=oper]","objective":"Life"}},{"text":"§e개"}]}