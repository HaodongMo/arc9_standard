AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Standard (do not use)"

SWEP.PrintName = "RAY/CAR 83"
SWEP.TrueName = "M16A2"

SWEP.Class = "Assault Rifle"
SWEP.Trivia = {
    Manufacturer = "Colt's Manufacturing Company",
    Calibre = "5.56x45mm NATO",
    Mechanism = "Gas-Operated Rotating Bolt",
    Country = "United States of America",
    Year = "1983"
}

SWEP.Credits = {
    Author = "Urban Decay Team",
}

SWEP.Description = [[Adopted in 1983, the M16A2 is a widely used assault rifle created as a development of the M16A1. It comes with new furniture, an improved rear sight, a case deflector, and a semi-auto/three-round burst fire selector. With a worldwide production of 8 million, it is the most produced firearm of the 5.56mm calibre on Earth.

Medium weight with good rate of fire in burst. Pace bursts well to maximize volume of fire.]]

if !ARC9:UseTrueNames() then

SWEP.Trivia = {
    Manufacturer = "Rayter Arms Industries",
    Calibre = "5.56x45mm NATO",
    Mechanism = "Gas-Operated Rotating Bolt",
    Country = "United States of America",
    Year = "1983"
}

SWEP.Description = [[Adopted in 1983, the RAY/CAR 83 (Rayter Combat Automatic Rifle) is a widely used assault rifle created as a development of the AR series. It comes with new furniture, an improved rear sight, a case deflector, and a semi-auto/three-round burst fire selector.

Medium weight with good rate of fire in burst. Pace bursts well to maximize volume of fire.]]

else

SWEP.PrintName = SWEP.TrueName

end

SWEP.ViewModel = "models/weapons/arc9/c_ud_m16.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
SWEP.ViewModelFOV = 70

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(-7.5, 1.5, -5.5),
    Ang = Angle(-5, 0, 180),
    Scale = 1
}

SWEP.DefaultBodygroups = "0000000400000000000000"

SWEP.SpreadMultHipFire = 3
SWEP.RecoilMultHipFire = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 27 -- Damage done at point blank range
SWEP.DamageMin = 20 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 500 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 10000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 5 -- Units of wood that can be penetrated by this gun.

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 25000

-------------------------- MAGAZINE

SWEP.Ammo = "smg1" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 30 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.

SWEP.DropMagazineModel = "models/weapons/arc9/droppedmags/m16_mag_30.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
    "weapons/arc9_ud/common/rifle_magdrop_1.ogg", "weapons/arc9_ud/common/rifle_magdrop_2.ogg", "weapons/arc9_ud/common/rifle_magdrop_3.ogg", "weapons/arc9_ud/common/rifle_magdrop_4.ogg"
}  -- Table of sounds a dropped magazine should play.
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 1

-------------------------- FIREMODES

SWEP.RPM = 800

-- Works different to ArcCW

-- -1: Automatic
-- 0: Safe. Don't use this for safety.
-- 1: Semi.
-- 2: Two-round burst.
-- 3: Three-round burst.
-- n: n-round burst.
SWEP.Firemodes = {
    {
        Mode = 3,
        -- add other attachment modifiers
    },
    {
        Mode = 1
    }
}

SWEP.AutoBurst = false -- Hold fire to keep firing bursts
SWEP.PostBurstDelay = 0.05
SWEP.RunAwayBurst = false -- Burst will keep firing until all of the burst has been expended.
SWEP.NonResetBurst = true -- Annoying behaviour where you have to shoot ALL THREE BULLETS of a burst before it resets. Supposedly realistic for the M16.

-- Use this hook to modify features of a firemode.
-- SWEP.Hook_P_ModifyFiremode = function(self, firemode) return firemode end

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false

SWEP.BashDamage = 50
SWEP.BashLungeRange = 128
SWEP.BashRange = 64
SWEP.PreBashTime = 0.25
SWEP.PostBashTime = 0.5

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 0.4 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.2 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.2

SWEP.RecoilDissipationRate = 50 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0.05 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1.5 * 0.25 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2

SWEP.FOV_RecoilAdd = 2 -- FOV to increase or decrease by.
SWEP.FOV_Recoil_TimeStart = 0.10 -- Peak
SWEP.FOV_Recoil_TimeEnd = 0.35 -- Until dropoff
-- https://wiki.facepunch.com/gmod/math.ease
SWEP.FOV_Recoil_FuncStart = math.ease.OutCirc -- Function to use
SWEP.FOV_Recoil_FuncEnd = math.ease.InCirc

-------------------------- SPREAD

