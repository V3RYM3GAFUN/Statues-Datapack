execute as @a[scores={Statues.Monsters=0},advancements={statues:abilities/monsters/000=false}] run attribute @s movement_speed base set 0

schedule function statues:ingame/mechanics/monsters/000_unfreeze 10t replace