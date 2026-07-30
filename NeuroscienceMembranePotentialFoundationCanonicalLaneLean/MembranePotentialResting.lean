import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialFoundationCanonicalLaneLean

structure MembranePotentialRestingPackage where
  ionConcentrations : Prop
  nernstPotentials : Prop
  goldmanHodgkinKatzEquation : Prop
  restingPotentialDefined : Prop
  restingClosed : Prop

structure MembranePotentialRestingEvidence (P : MembranePotentialRestingPackage) where
  ionConcentrationsClosed : P.ionConcentrations
  nernstPotentialsClosed : P.nernstPotentials
  goldmanHodgkinKatzEquationClosed : P.goldmanHodgkinKatzEquation
  restingPotentialDefinedClosed : P.restingPotentialDefined

def MembranePotentialRestingClosed (P : MembranePotentialRestingPackage) : Prop :=
  P.ionConcentrations ∧ P.nernstPotentials ∧ P.goldmanHodgkinKatzEquation ∧ P.restingPotentialDefined

theorem membrane_potential_resting_closed_from_evidence
    (P : MembranePotentialRestingPackage) (E : MembranePotentialRestingEvidence P) :
    MembranePotentialRestingClosed P := by
  exact And.intro E.ionConcentrationsClosed (And.intro E.nernstPotentialsClosed
    (And.intro E.goldmanHodgkinKatzEquationClosed E.restingPotentialDefinedClosed))

end NeuroscienceMembranePotentialFoundationCanonicalLaneLean
end HautevilleHouse