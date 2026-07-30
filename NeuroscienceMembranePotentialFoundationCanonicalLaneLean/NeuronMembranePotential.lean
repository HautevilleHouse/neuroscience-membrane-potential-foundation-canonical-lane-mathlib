import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialFoundationCanonicalLaneLean

structure NeuronMembranePotentialPackage where
  membrane : Type
  ionChannels : Type
  capacitance : Type
  nernstPotential : Prop
  restingPotential : Prop
  ghkEquation : Prop

structure NeuronMembranePotentialEvidence (N : NeuronMembranePotentialPackage) where
  nernstPotentialClosed : N.nernstPotential
  restingPotentialClosed : N.restingPotential
  ghkEquationClosed : N.ghkEquation

def NeuronMembranePotentialClosed (N : NeuronMembranePotentialPackage) : Prop :=
  N.nernstPotential ∧ N.restingPotential ∧ N.ghkEquation

theorem neuron_membrane_potential_closed_from_evidence (N : NeuronMembranePotentialPackage)
    (E : NeuronMembranePotentialEvidence N) : NeuronMembranePotentialClosed N := by
  exact And.intro E.nernstPotentialClosed (And.intro E.restingPotentialClosed E.ghkEquationClosed)

end NeuroscienceMembranePotentialFoundationCanonicalLaneLean
end HautevilleHouse