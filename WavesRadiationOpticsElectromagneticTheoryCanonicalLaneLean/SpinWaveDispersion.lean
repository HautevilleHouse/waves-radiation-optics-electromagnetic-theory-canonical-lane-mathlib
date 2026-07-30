import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

structure SpinWaveDispersionPackage where
  exchangeInteraction : Prop
  dipolarInteraction : Prop
  anisotropyField : Prop
  dispersionRelation : Prop

structure SpinWaveDispersionEvidence (P : SpinWaveDispersionPackage) where
  exchangeInteractionClosed : P.exchangeInteraction
  dipolarInteractionClosed : P.dipolarInteraction
  anisotropyFieldClosed : P.anisotropyField
  dispersionRelationClosed : P.dispersionRelation

def SpinWaveDispersionClosed (P : SpinWaveDispersionPackage) : Prop :=
  P.exchangeInteraction ∧ P.dipolarInteraction ∧ P.anisotropyField ∧ P.dispersionRelation

theorem spin_wave_dispersion_closed_from_evidence
    (P : SpinWaveDispersionPackage) (E : SpinWaveDispersionEvidence P) :
    SpinWaveDispersionClosed P := by
  exact And.intro E.exchangeInteractionClosed
    (And.intro E.dipolarInteractionClosed
      (And.intro E.anisotropyFieldClosed E.dispersionRelationClosed))

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
