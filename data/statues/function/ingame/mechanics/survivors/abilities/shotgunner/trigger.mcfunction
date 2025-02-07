give @s crossbow[item_name='{"translate":"statues.item.shotgunner.ability.name","italic":false}',enchantments={multishot:1,quick_charge:5},use_cooldown={seconds:1},item_model="statues:weapons/survivors/shotgun"]

schedule function statues:ingame/mechanics/survivors/abilities/shotgunner/reset 5s append

advancement revoke @s only statues:abilities/survivors/shotgunner