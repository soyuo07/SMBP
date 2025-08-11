time set midnight
tag @a add Death
tag @e[type=player] remove Death
tag @a[tag=Death] add DeathEvent
scoreboard players set @a[tag=!DeathEvent] DeathEvent 0
scoreboard players add @a[tag=DeathEvent] add DeathEvent 1
execute as @a[tag=DeathEvent,scores={DeathEvent=1}] at @s run function death_trigger
titleraw @a actionbar {"rawtext":[{"text":"§l§a[ §f남은 목숨 §a] §f : "},{"score":{"name":"@e[tag=oper]","objective":"Life"}},{"text":"§e개"}]}