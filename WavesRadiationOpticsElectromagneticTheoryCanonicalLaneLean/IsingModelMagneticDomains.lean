import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

structure IsingModelMagneticDomainsPackage where
  latticeStructure : Prop
  spinInteraction : Prop
  domainWallEnergy : Prop
  phaseTransition : Prop

structure IsingModelMagneticDomainsEvidence (P : IsingModelMagneticDomainsPackage) where
  latticeStructureClosed : P.latticeStructure
  spinInteractionClosed : P.spinInteraction
  domainWallEnergyClosed : P.domainWallEnergy
  phaseTransitionClosed : P.phaseTransition

def IsingModelMagneticDomainsClosed (P : IsingModelMagneticDomainsPackage) : Prop :=
  P.latticeStructure ∧ P.spinInteraction ∧ P.domainWallEnergy ∧ P.phaseTransition

theorem ising_model_magnetic_domains_closed_from_evidence
    (P : IsingModelMagneticDomainsPackage) (E : IsingModelMagneticDomainsEvidence P) :
    IsingModelMagneticDomainsClosed P := by
  exact And.intro E.latticeStructureClosed
    (And.intro E.spinInteractionClosed
      (And.intro E.domainWallEnergyClosed E.phaseTransitionClosed))

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
