give @s crossbow[custom_name='{"translate":"statues.item.shotgunner.ability.name","italic":false}',custom_model_data={strings:["shotgun"]},enchantments={multishot:1,quick_charge:5},use_cooldown={seconds:1}]

schedule function statues:ingame/mechanics/survivors/abilities/shotgunner/reset 5s append

advancement revoke @s only statues:abilities/survivors/shotgunner