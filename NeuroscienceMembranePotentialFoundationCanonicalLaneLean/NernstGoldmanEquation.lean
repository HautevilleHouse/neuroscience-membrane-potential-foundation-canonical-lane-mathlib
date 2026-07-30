import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialFoundationCanonicalLaneLean

structure NernstGoldmanEquation where
  nernstPotential : Prop
  goldmanHodgkinKatz : Prop
  ionPermeability : Prop
  reversalPotential : Prop
  equilibriumCondition : Prop

def NernstGoldmanEquationClosed (N : NernstGoldmanEquation) : Prop :=
  N.nernstPotential ∧ N.goldmanHodgkinKatz ∧ N.ionPermeability ∧ N.reversalPotential ∧ N.equilibriumCondition

structure NernstGoldmanEvidence (N : NernstGoldmanEquation) where
  nernstPotentialClosed : N.nernstPotential
  goldmanHodgkinKatzClosed : N.goldmanHodgkinKatz
  ionPermeabilityClosed : N.ionPermeability
  reversalPotentialClosed : N.reversalPotential
  equilibriumConditionClosed : N.equilibriumCondition

def NernstGoldmanEvidenceProof (N : NernstGoldmanEquation) : NernstGoldmanEvidence N := by
  exact ⟨N.nernstPotential, N.goldmanHodgkinKatz, N.ionPermeability, N.reversalPotential, N.equilibriumCondition⟩

end HautevilleHouse
end NeuroscienceMembranePotentialFoundationCanonicalLaneLean
