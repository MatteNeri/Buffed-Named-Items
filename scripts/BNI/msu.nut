enum BNI_WEAPON_ENUM {
	MAX_BUFFED_STATS_NUMBER = "MAX_BUFFED_STATS_NUMBER",
	MIN_CONDITION = "MIN_CONDITION",
	MAX_CONDITION = "MAX_CONDITION",
	MIN_AMMO = "MIN_AMMO",
	MAX_AMMO = "MAX_AMMO",
	MIN_DAMAGE = "MIN_AMMO",
	MIN_DAMAGE = "MIN_AMMO",
	MIN_ARMOR = "MIN_ARMOR",
	MAX_ARMOR = "MAX_ARMOR",
	MIN_HC = "MIN_HC",
	MAX_HC = "MAX_HC",
	MIN_AP = "MIN_AP",
	MAX_AP = "MAX_AP",
	MIN_STAMINA = "MIN_STAMINA",
	MAX_STAMINA = "MAX_STAMINA",
	MIN_SHIELD_DMG = "MIN_SHIELD_DMG",
	MAX_SHIELD_DMG = "MAX_SHIELD_DMG",
	MIN_ACC = "MIN_ACC",
	MAX_ACC = "MAX_ACC",
	MIN_FAT_ON_SKILL = "MIN_FAT_ON_SKILL",
	MAX_FAT_ON_SKILL = "MAX_FAT_ON_SKILL",
}

enum BNI_ARMOR_ENUM {
	MIN_CONDITION = "MIN_ARMOR_CONDITION",
	MAX_CONDITION = "MAX_ARMOR_CONDITION",
	MIN_STAMINA = "MIN_ARMOR_STAMINA",
	MAX_STAMINA = "MAX_ARMOR_STAMINA",
}

enum BNI_HELMET_ENUM {
	MIN_CONDITION = "MIN_HELMET_CONDITION",
	MAX_CONDITION = "MAX_HELMET_CONDITION",
	MIN_STAMINA = "MIN_HELMET_STAMINA",
	MAX_STAMINA = "MAX_HELMET_STAMINA",
}

enum BNI_SHIELD_ENUM {
	MAX_BUFFED_STATS_NUMBER = "MAX_SHIELD_BUFFED_STATS_NUMBER",
	MIN_CONDITION = "MIN_SHIELD_CONDITION",
	MAX_CONDITION = "MAX_SHIELD_CONDITION",
	MIN_MD = "MIN_SHIELD_MD",
	MAX_MD = "MAX_SHIELD_MD",
	MIN_STAMINA = "MIN_SHIELD_STAMINA",
	MAX_STAMINA = "MAX_SHIELD_STAMINA",
	MIN_RD = "MIN_SHIELD_RD",
	MAX_RD = "MAX_SHIELD_RD",
	MIN_FAT_ON_SKILL = "MIN_HELMET_FAT_ON_SKILL",
	MAX_FAT_ON_SKILL = "MAX_HELMET_FAT_ON_SKILL",
}


local weaponsPage = ::ModBuffedNamedItems.Mod.ModSettings.addPage("Weapon Settings");

weaponsPage.addRangeSetting(BNI_WEAPON_ENUM.MAX_BUFFED_STATS_NUMBER, 3, 2, 8, 1, "Max Buffed Stats", "The number of buffed stats for any named weapon (Vanilla: 2).\n\nHigher values mean all stats buffed");

weaponsPage.addDivider("weaponSettingDivider");

weaponsPage.addRangeSetting(BNI_WEAPON_ENUM.MAX_CONDITION, 100, 90, 140, 5, "Min Condition %", "Minimum condition multiplier (Vanilla: 90%).");
weaponsPage.addRangeSetting(BNI_WEAPON_ENUM.MIN_CONDITION, 150, 140, 190, 5, "Max Condition %", "Maximum condition multiplier (Vanilla: 140%).");

weaponsPage.addRangeSetting(BNI_WEAPON_ENUM.MIN_AMMO, 2, 1, 3, 1, "Min Additional Ammo", "Minimum additional ammo for throwing weapons (Vanilla: 1).");
weaponsPage.addRangeSetting(BNI_WEAPON_ENUM.MAX_AMMO, 4, 3, 6, 1, "Max Additional Ammo", "Maximum additional ammo for throwing weapons (Vanilla: 3).");

