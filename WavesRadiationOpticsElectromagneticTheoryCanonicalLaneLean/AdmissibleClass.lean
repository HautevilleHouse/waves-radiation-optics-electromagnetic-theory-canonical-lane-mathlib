import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

structure WaveRadiationAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  electromagneticStructure : Prop
  maxwellValidated : Prop
  conclusion : electromagneticStructure ∧ maxwellValidated

structure AdmissibleClass where
  object : WaveRadiationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.electromagneticStructure ∧ A.object.maxwellValidated) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
