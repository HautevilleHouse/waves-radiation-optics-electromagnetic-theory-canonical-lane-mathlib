import HautevilleHouse.WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean.WaveEquationPackage

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

structure OpticalTheoremPackage (F : ElectromagneticFieldTensor) (W : WaveEquationPackage F) where
  scatteringAmplitude : Type u
  forwardScattering : Prop
  totalCrossSection : Prop
  extinctionTheorem : Prop
  opticalTheoremStatement : Prop
  scatteringAmplitudeTerm : scatteringAmplitude
  forwardScatteringTerm : forwardScattering
  totalCrossSectionTerm : totalCrossSection
  extinctionTheoremTerm : extinctionTheorem
  opticalTheoremStatementTerm : opticalTheoremStatement

structure OpticalTheoremEvidence {F : ElectromagneticFieldTensor} {W : WaveEquationPackage F}
    (O : OpticalTheoremPackage F W) where
  forwardScatteringClosed : O.forwardScattering
  totalCrossSectionClosed : O.totalCrossSection
  extinctionTheoremClosed : O.extinctionTheorem
  opticalTheoremStatementClosed : O.opticalTheoremStatement

def OpticalTheoremClosed {F : ElectromagneticFieldTensor} {W : WaveEquationPackage F}
    (O : OpticalTheoremPackage F W) : Prop :=
  O.forwardScattering ∧ O.totalCrossSection ∧ O.extinctionTheorem ∧ O.opticalTheoremStatement

theorem optical_theorem_closed_from_evidence
    {F : ElectromagneticFieldTensor} {W : WaveEquationPackage F}
    (O : OpticalTheoremPackage F W) (E : OpticalTheoremEvidence O) :
    OpticalTheoremClosed O := by
  exact And.intro E.forwardScatteringClosed
    (And.intro E.totalCrossSectionClosed
      (And.intro E.extinctionTheoremClosed E.opticalTheoremStatementClosed))

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
