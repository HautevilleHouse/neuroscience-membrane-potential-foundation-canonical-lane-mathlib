import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialFoundationCanonicalLaneLean

structure HebbianPlasticityPackage where
  synapticWeightDynamics : Type u
  learningRule : Prop
  correlationDetection : Prop
  weightChangeEquationDefined : Prop
  plasticityClosed : Prop

structure HebbianPlasticityEvidence (P : HebbianPlasticityPackage) where
  learningRuleClosed : P.learningRule
  correlationDetectionClosed : P.correlationDetection
  weightChangeEquationDefinedClosed : P.weightChangeEquationDefined

def HebbianPlasticityClosed (P : HebbianPlasticityPackage) : Prop :=
  P.learningRule ∧ P.correlationDetection ∧ P.weightChangeEquationDefined

theorem hebbian_plasticity_closed_from_evidence
    (P : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence P) :
    HebbianPlasticityClosed P := by
  exact And.intro E.learningRuleClosed (And.intro E.correlationDetectionClosed E.weightChangeEquationDefinedClosed)

end NeuroscienceMembranePotentialFoundationCanonicalLaneLean
end HautevilleHouse