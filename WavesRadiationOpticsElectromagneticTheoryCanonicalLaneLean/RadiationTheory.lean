import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

structure RadiationPackage where
  retardedPotentials : Prop
  dipoleRadiation : Prop
  multipoleExpansion : Prop
  larmorFormula : Prop
  radiationReaction : Prop
  antennaPatterns : Prop

structure RadiationEvidence (R : RadiationPackage) where
  retardedPotentialsClosed : R.retardedPotentials
  dipoleRadiationClosed : R.dipoleRadiation
  multipoleExpansionClosed : R.multipoleExpansion
  larmorFormulaClosed : R.larmorFormula
  radiationReactionClosed : R.radiationReaction
  antennaPatternsClosed : R.antennaPatterns

def RadiationClosed (R : RadiationPackage) : Prop :=
  R.retardedPotentials ∧ R.dipoleRadiation ∧ R.multipoleExpansion ∧ R.larmorFormula ∧
  R.radiationReaction ∧ R.antennaPatterns

theorem radiation_closed_from_evidence (R : RadiationPackage) (E : RadiationEvidence R) :
    RadiationClosed R := by
  exact And.intro E.retardedPotentialsClosed
    (And.intro E.dipoleRadiationClosed
      (And.intro E.multipoleExpansionClosed
        (And.intro E.larmorFormulaClosed
          (And.intro E.radiationReactionClosed E.antennaPatternsClosed))))

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
