/*------------------------------------------
				Prop Whitelist
------------------------------------------*/ 

allowedProps = {
	"models/props_phx/wheels/moped_tire.mdl",
	"models/props/de_tides/gate_large.mdl",
	"models/props/de_inferno/chimney01.mdl",
	"models/props_junk/sawblade001a.mdl",
	"models/props/CS_militia/refrigerator01.mdl",
	"models/XQM/CoasterTrack/slope_225_4.mdl",
	"models/props_c17/Lockers001a.mdl",
	"models/props_phx/construct/metal_plate4x4.mdl",
	"models/props_lab/blastdoor001c.mdl",
	"models/props/de_inferno/flower_barrel_p11.mdl",
	"models/props/de_inferno/flower_barrel_p10.mdl",
	"models/XQM/CoasterTrack/slope_225_3.mdl",
	"models/XQM/CoasterTrack/slope_225_2.mdl",
}


hook.Add("PlayerSpawnProp", "propwhitelist", function(ply, model)
	local allowed = false
	for k,v in pairs(allowedProps) do
		if v == model then
			allowed = true
		end
	end
	if !allowed then return false end
end)