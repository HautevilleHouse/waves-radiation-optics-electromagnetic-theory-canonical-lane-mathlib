import HautevilleHouse.WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean.ElectromagneticFieldTensor

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

structure WaveEquationPackage (F : ElectromagneticFieldTensor) where
  waveOperator : Type u
  dAlembertianDefined : Prop
  sourceTerm : Prop
  retardedPotential : Prop
  dAlembertianDefinedTerm : dAlembertianDefined
  sourceTermTerm : sourceTerm
  retardedPotentialTerm : retardedPotential

structure WaveEquationEvidence {F : ElectromagneticFieldTensor} (W : WaveEquationPackage F) where
  dAlembertianDefinedClosed : W.dAlembertianDefined
  sourceTermClosed : W.sourceTerm
  retardedPotentialClosed : W.retardedPotential

def WaveEquationClosed {F : ElectromagneticFieldTensor} (W : WaveEquationPackage F) : Prop :=
  W.dAlembertianDefined ∧ W.sourceTerm ∧ W.retardedPotential

theorem wave_equation_closed_from_evidence
    {F : ElectromagneticFieldTensor} (W : WaveEquationPackage F) (E : WaveEquationEvidence W) :
    WaveEquationClosed W := by
  exact And.intro E.dAlembertianDefinedClosed (And.intro E.sourceTermClosed E.retardedPotentialClosed)

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
