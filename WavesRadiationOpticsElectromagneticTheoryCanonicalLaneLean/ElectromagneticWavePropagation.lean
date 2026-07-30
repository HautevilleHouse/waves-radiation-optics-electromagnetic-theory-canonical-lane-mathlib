import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

structure ElectromagneticWavePackage where
  waveEquation : Prop
  dispersionRelation : Prop
  polarizationStates : Prop
  energyFluxDensity : Prop
  momentumDensity : Prop

structure ElectromagneticWaveEvidence (P : ElectromagneticWavePackage) where
  waveEquationClosed : P.waveEquation
  dispersionRelationClosed : P.dispersionRelation
  polarizationStatesClosed : P.polarizationStates
  energyFluxDensityClosed : P.energyFluxDensity
  momentumDensityClosed : P.momentumDensity

def ElectromagneticWaveClosed (P : ElectromagneticWavePackage) : Prop :=
  P.waveEquation ∧ P.dispersionRelation ∧ P.polarizationStates ∧ P.energyFluxDensity ∧ P.momentumDensity

theorem electromagnetic_wave_closed_from_evidence (P : ElectromagneticWavePackage)
    (E : ElectromagneticWaveEvidence P) : ElectromagneticWaveClosed P := by
  exact And.intro E.waveEquationClosed
    (And.intro E.dispersionRelationClosed
      (And.intro E.polarizationStatesClosed
        (And.intro E.energyFluxDensityClosed E.momentumDensityClosed)))

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
