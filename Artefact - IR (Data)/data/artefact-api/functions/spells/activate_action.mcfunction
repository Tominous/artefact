#runs if spell state is at 3
#@s - primary player
#called by artefact-api:click_detection/[left_click/right_click]

#check item
execute if entity @s[nbt={SelectedItem:{tag:{artefact:{spells:["discharge"]}}}}] if score click_1 spells matches 2 if score click_2 spells matches 1 if score click_3 spells matches 2 run function artefact-api:spells/action/discharge

execute if entity @s[nbt={SelectedItem:{tag:{artefact:{spells:["sprint"]}}}}] if entity @s[nbt={ActiveEffects:[{Id:1b,Amplifier:3b}]}] if score click_1 spells matches 2 if score click_2 spells matches 2 if score click_3 spells matches 2 run tellraw @s {"translate":"text.artefact.spells.wait","color":"red"}
execute if entity @s[nbt={SelectedItem:{tag:{artefact:{spells:["sprint"]}}}}] unless entity @s[nbt={ActiveEffects:[{Id:1b,Amplifier:3b}]}] if score click_1 spells matches 2 if score click_2 spells matches 2 if score click_3 spells matches 2 run function artefact-api:spells/action/sprint

#reset scores
function artefact-api:spells/reset_activation