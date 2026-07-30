import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

structure ElectromagneticWaveEquationPackage where
  sourceFreeMaxwell : Prop
  planeWaveSolution : Prop
  polarizationState : Prop
  phasorForm : Prop
  boundaryConditions : Prop

structure ElectromagneticWaveEquationEvidence (E : ElectromagneticWaveEquationPackage) where
  sourceFreeMaxwellClosed : E.sourceFreeMaxwell
  planeWaveSolutionClosed : E.planeWaveSolution
  polarizationStateClosed : E.polarizationState
  phasorFormClosed : E.phasorForm
  boundaryConditionsClosed : E.boundaryConditions

def ElectromagneticWaveEquationClosed (E : ElectromagneticWaveEquationPackage) : Prop :=
  E.sourceFreeMaxwell ∧ E.planeWaveSolution ∧ E.polarizationState ∧ E.phasorForm ∧ E.boundaryConditions

theorem electromagnetic_wave_equation_closed_from_evidence (E : ElectromagneticWaveEquationPackage)
    (Ev : ElectromagneticWaveEquationEvidence E) : ElectromagneticWaveEquationClosed E :=
  And.intro Ev.sourceFreeMaxwellClosed
    (And.intro Ev.planeWaveSolutionClosed
      (And.intro Ev.polarizationStateClosed
        (And.intro Ev.phasorFormClosed Ev.boundaryConditionsClosed)))

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse