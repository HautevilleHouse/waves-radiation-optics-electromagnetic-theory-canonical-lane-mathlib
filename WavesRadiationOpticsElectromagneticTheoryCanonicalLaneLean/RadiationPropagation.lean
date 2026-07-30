import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

structure RadiationPropagationPackage where
  poyntingVectorDefined : Prop
  energyFlux : Prop
  momentumDensity : Prop
  planeWavePropagation : Prop
  sphericalWavePropagation : Prop
  farFieldApproximation : Prop

structure RadiationPropagationEvidence (R : RadiationPropagationPackage) where
  poyntingVectorDefinedClosed : R.poyntingVectorDefined
  energyFluxClosed : R.energyFlux
  momentumDensityClosed : R.momentumDensity
  planeWavePropagationClosed : R.planeWavePropagation
  sphericalWavePropagationClosed : R.sphericalWavePropagation
  farFieldApproximationClosed : R.farFieldApproximation

def RadiationPropagationClosed (R : RadiationPropagationPackage) : Prop :=
  R.poyntingVectorDefined ∧ R.energyFlux ∧ R.momentumDensity ∧
  R.planeWavePropagation ∧ R.sphericalWavePropagation ∧ R.farFieldApproximation

theorem radiation_propagation_closed_from_evidence (R : RadiationPropagationPackage) (E : RadiationPropagationEvidence R) :
    RadiationPropagationClosed R := by
  exact And.intro E.poyntingVectorDefinedClosed
    (And.intro E.energyFluxClosed
      (And.intro E.momentumDensityClosed
        (And.intro E.planeWavePropagationClosed
          (And.intro E.sphericalWavePropagationClosed E.farFieldApproximationClosed))))

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
