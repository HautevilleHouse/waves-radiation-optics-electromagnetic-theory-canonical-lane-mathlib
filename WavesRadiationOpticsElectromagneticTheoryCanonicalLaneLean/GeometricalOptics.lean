import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

structure GeometricalOpticsPackage where
  eikonalEquation : Prop
  rayTracing : Prop
  snellsLaw : Prop
  fresnelEquations : Prop
  opticalPathLength : Prop
  causticFormation : Prop

structure GeometricalOpticsEvidence (G : GeometricalOpticsPackage) where
  eikonalEquationClosed : G.eikonalEquation
  rayTracingClosed : G.rayTracing
  snellsLawClosed : G.snellsLaw
  fresnelEquationsClosed : G.fresnelEquations
  opticalPathLengthClosed : G.opticalPathLength
  causticFormationClosed : G.causticFormation

def GeometricalOpticsClosed (G : GeometricalOpticsPackage) : Prop :=
  G.eikonalEquation ∧ G.rayTracing ∧ G.snellsLaw ∧ G.fresnelEquations ∧
  G.opticalPathLength ∧ G.causticFormation

theorem geometrical_optics_closed_from_evidence (G : GeometricalOpticsPackage) (E : GeometricalOpticsEvidence G) :
    GeometricalOpticsClosed G := by
  exact And.intro E.eikonalEquationClosed
    (And.intro E.rayTracingClosed
      (And.intro E.snellsLawClosed
        (And.intro E.fresnelEquationsClosed
          (And.intro E.opticalPathLengthClosed E.causticFormationClosed))))

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
