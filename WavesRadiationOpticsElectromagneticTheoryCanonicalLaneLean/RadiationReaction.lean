import HautevilleHouse.WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean.ElectromagneticFieldTensor

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

structure RadiationReactionPackage (F : ElectromagneticFieldTensor) where
  liardWiechertPotential : Prop
  radiationField : Prop
  angularDistribution : Prop
  totalPowerRadiated : Prop
  liardWiechertPotentialTerm : liardWiechertPotential
  radiationFieldTerm : radiationField
  angularDistributionTerm : angularDistribution
  totalPowerRadiatedTerm : totalPowerRadiated

structure RadiationReactionEvidence {F : ElectromagneticFieldTensor}
    (R : RadiationReactionPackage F) where
  liardWiechertPotentialClosed : R.liardWiechertPotential
  radiationFieldClosed : R.radiationField
  angularDistributionClosed : R.angularDistribution
  totalPowerRadiatedClosed : R.totalPowerRadiated

def RadiationReactionClosed {F : ElectromagneticFieldTensor}
    (R : RadiationReactionPackage F) : Prop :=
  R.liardWiechertPotential ∧ R.radiationField ∧ R.angularDistribution ∧ R.totalPowerRadiated

theorem radiation_reaction_closed_from_evidence
    {F : ElectromagneticFieldTensor} (R : RadiationReactionPackage F)
    (E : RadiationReactionEvidence R) : RadiationReactionClosed R := by
  exact And.intro E.liardWiechertPotentialClosed
    (And.intro E.radiationFieldClosed
      (And.intro E.angularDistributionClosed E.totalPowerRadiatedClosed))

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
