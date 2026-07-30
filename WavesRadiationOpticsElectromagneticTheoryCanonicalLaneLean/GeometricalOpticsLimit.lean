import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

structure GeometricalOpticsLimitPackage where
  wavelengthShort : Prop
  rayEquation : Prop
  eikonalEquation : Prop
  intensityTransport : Prop
  causticFormation : Prop

structure GeometricalOpticsLimitEvidence (G : GeometricalOpticsLimitPackage) where
  wavelengthShortClosed : G.wavelengthShort
  rayEquationClosed : G.rayEquation
  eikonalEquationClosed : G.eikonalEquation
  intensityTransportClosed : G.intensityTransport
  causticFormationClosed : G.causticFormation

def GeometricalOpticsLimitClosed (G : GeometricalOpticsLimitPackage) : Prop :=
  G.wavelengthShort ∧ G.rayEquation ∧ G.eikonalEquation ∧ G.intensityTransport ∧ G.causticFormation

theorem geometrical_optics_limit_closed_from_evidence (G : GeometricalOpticsLimitPackage)
    (Ev : GeometricalOpticsLimitEvidence G) : GeometricalOpticsLimitClosed G :=
  And.intro Ev.wavelengthShortClosed
    (And.intro Ev.rayEquationClosed
      (And.intro Ev.eikonalEquationClosed
        (And.intro Ev.intensityTransportClosed Ev.causticFormationClosed)))

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse