import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

structure ElectromagneticOpticsPackage where
  fresnelEquations : Prop
  snellsLaw : Prop
  brewsterAngle : Prop
  polarizationStates : Prop
  coherenceTheory : Prop
  diffractionTheory : Prop

structure ElectromagneticOpticsEvidence (O : ElectromagneticOpticsPackage) where
  fresnelEquationsClosed : O.fresnelEquations
  snellsLawClosed : O.snellsLaw
  brewsterAngleClosed : O.brewsterAngle
  polarizationStatesClosed : O.polarizationStates
  coherenceTheoryClosed : O.coherenceTheory
  diffractionTheoryClosed : O.diffractionTheory

def ElectromagneticOpticsClosed (O : ElectromagneticOpticsPackage) : Prop :=
  O.fresnelEquations ∧ O.snellsLaw ∧ O.brewsterAngle ∧ O.polarizationStates ∧ O.coherenceTheory ∧ O.diffractionTheory

theorem electromagnetic_optics_closed_from_evidence (O : ElectromagneticOpticsPackage) (E : ElectromagneticOpticsEvidence O) :
    ElectromagneticOpticsClosed O := by
  exact And.intro E.fresnelEquationsClosed
    (And.intro E.snellsLawClosed
      (And.intro E.brewsterAngleClosed
        (And.intro E.polarizationStatesClosed
          (And.intro E.coherenceTheoryClosed E.diffractionTheoryClosed))))

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
