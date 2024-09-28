::ModBuffedNamedItems.HooksMod.hook("scripts/items/armor/named/named_armor", function(q) {
	q.randomizeValues = @() function()
	{
		local min_c = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_ARMOR_ENUM.MIN_CONDITION).getValue();
		local max_c = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_ARMOR_ENUM.MAX_CONDITION).getValue();
		local min_s = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_ARMOR_ENUM.MIN_STAMINA).getValue();
		local max_s = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_ARMOR_ENUM.MAX_STAMINA).getValue();
		local staminaModifier = this.m.StaminaModifier + this.Math.rand(min_s, max_s);
		
		this.m.StaminaModifier =  this.Math.min(-8, staminaModifier);
		this.m.Condition = this.Math.floor(this.m.Condition * this.Math.rand(min_c, max_c) * 0.01) * 1.0;
		this.m.ConditionMax = this.m.Condition;
	}
})