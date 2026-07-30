import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

structure WaveEquationPDEPackage where
  waveOperatorDefined : Prop
  linearMediumAssumption : Prop
  dispersionRelation : Prop
  initialBoundaryConditions : Prop
  monochromaticSolution : Prop
  planeWaveSolution : Prop

structure WaveEquationPDEEvidence (W : WaveEquationPDEPackage) where
  waveOperatorDefinedClosed : W.waveOperatorDefined
  linearMediumAssumptionClosed : W.linearMediumAssumption
  dispersionRelationClosed : W.dispersionRelation
  initialBoundaryConditionsClosed : W.initialBoundaryConditions
  monochromaticSolutionClosed : W.monochromaticSolution
  planeWaveSolutionClosed : W.planeWaveSolution

def WaveEquationPDEClosed (W : WaveEquationPDEPackage) : Prop :=
  W.waveOperatorDefined ∧ W.linearMediumAssumption ∧ W.dispersionRelation ∧
  W.initialBoundaryConditions ∧ W.monochromaticSolution ∧ W.planeWaveSolution

theorem wave_equation_pde_closed_from_evidence (W : WaveEquationPDEPackage) (E : WaveEquationPDEEvidence W) :
    WaveEquationPDEClosed W := by
  exact And.intro E.waveOperatorDefinedClosed
    (And.intro E.linearMediumAssumptionClosed
      (And.intro E.dispersionRelationClosed
        (And.intro E.initialBoundaryConditionsClosed
          (And.intro E.monochromaticSolutionClosed E.planeWaveSolutionClosed))))

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
