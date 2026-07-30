import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialFoundationCanonicalLaneLean

structure IonChannelDynamicsPackage where
  channelTypes : Type u
  gatingVariables : Type v
  activationKinetics : Type w
  inactivationKinetics : Type x
  conductanceModel : Prop
  kineticEquationsDefined : Prop
  gatingVariableEquationsClosed : Prop

structure IonChannelDynamicsEvidence (P : IonChannelDynamicsPackage) where
  conductanceModelClosed : P.conductanceModel
  kineticEquationsDefinedClosed : P.kineticEquationsDefined
  gatingVariableEquationsClosedClosed : P.gatingVariableEquationsClosed

def IonChannelDynamicsClosed (P : IonChannelDynamicsPackage) : Prop :=
  P.conductanceModel ∧ P.kineticEquationsDefined ∧ P.gatingVariableEquationsClosed

theorem ion_channel_dynamics_closed_from_evidence
    (P : IonChannelDynamicsPackage) (E : IonChannelDynamicsEvidence P) :
    IonChannelDynamicsClosed P := by
  exact And.intro E.conductanceModelClosed (And.intro E.kineticEquationsDefinedClosed E.gatingVariableEquationsClosedClosed)

end NeuroscienceMembranePotentialFoundationCanonicalLaneLean
end HautevilleHouse