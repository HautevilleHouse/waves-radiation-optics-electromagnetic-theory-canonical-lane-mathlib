import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

structure FarFieldRadiationZonePackage where
  fraunhoferCondition : Prop
  powerPattern : Prop
  sideLobeLevel : Prop
  beamWidth : Prop
  frontToBackRatio : Prop

structure FarFieldRadiationZoneEvidence (F : FarFieldRadiationZonePackage) where
  fraunhoferConditionClosed : F.fraunhoferCondition
  powerPatternClosed : F.powerPattern
  sideLobeLevelClosed : F.sideLobeLevel
  beamWidthClosed : F.beamWidth
  frontToBackRatioClosed : F.frontToBackRatio

def FarFieldRadiationZoneClosed (F : FarFieldRadiationZonePackage) : Prop :=
  F.fraunhoferCondition ∧ F.powerPattern ∧ F.sideLobeLevel ∧ F.beamWidth ∧ F.frontToBackRatio

theorem far_field_radiation_zone_closed_from_evidence (F : FarFieldRadiationZonePackage)
    (Ev : FarFieldRadiationZoneEvidence F) : FarFieldRadiationZoneClosed F :=
  And.intro Ev.fraunhoferConditionClosed
    (And.intro Ev.powerPatternClosed
      (And.intro Ev.sideLobeLevelClosed
        (And.intro Ev.beamWidthClosed Ev.frontToBackRatioClosed)))

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse