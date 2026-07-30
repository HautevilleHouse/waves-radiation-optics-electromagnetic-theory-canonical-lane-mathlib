import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

structure SnellLawRefractionPackage where
  incidentAngle : Prop
  refractedAngle : Prop
  criticalAngle : Prop
  totalInternalReflection : Prop
  fresnelCoefficients : Prop

structure SnellLawRefractionEvidence (S : SnellLawRefractionPackage) where
  incidentAngleClosed : S.incidentAngle
  refractedAngleClosed : S.refractedAngle
  criticalAngleClosed : S.criticalAngle
  totalInternalReflectionClosed : S.totalInternalReflection
  fresnelCoefficientsClosed : S.fresnelCoefficients

def SnellLawRefractionClosed (S : SnellLawRefractionPackage) : Prop :=
  S.incidentAngle ∧ S.refractedAngle ∧ S.criticalAngle ∧ S.totalInternalReflection ∧ S.fresnelCoefficients

theorem snell_law_refraction_closed_from_evidence (S : SnellLawRefractionPackage)
    (Ev : SnellLawRefractionEvidence S) : SnellLawRefractionClosed S :=
  And.intro Ev.incidentAngleClosed
    (And.intro Ev.refractedAngleClosed
      (And.intro Ev.criticalAngleClosed
        (And.intro Ev.totalInternalReflectionClosed Ev.fresnelCoefficientsClosed)))

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse