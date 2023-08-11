Citizen.CreateThread(function()
	SetWeaponDamageModifier(`WEAPON_TRIDENT`, Config.DAMAGETRIDENT)
	SetWeaponDamageModifier(`WEAPON_NOTZSAKURA`, Config.DAMAGENOTZSAKURA)
	SetWeaponDamageModifier(`WEAPON_BLACKPINK`, Config.DAMAGEBLACKPINK)
	SetWeaponDamageModifier(`WEAPON_FANHAND`, Config.DAMAGEFANHAND)
	SetWeaponDamageModifier(`WEAPON_TOWERSENTINEL`, 0.35)
	SetWeaponDamageModifier(`WEAPON_HAMMERTHOR`, Config.DAMAGEHAMMERTHOR)
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(500)
		local PlayerPed = PlayerPedId()
		if GetSelectedPedWeapon(PlayerPed) == `WEAPON_UNARMED` then
			EffectThunder = false
			WhiteNeon = false
			EffectFire = false
			Effectpur = false
			EffectThor = false
		end
		if GetSelectedPedWeapon(PlayerPed) == `WEAPON_TRIDENT` then
			EffectFire = true
			EffectThunder = false
			WhiteNeon = false
			Effectpur = false
			EffectThor = false
		end
		if GetSelectedPedWeapon(PlayerPed) == `WEAPON_NOTZSAKURA` then
			EffectThunder = true
			WhiteNeon = false
			EffectFire = false
			Effectpur = false
			EffectThor = false
		end
		if GetSelectedPedWeapon(PlayerPed) == `WEAPON_BLACKPINK` then
			WhiteNeon = true
			EffectThunder = false
			EffectFire = false
			Effectpur = false
			EffectThor = false
		end
		if GetSelectedPedWeapon(PlayerPed) == `WEAPON_FANHAND` then
			Effectpur = true
			WhiteNeon = false
			EffectThunder = false
			EffectFire = false
			EffectThor = false
		end
		if GetSelectedPedWeapon(PlayerPed) == `WEAPON_HAMMERTHOR` then
			EffectThor = true
			WhiteNeon = false
			EffectThunder = false
			EffectFire = false
			Effectpur = false
		end
		if GetSelectedPedWeapon(PlayerPed) == `WEAPON_TOWERSENTINEL` then
			EffectFire = true
			EffectThunder = false	
			WhiteNeon = false
			Effectpur = false
			EffectThor = false
		end

		if Config.EffectNOTZSAKURA then
			if EffectThunder then
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_NOTZSAKURA` then
					local Host = 'scr_trevor1'
					local Name = 'scr_trev1_trailer_boosh'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, 0.15, 0.2, 0.0, 0.0, -90.0, 60.0, 57005, 0.1, false, false, false)
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_NOTZSAKURA` then
					local Host = 'scr_trevor1'
					local Name = 'scr_trev1_trailer_boosh'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, 0.2, 0.3, 0.0, 0.0, -90.0, 60.0, 57005, 0.1, false, false, false)
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_NOTZSAKURA` then
					local Host = 'scr_trevor1'
					local Name = 'scr_trev1_trailer_boosh'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, 0.2, 0.35, 0.0, 0.0, -90.0, 60.0, 57005, 0., false, false, false)
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_NOTZSAKURA` then
					local Host = 'scr_trevor1'
					local Name = 'scr_trev1_trailer_boosh'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, 0.2, 0.4, 0.025, 0.0, -90.0, 60.0, 57005, 0.1, false, false, false)
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_NOTZSAKURA` then
					local Host = 'scr_trevor1'
					local Name = 'scr_trev1_trailer_boosh'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, 0.2, 0.5, 0.05, 0.0, -90.0, 60.0, 57005, 0.1, false, false, false)
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_NOTZSAKURA` then
					local Host = 'scr_trevor1'
					local Name = 'scr_trev1_trailer_boosh'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, 0.2, 0.5, 0.05, 0.0, -90.0, 60.0, 57005, 0.1, false, false, false)
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_NOTZSAKURA` then
					local Host = 'scr_trevor1'
					local Name = 'scr_trev1_trailer_boosh'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, 0.2, 0.4, 0.025, 0.0, -90.0, 60.0, 57005, 0.1, false, false, false)
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_NOTZSAKURA` then
					local Host = 'scr_trevor1'
					local Name = 'scr_trev1_trailer_boosh'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, 0.2, 0.35, 0.0, 0.0, -90.0, 60.0, 57005, 0.1, false, false, false)
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_NOTZSAKURA` then
					local Host = 'scr_trevor1'
					local Name = 'scr_trev1_trailer_boosh'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, 0.15, 0.3, 0.0, 0.0, -90.0, 60.0, 57005, 0.1, false, false, false)
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_NOTZSAKURA` then
					local Host = 'scr_trevor1'
					local Name = 'scr_trev1_trailer_boosh'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, 0.15, 0.2, 0.0, 0.0, -90.0, 60.0, 57005, 0.1, false, false, false)
				end
				Wait(100)
			else
				Citizen.Wait(100)
			end
		end

		if Config.EffectTRIDENT then
			if EffectFire and IsPedInMeleeCombat(PlayerPed) then
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_TOWERSENTINEL` then
				
					local Host = "Core"
					local Name = "blood_stungun"
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host) 
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed , 0.100, 0.0, 0.0, -90.0, 0.0, 0.0, 57005, 1.0, false, false, false)	
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_TOWERSENTINEL` then
						
					local Host = "Core"
					local Name = "blood_stungun"
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host) 
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed , 0.200, 0.220, 0.0, -90.0, 0.0, 0.0, 57005, 2.0, false, false, false)	
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_TOWERSENTINEL` then
						
					local Host = "weap_xs_weapons"
					local Name = "exp_xs_ray"
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host) 
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed , 0.300, 0.700, 0.0, -90.0, 0.0, 0.0, 57005, 0.100, false, false, false)	
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_TRIDENT` then
					local Host = 'core'
					local Name = 'exp_grd_boat_lod'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, -0.02, -0.4, -0.20, 0.0, 60.0, 70.0, 57005, 0.1, false, false, false)
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_TRIDENT` then
					local Host = 'core'
					local Name = 'exp_grd_boat_lod'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, 0.02, -0.3, -0.15, 0.0, 60.0, 70.0, 57005, 0.1, false, false, false)
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_TRIDENT` then
					local Host = 'core'
					local Name = 'exp_grd_boat_lod'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, 0.035, -0.2, -0.10, 0.0, 60.0, 70.0, 57005, 0.1, false, false, false)
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_TRIDENT` then
					local Host = 'core'
					local Name = 'exp_grd_boat_lod'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, 0.07, -0.1, -0.05, 0.0, 60.0, 70.0, 57005, 0.1, false, false, false)
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_TRIDENT` then
					local Host = 'core'
					local Name = 'exp_grd_boat_lod'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, 0.1, 0.0, 0.020, 0.0, 60.0, 70.0, 57005, 0.1, false, false, false)
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_TRIDENT` then
					local Host = 'core'
					local Name = 'exp_grd_boat_lod'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, 0.14, 0.1, 0.07, 0.0, 60.0, 70.0, 57005, 0.1, false, false, false)
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_TRIDENT` then
					local Host = 'core'
					local Name = 'exp_grd_boat_lod'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, 0.14, 0.2, 0.13, 0.0, 50.0, 70.0, 57005, 0.1, false, false, false)
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_TRIDENT` then
					local Host = 'core'
					local Name = 'exp_grd_boat_lod'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, 0.18, 0.3, 0.18, 0.0, 50.0, 70.0, 57005, 0.1, false, false, false)
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_TRIDENT` then
					local Host = 'core'
					local Name = 'exp_grd_boat_lod'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, 0.21, 0.4, 0.24, 0.0, 50.0, 70.0, 57005, 0.1, false, false, false)
				end
				Wait(500)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_TRIDENT` then
					local Host = 'core'
					local Name = 'exp_grd_boat_lod'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, 0.3, 0.6, 0.30, 0.0, 50.0, 70.0, 57005, 0.15, false, false, false)
				end
				Wait(100)
			else
				Citizen.Wait(400)
			end
		end

		if Config.EffectBLACKPINK then
			if WhiteNeon then
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_BLACKPINK` then
					local Host = 'scr_rcpaparazzo1'
					local Name = 'scr_mich4_firework_trailburst_spawn'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, 0.2, 0.3, 0.0, 0.0, -90.0, 60.0, 57005, 0.2, false, false, false)
				end
				Wait(0)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_BLACKPINK` then
					local Host = 'scr_rcbarry2'
					local Name = 'scr_clown_death'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, 0.2, 0.3, 0.0, 0.0, -90.0, 60.0, 57005, 0.05, false, false, false)
				end
			else
				Citizen.Wait(400)
			end
		end

		if Config.EffectFANHAND then
			-- print(IsPedInMeleeCombat(PlayerPed))
			if Effectpur and IsPedInMeleeCombat(PlayerPed) then
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_FANHAND` then
				
					local Host = "scr_rcbarry1"
					local Name = "scr_alien_disintegrate"
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host) 
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed , 0.55, -0.1, 0.04, 0.0, -90.0, 80.0, 57005, 0.12, false, false, false)	
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_FANHAND` then
						
					local Host = "scr_rcbarry1"
					local Name = "scr_alien_disintegrate"
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host) 
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed , 0.55, 0.1, 0.04, 0.0, -90.0, 80.0, 57005, 0.12, false, false, false)	
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_FANHAND` then
						
					local Host = "scr_rcbarry1"
					local Name = "scr_alien_disintegrate"
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host) 
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed , 0.50, 0.3, 0.04, 0.0, -90.0, 80.0, 57005, 0.12, false, false, false)	
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_FANHAND` then
						
					local Host = "scr_rcbarry1"
					local Name = "scr_alien_disintegrate"
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host) 
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed , 0.40, 0.45, 0.04, 0.0, -90.0, 80.0, 57005, 0.12, false, false, false)	
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_FANHAND` then
						
					local Host = "scr_rcbarry1"
					local Name = "scr_alien_disintegrate"
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host) 
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed , 0.23, 0.53, 0.04, 0.0, -90.0, 80.0, 57005, 0.12, false, false, false)	
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_FANHAND` then
						
					local Host = "scr_rcbarry1"
					local Name = "scr_alien_disintegrate"
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host) 
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed , 0.05, 0.56, 0.04, 0.0, -90.0, 80.0, 57005, 0.12, false, false, false)	
				end
				Wait(1000)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_FANHAND` then
						
					local Host = "scr_rcbarry1"
					local Name = "scr_alien_disintegrate"
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host) 
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed , 0.05, 0.56, 0.04, 0.0, -90.0, 80.0, 57005, 0.12, false, false, false)	
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_FANHAND` then
						
					local Host = "scr_rcbarry1"
					local Name = "scr_alien_disintegrate"
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host) 
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed , 0.23, 0.53, 0.04, 0.0, -90.0, 80.0, 57005, 0.12, false, false, false)	
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_FANHAND` then
						
					local Host = "scr_rcbarry1"
					local Name = "scr_alien_disintegrate"
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host) 
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed , 0.40, 0.45, 0.04, 0.0, -90.0, 80.0, 57005, 0.12, false, false, false)	
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_FANHAND` then
						
					local Host = "scr_rcbarry1"
					local Name = "scr_alien_disintegrate"
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host) 
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed , 0.50, 0.3, 0.04, 0.0, -90.0, 80.0, 57005, 0.12, false, false, false)	
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_FANHAND` then
						
					local Host = "scr_rcbarry1"
					local Name = "scr_alien_disintegrate"
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host) 
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed , 0.55, 0.1, 0.04, 0.0, -90.0, 80.0, 57005, 0.12, false, false, false)	
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_FANHAND` then
						
					local Host = "scr_rcbarry1"
					local Name = "scr_alien_disintegrate"
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host) 
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed , 0.55, -0.1, 0.04, 0.0, -90.0, 80.0, 57005, 0.12, false, false, false)	
				end
				Wait(100)
	

			else
				Citizen.Wait(400)
			end
		end

		if Config.EffectHAMMERTHOR then
			if EffectThor then
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_HAMMERTHOR` then
					local Host = 'weap_xs_weapons'
					local Name = 'exp_xs_ray'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, 0.1, -0.1, 0.04, 0.0, -90.0, 80.0, 57005, 0.05, false, false, false)
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_HAMMERTHOR` then
					local Host = 'weap_xs_weapons'
					local Name = 'exp_xs_ray'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, 0.1, 0.0, 0.04, 0.0, -90.0, 80.0, 57005, 0.05, false, false, false)
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_HAMMERTHOR` then
					local Host = 'weap_xs_weapons'
					local Name = 'exp_xs_ray'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, 0.1, 0.1, 0.06, 0.0, -90.0, 80.0, 57005, 0.05, false, false, false)
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_HAMMERTHOR` then
					local Host = 'weap_xs_weapons'
					local Name = 'exp_xs_ray'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, 0.1, 0.2, 0.08, 0.0, -90.0, 80.0, 57005, 0.05, false, false, false)
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_HAMMERTHOR` then
					local Host = 'weap_xs_weapons'
					local Name = 'exp_xs_ray'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, 0.1, 0.3, 0.1, 0.0, -90.0, 80.0, 57005, 0.05, false, false, false)
				end
				Wait(100)
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_HAMMERTHOR` then
					local Host = 'scr_trevor1'
					local Name = 'scr_trev1_trailer_boosh'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, 0.3, 0.23, 0.06, 0.0, -90.0, 80.0, 57005, 0.15, false, false, false)
				end
				if GetSelectedPedWeapon(PlayerPed) == `WEAPON_HAMMERTHOR` then
					local Host = 'scr_trevor1'
					local Name = 'scr_trev1_trailer_boosh'
					RequestNamedPtfxAsset(Host)
					while not HasNamedPtfxAssetLoaded(Host) do
						Citizen.Wait(0)
					end
					SetPtfxAssetNextCall(Host)
					StartNetworkedParticleFxNonLoopedOnPedBone(Name, PlayerPed, -0.1, 0.25, 0.06, 0.0, -90.0, 80.0, 57005, 0.15, false, false, false)
				end
				Wait(100)
			else
				Citizen.Wait(400)
			end
		end
	end
end)
