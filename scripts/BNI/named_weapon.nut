

::ModBuffedNamedItems.HooksMod.hook("scripts/items/weapons/named/named_weapon", function(q) {

	q.randomizeValues = @() function()
	{
		if (this.m.ConditionMax > 1)
		{
			local min = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_WEAPON_ENUM.MIN_CONDITION).getValue();
			local max = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_WEAPON_ENUM.MAX_CONDITION).getValue();
            this.m.Condition = this.Math.round(this.m.Condition * this.Math.rand(min, max) * 0.01) * 1.0;
		    this.m.ConditionMax = this.m.Condition;
		}
		else //throwing weapons
		{
			local min = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_WEAPON_ENUM.MIN_AMMO).getValue();
			local max = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_WEAPON_ENUM.MAX_AMMO).getValue();
            this.m.AmmoMax = this.m.AmmoMax + this.Math.rand(min, max);
            this.m.Ammo = this.m.AmmoMax;
		}

		local possibleBuffs = [];
		possibleBuffs.push(function ( _i )
		{
			local min = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_WEAPON_ENUM.MIN_DAMAGE).getValue();
			local max = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_WEAPON_ENUM.MAX_DAMAGE).getValue();
			local f = this.Math.rand(min, max) * 0.01;
			_i.m.RegularDamage = this.Math.round(_i.m.RegularDamage * f);
			_i.m.RegularDamageMax = this.Math.round(_i.m.RegularDamageMax * f);
		});
		possibleBuffs.push(function ( _i )
		{
			local min = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_WEAPON_ENUM.MIN_ARMOR).getValue();
			local max = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_WEAPON_ENUM.MAX_ARMOR).getValue();
			_i.m.ArmorDamageMult = _i.m.ArmorDamageMult + this.Math.rand(min, max) * 0.01;
		});

		if (this.m.ChanceToHitHead > 0)
		{
			possibleBuffs.push(function ( _i )
			{
				local min = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_WEAPON_ENUM.MIN_HC).getValue();
				local max = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_WEAPON_ENUM.MAX_HC).getValue();
				_i.m.ChanceToHitHead = _i.m.ChanceToHitHead + this.Math.rand(min, max);
			});
		}

		possibleBuffs.push(function ( _i )
		{
			local min = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_WEAPON_ENUM.MIN_AP).getValue();
			local max = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_WEAPON_ENUM.MAX_AP).getValue();
			_i.m.DirectDamageAdd = _i.m.DirectDamageAdd + this.Math.rand(min, max) * 0.01;
		});

		if (this.m.StaminaModifier <= -10)
		{
			possibleBuffs.push(function ( _i )
			{
				local min = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_WEAPON_ENUM.MIN_STAMINA).getValue();
				local max = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_WEAPON_ENUM.MAX_STAMINA).getValue();
				_i.m.StaminaModifier = this.Math.round(_i.m.StaminaModifier * this.Math.rand(min, max) * 0.01);
			});
		}

		if (this.m.ShieldDamage >= 16)
		{
			possibleBuffs.push(function ( _i )
			{
				local min = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_WEAPON_ENUM.MIN_SHIELD_DMG).getValue();
				local max = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_WEAPON_ENUM.MAX_SHIELD_DMG).getValue();
				_i.m.ShieldDamage = this.Math.round(_i.m.ShieldDamage * this.Math.rand(min, max) * 0.01);
			});
		}

		if (this.m.AdditionalAccuracy != 0 || this.isItemType(this.Const.Items.ItemType.RangedWeapon))
		{
			possibleBuffs.push(function ( _i )
			{
				local min = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_WEAPON_ENUM.MIN_ACC).getValue();
				local max = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_WEAPON_ENUM.MAX_ACC).getValue();
				_i.m.AdditionalAccuracy = _i.m.AdditionalAccuracy + this.Math.rand(min, max);
			});
		}

		possibleBuffs.push(function ( _i )
		{
			local min = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_WEAPON_ENUM.MIN_FAT_ON_SKILL).getValue();
			local max = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_WEAPON_ENUM.MAX_FAT_ON_SKILL).getValue();
			_i.m.FatigueOnSkillUse = _i.m.FatigueOnSkillUse - this.Math.rand(min, max);
		});

		for( local n = ::ModBuffedNamedItems.Mod.ModSettings.getSetting(BNI_WEAPON_ENUM.MAX_BUFFED_STATS_NUMBER).getValue(); n != 0 && possibleBuffs.len() != 0; n-- )
		{
			local r = this.Math.rand(0, possibleBuffs.len() - 1);
			possibleBuffs[r](this);
			possibleBuffs.remove(r);
		}
	}
})