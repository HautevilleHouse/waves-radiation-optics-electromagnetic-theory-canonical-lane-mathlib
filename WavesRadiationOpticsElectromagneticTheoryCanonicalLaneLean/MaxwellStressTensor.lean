import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

structure MaxwellStressTensorPackage where
  electromagneticFieldTensor : Prop
  energyMomentumConservation : Prop
  radiationPressure : Prop
  lorentzForceDensity : Prop
  poyntingVectorTheorems : Prop

structure MaxwellStressTensorEvidence (M : MaxwellStressTensorPackage) where
  electromagneticFieldTensorClosed : M.electromagneticFieldTensor
  energyMomentumConservationClosed : M.energyMomentumConservation
  radiationPressureClosed : M.radiationPressure
  lorentzForceDensityClosed : M.lorentzForceDensity
  poyntingVectorTheoremsClosed : M.poyntingVectorTheorems

def MaxwellStressTensorClosed (M : MaxwellStressTensorPackage) : Prop :=
  M.electromagneticFieldTensor ∧ M.energyMomentumConservation ∧ M.radiationPressure ∧
  M.lorentzForceDensity ∧ M.poyntingVectorTheorems

theorem maxwell_stress_tensor_closed_from_evidence (M : MaxwellStressTensorPackage)
    (Ev : MaxwellStressTensorEvidence M) : MaxwellStressTensorClosed M :=
  And.intro Ev.electromagneticFieldTensorClosed
    (And.intro Ev.energyMomentumConservationClosed
      (And.intro Ev.radiationPressureClosed
        (And.intro Ev.lorentzForceDensityClosed Ev.poyntingVectorTheoremsClosed)))

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse