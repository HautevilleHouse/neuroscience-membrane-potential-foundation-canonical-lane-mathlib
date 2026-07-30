import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialFoundationCanonicalLaneLean

structure ActionPotentialPropagationPackage where
  axonGeometry : Prop
  myelination : Prop
  saltatoryConduction : Prop
  velocity : Prop
  refractoryPeriod : Prop
  propagationFidelity : Prop

structure ActionPotentialPropagationEvidence (A : ActionPotentialPropagationPackage) where
  axonGeometryClosed : A.axonGeometry
  myelinationClosed : A.myelination
  saltatoryConductionClosed : A.saltatoryConduction
  velocityClosed : A.velocity
  refractoryPeriodClosed : A.refractoryPeriod
  propagationFidelityClosed : A.propagationFidelity

def ActionPotentialPropagationClosed (A : ActionPotentialPropagationPackage) : Prop :=
  A.axonGeometry ∧ A.myelination ∧ A.saltatoryConduction ∧
  A.velocity ∧ A.refractoryPeriod ∧ A.propagationFidelity

theorem action_potential_propagation_closed_from_evidence
    (A : ActionPotentialPropagationPackage)
    (E : ActionPotentialPropagationEvidence A) : ActionPotentialPropagationClosed A := by
  exact And.intro E.axonGeometryClosed
    (And.intro E.myelinationClosed
      (And.intro E.saltatoryConductionClosed
        (And.intro E.velocityClosed
          (And.intro E.refractoryPeriodClosed E.propagationFidelityClosed))))

end NeuroscienceMembranePotentialFoundationCanonicalLaneLean
end HautevilleHouse