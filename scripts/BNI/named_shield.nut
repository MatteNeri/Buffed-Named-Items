
::ModBuffedNamedItems.HooksMod.hookTree("scripts/items/shields/named/named_shield", function(q) {
	q.randomizeValues = @() function()
	{
		local available = [];
		available.push(function ( _i )
		{
			local min = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_SHIELD_ENUM.MIN_MD).getValue();
			local max = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_SHIELD_ENUM.MAX_MD).getValue();
			_i.m.MeleeDefense = this.Math.round(_i.m.MeleeDefense * this.Math.rand(min, max) * 0.01);
		});
		available.push(function ( _i )
		{
			local min = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_SHIELD_ENUM.MIN_RD).getValue();
			local max = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_SHIELD_ENUM.MAX_RD).getValue();
			_i.m.RangedDefense = this.Math.round(_i.m.RangedDefense * this.Math.rand(min, max) * 0.01);
		});
		available.push(function ( _i )
		{
			local min = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_SHIELD_ENUM.MIN_FAT_ON_SKILL).getValue();
			local max = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_SHIELD_ENUM.MAX_FAT_ON_SKILL).getValue();
			_i.m.FatigueOnSkillUse = _i.m.FatigueOnSkillUse - this.Math.rand(min, max);
		});
		available.push(function ( _i )
		{
			local min = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_SHIELD_ENUM.MIN_CONDITION).getValue();
			local max = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_SHIELD_ENUM.MAX_CONDITION).getValue();
			_i.m.Condition = this.Math.round(_i.m.Condition * this.Math.rand(min, max) * 0.01) * 1.0;
			_i.m.ConditionMax = _i.m.Condition;
		});
		available.push(function ( _i )
		{
			local min = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_SHIELD_ENUM.MIN_STAMINA).getValue();
			local max = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_SHIELD_ENUM.MAX_STAMINA).getValue();
			_i.m.StaminaModifier = this.Math.round(_i.m.StaminaModifier * this.Math.rand(min, max) * 0.01);
		});

		for( local n = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_SHIELD_ENUM.MAX_BUFFED_STATS_NUMBER).getValue(); n != 0 && available.len() != 0; n-- )
		{
			local r = this.Math.rand(0, available.len() - 1);
			available[r](this);
			available.remove(r);
		}
	}
})