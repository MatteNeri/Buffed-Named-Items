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

local page = ::ModBuffedNamedItems.Mod.ModSettings.addPage("Weapon Settings");

page.addRangeSetting(BNI_WEAPON_ENUM.MAX_BUFFED_STATS_NUMBER, 3, 2, 8, 1, "Max Buffed Stats", "The number of buffed stats for any named weapon (Vanilla: 2).\n\nHigher values mean all stats buffed");

page.addDivider("weaponSettingDivider");

page.addRangeSetting(BNI_WEAPON_ENUM.MAX_CONDITION, 100, 90, 140, 5, "Min Condition %", "Minimum condition multiplier (Vanilla: 90%).");
page.addRangeSetting(BNI_WEAPON_ENUM.MIN_CONDITION, 150, 140, 190, 5, "Max Condition %", "Maximum condition multiplier (Vanilla: 140%).");

page.addRangeSetting(BNI_WEAPON_ENUM.MIN_AMMO, 2, 1, 3, 1, "Min Additional Ammo", "Minimum additional ammo for throwing weapons (Vanilla: 1).");
page.addRangeSetting(BNI_WEAPON_ENUM.MAX_AMMO, 4, 3, 6, 1, "Max Additional Ammo", "Maximum additional ammo for throwing weapons (Vanilla: 3).");

page.addRangeSetting(BNI_WEAPON_ENUM.MIN_AMMO, 115, 110, 130, 1, "Min Damage %", "Minimum damage multiplier (Vanilla: 110%).");
page.addRangeSetting(BNI_WEAPON_ENUM.MAX_AMMO, 133, 130, 150, 1, "Max Damage %", "Maximum damage multiplier (Vanilla: 130%).");

page.addRangeSetting(BNI_WEAPON_ENUM.MIN_ARMOR, 15, 10, 30, 1, "Min Armor Damage %", "Minimum additive armor damage (Vanilla: 10%).");
page.addRangeSetting(BNI_WEAPON_ENUM.MAX_ARMOR, 30, 30, 50, 1, "Max Armor Damage %", "Maximum additive armor damage (Vanilla: 30%).");

page.addRangeSetting(BNI_WEAPON_ENUM.MIN_HC, 10, 10, 20, 1, "Min Chance to Hit Head %", "Minimum chance to hit the head (Vanilla: 10%).");
page.addRangeSetting(BNI_WEAPON_ENUM.MAX_HC, 20, 20, 30, 1, "Max Chance to Hit Head %", "Maximum chance to hit the head (Vanilla: 20%).");

page.addRangeSetting(BNI_WEAPON_ENUM.MIN_AP, 10, 8, 16, 1, "Min Armor Piercing %", "Minimum additive armor piercing (Vanilla: 8%).");
page.addRangeSetting(BNI_WEAPON_ENUM.MAX_AP, 18, 16, 24, 1, "Max Armor Piercing %", "Maximum additive armor piercing (Vanilla: 16%).");

page.addRangeSetting(BNI_WEAPON_ENUM.MIN_STAMINA, 50, 50, 80, 1, "Min Stamina %", "Minimum stamina multiplier (Vanilla: 50%).");
page.addRangeSetting(BNI_WEAPON_ENUM.MAX_STAMINA, 75, 80, 24, 1, "Max Stamina %", "Maximum stamina multiplier (Vanilla: 80%).");

page.addRangeSetting(BNI_WEAPON_ENUM.MIN_SHIELD_DMG, 150, 130, 180, 1, "Min Shield Damage %", "Minimum shield damage multiplier (Vanilla: 150%).");
page.addRangeSetting(BNI_WEAPON_ENUM.MAX_SHIELD_DMG, 200, 180, 230, 1, "Max Shield Damage %", "Maximum shield damage multiplier (Vanilla: 200%).");

page.addRangeSetting(BNI_WEAPON_ENUM.MIN_ACC, 10, 5, 15, 1, "Min Additional Accuracy %", "Minimum additional accuracy (Vanilla: 5%).");
page.addRangeSetting(BNI_WEAPON_ENUM.MAX_ACC, 15, 15, 30, 1, "Max Additional Accuracy %", "Maximum additional accuracy (Vanilla: 15%).");

page.addRangeSetting(BNI_WEAPON_ENUM.MIN_FAT_ON_SKILL, 2, 1, 3, 1, "Min Fatigue On Skill", "Minimum skill fatigue reduction (Vanilla: 1).");
page.addRangeSetting(BNI_WEAPON_ENUM.MAX_FAT_ON_SKILL, 3, 3, 6, 1, "Max Fatigue On Skill", "Maximum skill fatigue reduction (Vanilla: 3).");
