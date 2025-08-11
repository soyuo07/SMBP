execute if entity @e[tag=oper,scores={Life=0}] run gamemode spectator @s
execute if entity @e[tag=oper,scores={Life=0}] run tag @s add spect
execute if entity @e[tag=oper,scores={Life=0}] run tellraw @a {"rawtext":[{"text":"§l§f"},{"selector":"@s"},{"text":"§c님이 사망하여 관전자로 변경되었습니다."}]}
execute if entity @e[tag=oper,scores={Life=1..}] run tellraw @a {"rawtext":[{"text":"§l§f"},{"selector":"@s"},{"text":"§a님이 목숨 하나를 소비하고 부활하였습니다."}]}
execute if entity @e[tag=oper,scores={Life=1..}] run tellraw @a {"rawtext":[{"text":"§l§e[ 재정비 ] 효과 발동!"}]}
execute if entity @e[tag=oper,scores={Life=1..}] run effect @a resistance 200 4 true
execute if entity @e[tag=oper,scores={Life=1..}] run effect @a regeneration 200 4 true
execute if entity @e[tag=oper,scores={Life=1..}] run effect @a saturation 200 0 true
execute if entity @e[tag=oper,scores={Life=1..}] run effect @a fire_resistance 200 0 true
execute if entity @e[tag=oper,scores={Life=1..}] run effect @a water_breathing 200 2 true
execute if entity @e[tag=oper,scores={Life=1..}] run scoreboard players remove @e[tag=oper] Life 1