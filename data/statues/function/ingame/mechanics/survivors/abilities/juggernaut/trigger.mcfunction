advancement revoke @s only statues:abilities/survivors/juggernaut

item replace entity @s weapon.mainhand with shield[unbreakable={show_in_tooltip:0b},item_name='{"translate":"statues.item.juggernaut.ability.name"}']

schedule function statues:ingame/mechanics/survivors/abilities/juggernaut/reset 10s append