weaponsPage.addRangeSetting(BNI_WEAPON_ENUM.MIN_AMMO, 115, 110, 130, 1, "Min Damage %", "Minimum damage multiplier (Vanilla: 110%).");
weaponsPage.addRangeSetting(BNI_WEAPON_ENUM.MAX_AMMO, 133, 130, 150, 1, "Max Damage %", "Maximum damage multiplier (Vanilla: 130%).");

weaponsPage.addRangeSetting(BNI_WEAPON_ENUM.MIN_ARMOR, 15, 10, 30, 1, "Min Armor Damage %", "Minimum additional armor damage (Vanilla: 10%).");
weaponsPage.addRangeSetting(BNI_WEAPON_ENUM.MAX_ARMOR, 30, 30, 50, 1, "Max Armor Damage %", "Maximum additional armor damage (Vanilla: 30%).");

weaponsPage.addRangeSetting(BNI_WEAPON_ENUM.MIN_HC, 10, 10, 20, 1, "Min Chance to Hit Head %", "Minimum chance to hit the head (Vanilla: 10%).");
weaponsPage.addRangeSetting(BNI_WEAPON_ENUM.MAX_HC, 20, 20, 30, 1, "Max Chance to Hit Head %", "Maximum chance to hit the head (Vanilla: 20%).");

weaponsPage.addRangeSetting(BNI_WEAPON_ENUM.MIN_AP, 10, 8, 16, 1, "Min Armor Piercing %", "Minimum additional armor piercing (Vanilla: 8%).");
weaponsPage.addRangeSetting(BNI_WEAPON_ENUM.MAX_AP, 18, 16, 24, 1, "Max Armor Piercing %", "Maximum additional armor piercing (Vanilla: 16%).");

weaponsPage.addRangeSetting(BNI_WEAPON_ENUM.MIN_STAMINA, 50, 50, 80, 1, "Min Stamina %", "Minimum stamina multiplier (Vanilla: 50%).");
weaponsPage.addRangeSetting(BNI_WEAPON_ENUM.MAX_STAMINA, 75, 80, 24, 1, "Max Stamina %", "Maximum stamina multiplier (Vanilla: 80%).");

weaponsPage.addRangeSetting(BNI_WEAPON_ENUM.MIN_SHIELD_DMG, 150, 130, 180, 1, "Min Shield Damage %", "Minimum shield damage multiplier (Vanilla: 150%).");
weaponsPage.addRangeSetting(BNI_WEAPON_ENUM.MAX_SHIELD_DMG, 200, 180, 230, 1, "Max Shield Damage %", "Maximum shield damage multiplier (Vanilla: 200%).");

weaponsPage.addRangeSetting(BNI_WEAPON_ENUM.MIN_ACC, 10, 5, 15, 1, "Min Additional Accuracy %", "Minimum additional accuracy (Vanilla: 5%).");
weaponsPage.addRangeSetting(BNI_WEAPON_ENUM.MAX_ACC, 15, 15, 30, 1, "Max Additional Accuracy %", "Maximum additional accuracy (Vanilla: 15%).");

weaponsPage.addRangeSetting(BNI_WEAPON_ENUM.MIN_FAT_ON_SKILL, 2, 1, 3, 1, "Min Fatigue On Skill", "Minimum skill fatigue reduction (Vanilla: 1).");
weaponsPage.addRangeSetting(BNI_WEAPON_ENUM.MAX_FAT_ON_SKILL, 3, 3, 6, 1, "Max Fatigue On Skill", "Maximum skill fatigue reduction (Vanilla: 3).");

// armor setting page 
local armorPage = ::ModBuffedNamedItems.Mod.ModSettings.addPage("Armor Settings");
armorPage.addRangeSetting(BNI_ARMOR_ENUM.MIN_CONDITION, 125, 110, 125, 1, "Min Condition %", "Minimum condition multiplier (Vanilla: 110%).");
armorPage.addRangeSetting(BNI_ARMOR_ENUM.MAX_CONDITION, 150, 125, 150, 1, "Max Condition %", "Maximum condition multiplier (Vanilla: 125%).");

