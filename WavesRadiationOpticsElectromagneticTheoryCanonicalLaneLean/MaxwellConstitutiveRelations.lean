import HautevilleHouse.WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean.ElectromagneticFieldTensor

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

structure MaxwellConstitutiveRelationsPackage (F : ElectromagneticFieldTensor) where
  polarizationField : Prop
  magnetizationField : Prop
  displacementField : Prop
  magneticFieldStrength : Prop
  constitutiveEquations : Prop
  polarizationFieldTerm : polarizationField
  magnetizationFieldTerm : magnetizationField
  displacementFieldTerm : displacementField
  magneticFieldStrengthTerm : magneticFieldStrength
  constitutiveEquationsTerm : constitutiveEquations

structure MaxwellConstitutiveRelationsEvidence {F : ElectromagneticFieldTensor}
    (M : MaxwellConstitutiveRelationsPackage F) where
  polarizationFieldClosed : M.polarizationField
  magnetizationFieldClosed : M.magnetizationField
  displacementFieldClosed : M.displacementField
  magneticFieldStrengthClosed : M.magneticFieldStrength
  constitutiveEquationsClosed : M.constitutiveEquations

def MaxwellConstitutiveRelationsClosed {F : ElectromagneticFieldTensor}
    (M : MaxwellConstitutiveRelationsPackage F) : Prop :=
  M.polarizationField ∧ M.magnetizationField ∧ M.displacementField ∧
  M.magneticFieldStrength ∧ M.constitutiveEquations

theorem maxwell_constitutive_relations_closed_from_evidence
    {F : ElectromagneticFieldTensor} (M : MaxwellConstitutiveRelationsPackage F)
    (E : MaxwellConstitutiveRelationsEvidence M) : MaxwellConstitutiveRelationsClosed M := by
  exact And.intro E.polarizationFieldClosed
    (And.intro E.magnetizationFieldClosed
      (And.intro E.displacementFieldClosed
        (And.intro E.magneticFieldStrengthClosed E.constitutiveEquationsClosed)))

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
