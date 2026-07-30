import canonicalLaneMathlib.Projection

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WavesRadiationOpticsElectromagneticTheoryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
