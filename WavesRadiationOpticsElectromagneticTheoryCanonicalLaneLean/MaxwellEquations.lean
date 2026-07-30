import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean

structure MaxwellEquationsPackage where
  gaussLaw : Prop
  gaussMagnetism : Prop
  faradayLaw : Prop
  ampereMaxwellLaw : Prop
  chargeConservation : Prop

structure MaxwellEquationsEvidence (P : MaxwellEquationsPackage) where
  gaussLawClosed : P.gaussLaw
  gaussMagnetismClosed : P.gaussMagnetism
  faradayLawClosed : P.faradayLaw
  ampereMaxwellLawClosed : P.ampereMaxwellLaw
  chargeConservationClosed : P.chargeConservation

def MaxwellEquationsClosed (P : MaxwellEquationsPackage) : Prop :=
  P.gaussLaw ∧ P.gaussMagnetism ∧ P.faradayLaw ∧ P.ampereMaxwellLaw ∧ P.chargeConservation

theorem maxwell_equations_closed_from_evidence (P : MaxwellEquationsPackage)
    (E : MaxwellEquationsEvidence P) : MaxwellEquationsClosed P := by
  exact And.intro E.gaussLawClosed
    (And.intro E.gaussMagnetismClosed
      (And.intro E.faradayLawClosed
        (And.intro E.ampereMaxwellLawClosed E.chargeConservationClosed)))

end WavesRadiationOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