armorPage.addRangeSetting(BNI_ARMOR_ENUM.MIN_STAMINA, 4, 3, 9, 1, "Min Stamina", "Minimum stamina reduction (Vanilla: 3).");
armorPage.addRangeSetting(BNI_ARMOR_ENUM.MAX_STAMINA, 12, 9, 15, 1, "Max Stamina", "Maximum stamina reduction (Vanilla: 9).");

// helmet setting page 
local helmetPage = ::ModBuffedNamedItems.Mod.ModSettings.addPage("Helmet Settings");
helmetPage.addRangeSetting(BNI_HELMET_ENUM.MIN_CONDITION, 125, 110, 125, 1, "Min Condition %", "Minimum condition multiplier (Vanilla: 110%).");
helmetPage.addRangeSetting(BNI_HELMET_ENUM.MAX_CONDITION, 150, 125, 150, 1, "Max Condition %", "Maximum condition multiplier (Vanilla: 125%).");

helmetPage.addRangeSetting(BNI_HELMET_ENUM.MIN_STAMINA, 2, 1, 4, 1, "Min Stamina", "Minimum stamina reduction (Vanilla: 1).");
helmetPage.addRangeSetting(BNI_HELMET_ENUM.MAX_STAMINA, 6, 4, 7, 1, "Max Stamina", "Maximum stamina reduction (Vanilla: 4).");

local shieldPage = ::ModBuffedNamedItems.Mod.ModSettings.addPage("Shield Settings");

shieldPage.addRangeSetting(BNI_SHIELD_ENUM.MAX_BUFFED_STATS_NUMBER, 3, 2, 5, 1, "Max Buffed Stats", "The number of buffed stats for any named shield (Vanilla: 1).\n\nHigher values mean all stats buffed");

shieldPage.addDivider("shieldSettingDivider");

shieldPage.addRangeSetting(BNI_SHIELD_ENUM.MIN_CONDITION, 130, 120, 160, 1, "Min Condition %", "Minimum condition multiplier (Vanilla: 120%).");
shieldPage.addRangeSetting(BNI_SHIELD_ENUM.MAX_CONDITION, 160, 160, 200, 1, "Max Condition %", "Maximum condition multiplier (Vanilla: 160%).");

shieldPage.addRangeSetting(BNI_SHIELD_ENUM.MIN_STAMINA, 60, 50, 70, 1, "Min Stamina %", "Minimum stamina multiplier (Vanilla: 70%).");
shieldPage.addRangeSetting(BNI_SHIELD_ENUM.MAX_STAMINA, 80, 70, 90, 1, "Max Stamina %", "Maximum stamina multiplier (Vanilla: 90%).");

shieldPage.addRangeSetting(BNI_SHIELD_ENUM.MIN_FAT_ON_SKILL, 2, 1, 3, 1, "Min Fatigue On Skill", "Minimum skill fatigue reduction (Vanilla: 1).");
shieldPage.addRangeSetting(BNI_SHIELD_ENUM.MAX_FAT_ON_SKILL, 3, 3, 6, 1, "Max Fatigue On Skill", "Maximum skill fatigue reduction (Vanilla: 3).");

shieldPage.addRangeSetting(BNI_SHIELD_ENUM.MIN_MD, 130, 120, 140, 1, "Min Melee Defense %", "Minimum melee defense multiplier (Vanilla: 120%).");
shieldPage.addRangeSetting(BNI_SHIELD_ENUM.MAX_MD, 150, 140, 160, 1, "Max Melee Defense %", "Maximum melee defense multiplier (Vanilla: 140%).");

shieldPage.addRangeSetting(BNI_SHIELD_ENUM.MIN_RD, 130, 120, 160, 1, "Min Range Defense %", "Minimum range defense multiplier (Vanilla: 120%).");
shieldPage.addRangeSetting(BNI_SHIELD_ENUM.MAX_RD, 150, 160, 200, 1, "Max Range Defense %", "Maximum range defense multiplier (Vanilla: 140%).");
