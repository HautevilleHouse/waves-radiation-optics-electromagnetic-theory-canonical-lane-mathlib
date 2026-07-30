import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

structure AntennaRadiationPatternPackage where
  currentDistribution : Type u
  farFieldPattern : Type v
  gainFunction : Type w
  directivity : Prop
  inputImpedance : Prop
  polarizationEfficiency : Prop

structure AntennaRadiationPatternEvidence (A : AntennaRadiationPatternPackage) where
  directivityClosed : A.directivity
  inputImpedanceClosed : A.inputImpedance
  polarizationEfficiencyClosed : A.polarizationEfficiency

def AntennaRadiationPatternClosed (A : AntennaRadiationPatternPackage) : Prop :=
  A.directivity ∧ A.inputImpedance ∧ A.polarizationEfficiency

theorem antenna_radiation_pattern_closed_from_evidence (A : AntennaRadiationPatternPackage)
    (E : AntennaRadiationPatternEvidence A) : AntennaRadiationPatternClosed A :=
  And.intro E.directivityClosed (And.intro E.inputImpedanceClosed E.polarizationEfficiencyClosed)

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse