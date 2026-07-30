import Mathlib

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

structure ElectromagneticFieldTensor where
  spacetimeType : Type u
  topologicalSpacetime : TopologicalSpace spacetimeType
  smoothFourManifold : Prop
  faradayTwoForm : Type v
  hodgeStarFaraday : Type w
  maxwellEquations : Prop
  faradayClosed : Prop
  hodgeStarClosed : Prop
  maxwellEquationsTerm : maxwellEquations
  faradayClosedTerm : faradayClosed
  hodgeStarClosedTerm : hodgeStarClosed

structure ElectromagneticFieldTensorEvidence (F : ElectromagneticFieldTensor) where
  faradayClosedEvidence : F.faradayClosed
  hodgeStarClosedEvidence : F.hodgeStarClosed
  maxwellEquationsEvidence : F.maxwellEquations

def ElectromagneticFieldTensorClosed (F : ElectromagneticFieldTensor) : Prop :=
  F.faradayClosed ∧ F.hodgeStarClosed ∧ F.maxwellEquations

theorem electromagnetic_field_tensor_closed_from_evidence
    (F : ElectromagneticFieldTensor) (E : ElectromagneticFieldTensorEvidence F) :
    ElectromagneticFieldTensorClosed F := by
  exact And.intro E.faradayClosedEvidence (And.intro E.hodgeStarClosedEvidence E.maxwellEquationsEvidence)

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