SWEP.Spread = 0.002

SWEP.SpreadAddRecoil = 0.0002 -- Applied per unit of recoil.

-------------------------- HANDLING

SWEP.FreeAimRadius = 10 / 1.25 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0.75 + 1 -- How much the gun sways.

SWEP.SwayMultMidAir = 2
SWEP.SwayMultMove = 1.15
SWEP.SwayMultCrouch = 0.66
SWEP.SwayMultShooting = 1.2

SWEP.FreeAimRadiusSights = 1

SWEP.SwayMultSights = 0.3

SWEP.AimDownSightsTime = 0.31 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.34 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 0.95
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.75
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.806, -3, 0.975),
    Ang = Angle(0, -0.4, 0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(0, 0, -45),
    },
    Magnification = 1.1,
}

SWEP.SprintAng = Angle(30, -10, -20)
SWEP.SprintPos = Vector(3, 0, 0)

SWEP.ViewModelFOVBase = 75
SWEP.ActivePos = Vector(0.33, 0, 0)
SWEP.ActiveAng = Angle(0, 0, -3)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(20, 32, 4)
SWEP.CustomizeSnapshotFOV = 110

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_MINIMI" -- Used for some muzzle effects.

SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellCorrectAng = Angle(0, 180, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
-------------------------- SOUNDS

local path = ")^weapons/arc9_ud/m16/"
local common = ")^weapons/arc9_ud/common/"
SWEP.FirstShootSound = path .. "first.ogg"
SWEP.ShootSound = {path .. "auto1.ogg", path .. "auto2.ogg", path .. "auto3.ogg", path .. "auto4.ogg"}
SWEP.DistantShootSound = path .. "dist.ogg"
SWEP.ShootSoundSilencedFirst = path .. "fire_sup.ogg"
SWEP.ShootSoundSilenced = {path .. "fire_auto_sup_2.ogg", path .. "fire_auto_sup_3.ogg"}
SWEP.DistantShootSoundSilenced = common .. "sup_tail.ogg"
SWEP.DryFireSound = path .. "dryfire.ogg"

SWEP.FiremodeSound = "arc9/firemode.wav"

local rottle = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local ratel = {common .. "rattle1.ogg", path .. "rattle2.ogg", path .. "rattle3.ogg"}

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()

    if elements["m16_mag_20"] then
        return anim .. "_20"
    elseif elements["m16_mag_40"] then
        return anim .. "_40"
    elseif elements["m16_mag_60"] then
        return anim .. "_60"
    elseif elements["m16_mag_100"] then
        return anim .. "_100"
    end
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 1
    },
    ["idle_empty"] = {
        Source = "idle_empty",
        Time = 1
    },
    ["draw"] = {
        Source = "draw",
        EventTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "shoulder.ogg", t = 0.15},
            {s = ratel, t = 0.2},
        },
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 20 / 30,
        EventTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "shoulder.ogg", t = 0.15},
            {s = ratel, t = 0.2},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = ratel, t = 0},
            {s = common .. "cloth_6.ogg", t = 0.2},
        },
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        Time = 20 / 30,
        EventTable = {
            {s = ratel, t = 0},
            {s = common .. "cloth_6.ogg", t = 0.2},
        },
    },
    ["fire"] = {
        Source = "fire",
        Time = 13 / 30,
        ShellEjectAt = 0.01,
        EventTable = {
            {s = path .. "mech.ogg", t = 0}, -- Temporary
        },
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 13 / 30,
        ShellEjectAt = 0.01,
        EventTable = {
            {s = path .. "mech_last.ogg", t = 0}, -- Temporary
        },
    },
    ["fire_usas"] = {
        Source = "fire_usas",
        Time = 20 / 30,
        ShellEjectAt = 0.01,
    },
    ["fire_empty_usas"] = {
        Source = "fire_empty_usas",
        Time = 20 / 30,
        ShellEjectAt = 0.01,
        EventTable = {
            {s = path .. "mech_last.ogg", t = 0}, -- Temporary
        },
    },

    ["fire_cycle"] = {
        Source = "fire",
        Time = 13 / 30,
    },

    ["fix"] = {
        Source = "fix",
        Time = 45 / 30,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.4,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "chback.ogg",   t = 0.15},
            {s = common .. "cloth_4.ogg",  t = 0.5},
            {s = path .. "chamber.ogg",  t = 0.55},
        },
    },
    ["fix_empty"] = {
        Source = "fix_empty",
        Time = 45 / 30,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.4,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "chback.ogg",   t = 0.15},
            {s = common .. "cloth_4.ogg",  t = 0.5},
            {s = path .. "chamber.ogg",  t = 0.55},
        },
    },
    ["fix_100"] = {
        Source = "fix_100",
        Time = 50 / 30,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.4,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "chback.ogg",   t = 0.15},
            {s = common .. "cloth_4.ogg",  t = 0.5},
            {s = path .. "chamber.ogg",  t = 0.55},
        },
    },
    ["fix_empty_100"] = {
        Source = "fix_empty_100",
        Time = 50 / 30,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.4,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "chback.ogg",   t = 0.15},
            {s = common .. "cloth_4.ogg",  t = 0.5},
            {s = path .. "chamber.ogg",  t = 0.55},
        },
    },

    ["cycle"] = {
        Source = "fix",
        Time = 36 / 30 * 0.7,
        ShellEjectAt = 0.3,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.4,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "chback.ogg",   t = 0.05},
            {s = common .. "cloth_4.ogg",  t = 0.2},
            {s = path .. "chamber.ogg",  t = 0.3},
        },
    },

    -- 30 Round Reloads --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 71 / 30,
        MinProgress = 0.7,
        LastClip1OutTime = 0.9,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.75,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {v1 = 0, v2 = 5000, vt = 0.1, t = 0},
            {s = rottle,  t = 0.0},
            {s = ratel, t = 0.25},
            {s = path .. "magout.ogg", 	 t = 0.335},
            {v1 = 10000, v2 = 10000, vt = 0.1, t = 0.3},
            {s = ratel, t = 0.5},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = ratel, t = 1.1},
            {s = rottle,  t = 1.15},
            {v1 = 5000, v2 = 20000, vt = 0.1, t = 1.4},
            {s = common .. "grab.ogg", t = 1.81},
            {s = common .. "shoulder.ogg", t = 1.9},
            {v1 = 0, v2 = 5000, vt = 0.1, t = 1.9},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 79 / 30,
        MinProgress = 0.6,
        LastClip1OutTime = 0.7,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.75,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {v1 = 0, v2 = 5000, vt = 0.1, t = 0},
            {s = rottle,  t = 0.0},
            {s = ratel, t = 0.25},
            {s = path .. "magout.ogg", 	 t = 0.335},
            {v1 = 10000, v2 = 10000, vt = 0.1, t = 0.3},
            {s = ratel, t = 0.5},
            {s = path .. "magin.ogg",    t = 1.05},
            {v1 = 10000, v2 = 10000, vt = 0.1, t = 1.4},
            {s = ratel, t = 1.1},
            {s = rottle,  t = 1.39},
            {s = path .. "boltdrop.ogg", t = 1.85},
            {v1 = 40000, v2 = 40000, vt = 0.2, t = 2},
            {s = ratel, t = 1.9},
            {s = common .. "grab.ogg", t = 2.125},
            {s = common .. "shoulder.ogg", t = 2.15},
            {v1 = 0, v2 = 5000, vt = 0.1, t = 2.15},
        },
    },

    -- 20 Round Reloads --

    ["reload_20"] = {
        Source = "reload_20",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 71 / 30,
        MinProgress = 0.7,
        LastClip1OutTime = 0.9,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.75,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = rottle,  t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.35},
            {s = rottle,  t = 0.75},
            {s = path .. "magin.ogg",    t = 0.95},
            {s = rottle,  t = 1.1},
            {s = common .. "shoulder.ogg", t = 1.925},
        },
    },
    ["reload_empty_20"] = {
        Source = "reload_empty_20",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 79 / 30,
        MinProgress = 0.6,
        LastClip1OutTime = 0.7,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.75,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.2},
            {s = rottle, t = 0.75},
            {s = path .. "magin.ogg",    t = 0.95},
            {s = rottle, t = 1.39},
            {s = path .. "boltdrop.ogg", t = 1.77},
            {s = common .. "shoulder.ogg", t = 2.13},
        },
    },

    -- 40 Round Reloads --

    ["reload_40"] = {
        Source = "reload_40",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 71 / 30,
        MinProgress = 0.7,
        LastClip1OutTime = 0.9,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.35},
            {s = rottle, t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = rottle, t = 1.1},
            {s = common .. "shoulder.ogg", t = 1.85},
        },
    },
    ["reload_empty_40"] = {
        Source = "reload_empty_40",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 79 / 30,
        MinProgress = 0.6,
        LastClip1OutTime = 0.7,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = rottle,  t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.35},
            {s = rottle,  t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = rottle,  t = 1.475},
            {s = path .. "boltdrop.ogg", t = 1.78},
            {s = common .. "shoulder.ogg", t = 2.2},
        },
    },

    -- 60 Round Reloads --

    ["reload_60"] = {
        Source = "reload_60",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 71 / 30,
        MinProgress = 0.7,
        LastClip1OutTime = 0.9,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.8,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.35},
            {s = rottle, t = 0.75},
            {s = path .. "magin.ogg",    t = 1.1},
            {s = rottle, t = 1.1},
            {s = common .. "shoulder.ogg", t = 1.97},
        },
    },
    ["reload_empty_60"] = {
        Source = "reload_empty_60",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 79 / 30,
        MinProgress = 0.6,
        LastClip1OutTime = 0.7,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.8,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.35},
            {s = rottle, t = 0.75},
            {s = path .. "magin.ogg",    t = 1.1},
            {s = rottle, t = 1.475},
            {s = path .. "boltdrop.ogg", t = 1.9},
            {s = common .. "shoulder.ogg", t = 2.2},
        },
    },

    -- 100 Round Reloads --

    ["reload_100"] = {
        Source = "reload_100",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 71 / 30,
        MinProgress = 0.7,
        LastClip1OutTime = 0.9,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.8,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.3},
            {s = rottle, t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = rottle, t = 1.1},
            {s = path .. "magtap.ogg",   t = 1.59},
            {s = common .. "cloth_4.ogg",  t = 1.65},
            {s = common .. "shoulder.ogg", t = 2.05},
        },
    },
    ["reload_empty_100"] = {
        Source = "reload_empty_100",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 90 / 30,
        MinProgress = 0.6,
        LastClip1OutTime = 0.7,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.8,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.3},
            {s = rottle, t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = path .. "magtap.ogg",   t = 1.59},
            {s = rottle, t = 1.75},
            {s = path .. "chback.ogg",   t = 2.0},
            {s = common .. "cloth_4.ogg",  t = 2.05},
            {s = path .. "chamber.ogg",  t = 2.22},
            {s = common .. "shoulder.ogg", t = 2.6},
        },
    },
}

-------------------------- ATTACHMENTS

SWEP.AttachmentElements = {
    ["m16_mag_20"] = {
        Bodygroups = {
            {2, 1}
        }
    },
    ["m16_mag_40"] = {
        Bodygroups = {
            {2, 2}
        }
    },
    ["m16_mag_60"] = {
        Bodygroups = {
            {2, 3}
        }
    },
    ["m16_mag_100"] = {
        Bodygroups = {
            {2, 4}
        }
    },
    ["m16_upper_a3"] = {
        Bodygroups = {
            {1, 1},
            {3, 3}
        },
    },
    ["m16_upper_a4"] = {
        Bodygroups = {
            {1, 1},
            {3, 3}
        },
    },
    ["m16_upper_a1"] = {
        Bodygroups = {
            {1, 5}
        },
    },
    ["m16_grip_skeleton"] = {
        Bodygroups = {
            {8, 2}
        }
    },
    ["m16_grip_wood"] = {
        Bodygroups = {
            {8, 3}
        }
    },
    ["m16_barrel_carbine_ris"] = {
        Bodygroups = {
            {5, 5},
            {4, 1},
            {6, 2}
        },
        AttPosMods = {
            [5] = {
                Pos = Vector(0, -0.05, 24.5),
            }
        }
    },
    ["m16_barrel_carbine"] = {
        Bodygroups = {
            {5, 4},
            {4, 1},
            {6, 2}
        },
        AttPosMods = {
            [5] = {
                Pos = Vector(0, -0.05, 24.5),
            }
        }
    },
    ["m16_barrel_commando"] = {
        Bodygroups = {
            {5, 4},
            {4, 2},
            {6, 2}
        },
        AttPosMods = {
            [5] = {
                Pos = Vector(0, -0.05, 20),
            }
        }
    },
    ["m16_barrel_commando_ris"] = {
        Bodygroups = {
            {5, 5},
            {4, 2},
            {6, 2}
        },
        AttPosMods = {
            [5] = {
                Pos = Vector(0, -0.05, 20),
            }
        }
    },
    ["m16_barrel_fpw"] = {
        Bodygroups = {
            {5, 6},
            {4, 1},
            {6, 5}
        },
        AttPosMods = {
            [5] = {
                Pos = Vector(0, -0.05, 24.5),
            },
            [9] = {
                Pos = Vector(0, -0.05, 19),
            },
        }
    },
    ["m16_barrel_a1"] = {
        Bodygroups = {
            {5, 1}
        },
    },
    ["m16_barrel_lmg"] = {
        Bodygroups = {
            {5, 3}
        },
    },
    ["m16_barrel_wood"] = {
        Bodygroups = {
            {5, 1}
        },
        Skin = 1
    },
    ["m16_barrel_ris"] = {
        Bodygroups = {
            {5, 2}
        },
    },
    ["m16rs"] = {
        Bodygroups = {
            {12, 2},
        }
    },
    ["stock_buffertube"] = {
        Bodygroups = {
            {7, 4}
        }
    },
    ["m16_stock_solid"] = {
        Bodygroups = {
            {7, 0}
        }
    },
    ["m16_stock_wire"] = {
        Bodygroups = {
            {7, 2}
        }
    },
    ["m16_stock_m607"] = {
        Bodygroups = {
            {7, 5}
        }
    },
    ["m16_stock_wood"] = {
        Bodygroups = {
            {7, 10}
        }
    },
    ["m16_stock_adar"] = {
        Bodygroups = {
            {7, 11},
            {8, 4}
        }
    },
    ["shortfs"] = {
        AttPosMods = {
            [9] = {
                Pos = Vector(0, -0.05, 17.9),
            },
            [10] = {
                Pos = Vector(0, -3, 17.9),
            }
        }
    }
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if !model then return end
    if wep:HasElement("m16lp") then
        model:SetBodygroup(6, wep:HasElement("shortfs") and 3 or 1)
    end
end

SWEP.Attachments = {
    {
        PrintName = "RECEIVER",
        DefaultName = "RAI RC83 Upper",
        DefaultCompactName = "RC83UPPER",
        DefaultName_TrueName = "Colt M16A2 Upper",
        DefaultCompactName_TrueName = "A2UPPER",
        Category = "m16_upper",
        Bone = "m16_parent",
        Pos = Vector(0, -1, 1.5),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "MOUNT",
        Category = "mount_m16ch",
        Bone = "m16_parent",
        ExcludeElements = {"flattop"},
        Pos = Vector(0, -3.15, 3.5),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "TUBE",
        DefaultName = "Buffer Tube",
        DefaultIcon = Material("arc9/def_att_icons/stock_ak.png"),
        Category = {"m16_stock", "bt_stock"},
        Installed = "m16_stock_solid",
        Bone = "m16_parent",
        Pos = Vector(0, 0, -5.5),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "BARREL",
        DefaultName = "RAI Ribbed 20\" Barrel",
        DefaultCompactName = "20\"RIB",
        DefaultName_TrueName = "Colt M16A2 20\" Barrel",
        DefaultCompactName_TrueName = "20\"A2",
        DefaultIcon = Material("arc9/def_att_icons/barrel.png"),
        Category = {"m16_barrel"},
        Bone = "m16_parent",
        Pos = Vector(0, -0.05, 10),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "MUZZLE",
        DefaultName = "Factory Flash Hider",
        Category = {"m16_muzzle", "muzzle", "suppressor"},
        Bone = "m16_parent",
        Installed = "muzzle_a2birdcage",
        Pos = Vector(0, -0.05, 29.75),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "MAG",
        DefaultName = "Standard 30 Round",
        DefaultIcon = Material("arc9/def_att_icons/mag_ar.png"),
        Category = "m16_mag",
        Bone = "m16_parent",
        Pos = Vector(0, 4, 6),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "AMMO",
        DefaultName = "Standard FMJ",
        DefaultIcon = Material("arc9/def_att_icons/ammotype.png"),
        Category = {"ammo", "ammo_assault"},
        Bone = "m16_parent",
        Pos = Vector(0, 6, 7),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "GRIP",
        DefaultName = "Factory Grip",
        DefaultIcon = Material("arc9/def_att_icons/grip_ar.png"),
        ExcludeElements = {"gripstock"},
        Category = "m16_grip",
        Bone = "m16_parent",
        Pos = Vector(0, 3, 1.5),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "CLAMP",
        Category = "mount_barrel",
        ExcludeElements = {"nomount"},
        Bone = "m16_parent",
        Pos = Vector(0, -0.05, 26),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "FS",
        DefaultIcon = Material("arc9/def_att_icons/fs.png"),
        Category = {"m16lp"},
        Bone = "m16_parent",
        ExcludeElements = {"fpw"},
        Pos = Vector(0, -3, 24),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "Cosmetic",
        DefaultCompactName = "Skin",
        DefaultIcon = Material("arc9/def_att_icons/skin.png"),
        Bone = "m16_parent",
        Pos = Vector(0, 5, -5),
        Ang = Angle(0, 0, 0),
        Category = "universal_camo",
    },
}