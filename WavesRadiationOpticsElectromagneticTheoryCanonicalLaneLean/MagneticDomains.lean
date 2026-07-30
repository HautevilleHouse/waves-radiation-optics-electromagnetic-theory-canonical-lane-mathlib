import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

structure MagneticDomainsPackage where
  domainFormation : Prop
  domainWalls : Prop
  hystheresisLoop : Prop
  anisotropyEnergy : Prop
  exchangeInteraction : Prop
  zeemanEnergy : Prop

structure MagneticDomainsEvidence (M : MagneticDomainsPackage) where
  domainFormationClosed : M.domainFormation
  domainWallsClosed : M.domainWalls
  hystheresisLoopClosed : M.hystheresisLoop
  anisotropyEnergyClosed : M.anisotropyEnergy
  exchangeInteractionClosed : M.exchangeInteraction
  zeemanEnergyClosed : M.zeemanEnergy

def MagneticDomainsClosed (M : MagneticDomainsPackage) : Prop :=
  M.domainFormation ∧ M.domainWalls ∧ M.hystheresisLoop ∧ M.anisotropyEnergy ∧
  M.exchangeInteraction ∧ M.zeemanEnergy

theorem magnetic_domains_closed_from_evidence (M : MagneticDomainsPackage) (E : MagneticDomainsEvidence M) :
    MagneticDomainsClosed M := by
  exact And.intro E.domainFormationClosed
    (And.intro E.domainWallsClosed
      (And.intro E.hystheresisLoopClosed
        (And.intro E.anisotropyEnergyClosed
          (And.intro E.exchangeInteractionClosed E.zeemanEnergyClosed))))

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
