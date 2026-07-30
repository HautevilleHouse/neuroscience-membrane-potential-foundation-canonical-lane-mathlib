import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialFoundationCanonicalLaneLean

structure SynapticPlasticityHebbianPackage where
  weightUpdate : Type
  hebbianRule : Prop
  bcPLearningRule : Prop
  stdpRule : Prop
  homeostaticScaling : Prop

structure SynapticPlasticityHebbianEvidence (S : SynapticPlasticityHebbianPackage) where
  hebbianRuleClosed : S.hebbianRule
  bcPLearningRuleClosed : S.bcPLearningRule
  stdpRuleClosed : S.stdpRule
  homeostaticScalingClosed : S.homeostaticScaling

def SynapticPlasticityHebbianClosed (S : SynapticPlasticityHebbianPackage) : Prop :=
  S.hebbianRule ∧ S.bcPLearningRule ∧ S.stdpRule ∧ S.homeostaticScaling

theorem synaptic_plasticity_hebbian_closed_from_evidence (S : SynapticPlasticityHebbianPackage)
    (E : SynapticPlasticityHebbianEvidence S) : SynapticPlasticityHebbianClosed S := by
  exact And.intro E.hebbianRuleClosed (And.intro E.bcPLearningRuleClosed
    (And.intro E.stdpRuleClosed E.homeostaticScalingClosed))

end NeuroscienceMembranePotentialFoundationCanonicalLaneLean
end HautevilleHouse