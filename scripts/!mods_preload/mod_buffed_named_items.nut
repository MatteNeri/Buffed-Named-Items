::ModBuffedNamedItems <- {
	ID = "mod_buffed_named_items",
	Name = "Buffed Named Items",
	Version = "1.0.0"
}

local requiredMods = [
	"mod_modern_hooks >= 0.4.10",
	"mod_msu >= 1.5.0"
];


::ModBuffedNamedItems.HooksMod <- ::Hooks.register(::ModBuffedNamedItems.ID, ::ModBuffedNamedItems.Version, ::ModBuffedNamedItems.Name);
::ModBuffedNamedItems.HooksMod.require(requiredMods);

local queueLoadOrder = [];
foreach (requirement in requiredMods)
{
	local idx = requirement.find(" ");
	queueLoadOrder.push(">" + (idx == null ? requirement : requirement.slice(0, idx)));
}

::ModBuffedNamedItems.HooksMod.queue(queueLoadOrder, function()
{
	::ModBuffedNamedItems.Mod <- ::MSU.Class.Mod(::ModBuffedNamedItems.ID, ::ModBuffedNamedItems.Version, ::ModBuffedNamedItems.Name);

	::include("scripts/BNI/msu.nut");
	::include("scripts/BNI/named_weapons.nut");
})
