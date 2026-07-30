import HautevilleHouse.WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean.WaveEquationPackage

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

structure GeometricOpticsPackage (F : ElectromagneticFieldTensor) (W : WaveEquationPackage F) where
  eikonalEquation : Prop
  rayPath : Prop
  intensityTransport : Prop
  phaseCoherence : Prop
  eikonalEquationTerm : eikonalEquation
  rayPathTerm : rayPath
  intensityTransportTerm : intensityTransport
  phaseCoherenceTerm : phaseCoherence

structure GeometricOpticsEvidence {F : ElectromagneticFieldTensor} {W : WaveEquationPackage F}
    (G : GeometricOpticsPackage F W) where
  eikonalEquationClosed : G.eikonalEquation
  rayPathClosed : G.rayPath
  intensityTransportClosed : G.intensityTransport
  phaseCoherenceClosed : G.phaseCoherence

def GeometricOpticsClosed {F : ElectromagneticFieldTensor} {W : WaveEquationPackage F}
    (G : GeometricOpticsPackage F W) : Prop :=
  G.eikonalEquation ∧ G.rayPath ∧ G.intensityTransport ∧ G.phaseCoherence

theorem geometric_optics_closed_from_evidence
    {F : ElectromagneticFieldTensor} {W : WaveEquationPackage F}
    (G : GeometricOpticsPackage F W) (E : GeometricOpticsEvidence G) :
    GeometricOpticsClosed G := by
  exact And.intro E.eikonalEquationClosed
    (And.intro E.rayPathClosed
      (And.intro E.intensityTransportClosed E.phaseCoherenceClosed))

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
