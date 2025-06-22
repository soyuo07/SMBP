tag @a add Death
tag @e[type=player] remove Death
tag @a[tag=Death] add DeathEvent
scoreboard players set @a[tag=!DeathEvent] DeathEvent 0
scoreboard players add @a[tag=DeathEvent] add DeathEvent
execute as @a[tag=DeathEvent,scores={DeathEvent=1}] at @s run function death_trigger
