import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

structure RadiationAntennaPackage where
  nearField : Prop
  farField : Prop
  radiationPattern : Prop
  antennaImpedance : Prop
  directivityGain : Prop

structure RadiationAntennaEvidence (P : RadiationAntennaPackage) where
  nearFieldClosed : P.nearField
  farFieldClosed : P.farField
  radiationPatternClosed : P.radiationPattern
  antennaImpedanceClosed : P.antennaImpedance
  directivityGainClosed : P.directivityGain

def RadiationAntennaClosed (P : RadiationAntennaPackage) : Prop :=
  P.nearField ∧ P.farField ∧ P.radiationPattern ∧ P.antennaImpedance ∧ P.directivityGain

theorem radiation_antenna_closed_from_evidence (P : RadiationAntennaPackage)
    (E : RadiationAntennaEvidence P) : RadiationAntennaClosed P := by
  exact And.intro E.nearFieldClosed
    (And.intro E.farFieldClosed
      (And.intro E.radiationPatternClosed
        (And.intro E.antennaImpedanceClosed E.directivityGainClosed)))

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
