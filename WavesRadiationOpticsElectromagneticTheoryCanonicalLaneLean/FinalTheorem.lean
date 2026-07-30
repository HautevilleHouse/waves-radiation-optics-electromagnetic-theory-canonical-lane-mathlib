import canonicalLaneMathlib.AdmissibleClass
import WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean.AdmissibleClass
import WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean.BridgeLemmas
import WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

def ConstrainedWavesRadiationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_waves_radiation_endgame (A : AdmissibleClass) :
    ConstrainedWavesRadiationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
