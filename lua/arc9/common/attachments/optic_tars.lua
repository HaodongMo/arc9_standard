ATT.PrintName = "Trijicon TARS104 (3-15x50)"
ATT.CompactName = "TARS104"
ATT.Icon = Material("entities/arc9_att_optic_tars.png", "mips smooth")
ATT.Description = [[The Trijicon TARS (Tactical Advanced Rifle Scope) is a rugged precision optic for long range shooting. It carries the durability of the legendary ACOG line while offering greater long range magnification where it is needed.

Long range scope with variable magnification.]]
ATT.SortOrder = 7

ATT.Model = "models/weapons/arc9/atts/trijitars_newrt.mdl"
ATT.Folder = "SCOPE"

ATT.Category = "optic_picatinny"

// Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 15, -1.70395),
        Ang = Angle(0, 0, 0),
        Magnification = 1.15,
        ViewModelFOV = 15
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 1
-- ATT.RTScopeUseSubmatReticle = true -- real
-- ATT.RTScopeReticleSubmatIndex = 2 

ATT.RTScopeFOV = 1.5

ATT.RTScopeFOVMax = 1.5
ATT.RTScopeFOVMin = 15
ATT.RTScopeAdjustable = true
ATT.RTScopeAdjustmentLevels = 4

ATT.RTScopeReticle = Material("arc9/tars_only.png", "mips smooth")
ATT.RTScopeReticleScale = 1.1
ATT.RTScopeColorable = true

ATT.ScopeScreenRatio = 0.95
ATT.ScopeLength = 30

ATT.Scale = 1.25
ATT.ModelOffset = Vector(0, 0, -0.175)

ATT.SwayAdd = 0.2
ATT.FreeAimRadiusMultSights = 0.1
ATT.AimDownSightsTimeAdd = 0.16
ATT.SprintToFireTimeAdd = 0.12

ATT.Flare = true
ATT.FlareColor = Color(255, 255, 255)
ATT.FlareSize = 32