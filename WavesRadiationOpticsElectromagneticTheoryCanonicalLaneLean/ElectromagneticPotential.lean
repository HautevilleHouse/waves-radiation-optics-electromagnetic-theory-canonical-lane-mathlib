import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

structure ElectromagneticPotentialPackage where
  scalarPotentialDefined : Prop
  vectorPotentialDefined : Prop
  gaugeInvariance : Prop
  coulombGauge : Prop
  lorenzGauge : Prop
  potentialToFields : Prop

structure ElectromagneticPotentialEvidence (P : ElectromagneticPotentialPackage) where
  scalarPotentialDefinedClosed : P.scalarPotentialDefined
  vectorPotentialDefinedClosed : P.vectorPotentialDefined
  gaugeInvarianceClosed : P.gaugeInvariance
  coulombGaugeClosed : P.coulombGauge
  lorenzGaugeClosed : P.lorenzGauge
  potentialToFieldsClosed : P.potentialToFields

def ElectromagneticPotentialClosed (P : ElectromagneticPotentialPackage) : Prop :=
  P.scalarPotentialDefined ∧ P.vectorPotentialDefined ∧ P.gaugeInvariance ∧
  P.coulombGauge ∧ P.lorenzGauge ∧ P.potentialToFields

theorem electromagnetic_potential_closed_from_evidence (P : ElectromagneticPotentialPackage) (E : ElectromagneticPotentialEvidence P) :
    ElectromagneticPotentialClosed P := by
  exact And.intro E.scalarPotentialDefinedClosed
    (And.intro E.vectorPotentialDefinedClosed
      (And.intro E.gaugeInvarianceClosed
        (And.intro E.coulombGaugeClosed
          (And.intro E.lorenzGaugeClosed E.potentialToFieldsClosed))))

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
