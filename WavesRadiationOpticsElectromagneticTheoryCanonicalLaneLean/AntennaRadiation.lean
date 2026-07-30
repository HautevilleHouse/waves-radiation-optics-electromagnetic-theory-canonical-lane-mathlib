import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

structure AntennaRadiationPackage where
  hertzianDipoleModel : Prop
  radiationPattern : Prop
  directivityDefined : Prop
  gainDefined : Prop
  inputImpedance : Prop
  mutualCoupling : Prop

structure AntennaRadiationEvidence (A : AntennaRadiationPackage) where
  hertzianDipoleModelClosed : A.hertzianDipoleModel
  radiationPatternClosed : A.radiationPattern
  directivityDefinedClosed : A.directivityDefined
  gainDefinedClosed : A.gainDefined
  inputImpedanceClosed : A.inputImpedance
  mutualCouplingClosed : A.mutualCoupling

def AntennaRadiationClosed (A : AntennaRadiationPackage) : Prop :=
  A.hertzianDipoleModel ∧ A.radiationPattern ∧ A.directivityDefined ∧ A.gainDefined ∧ A.inputImpedance ∧ A.mutualCoupling

theorem antenna_radiation_closed_from_evidence (A : AntennaRadiationPackage) (E : AntennaRadiationEvidence A) :
    AntennaRadiationClosed A := by
  exact And.intro E.hertzianDipoleModelClosed
    (And.intro E.radiationPatternClosed
      (And.intro E.directivityDefinedClosed
        (And.intro E.gainDefinedClosed
          (And.intro E.inputImpedanceClosed E.mutualCouplingClosed))))

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
