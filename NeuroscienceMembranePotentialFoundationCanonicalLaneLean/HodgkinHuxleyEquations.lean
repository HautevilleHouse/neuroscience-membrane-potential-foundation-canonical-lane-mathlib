import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialFoundationCanonicalLaneLean

structure HodgkinHuxleyPackage where
  sodiumConductance : Prop
  potassiumConductance : Prop
  leakConductance : Prop
  gatingVariables : Prop
  rateConstants : Prop
  actionPotential : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  sodiumConductanceClosed : H.sodiumConductance
  potassiumConductanceClosed : H.potassiumConductance
  leakConductanceClosed : H.leakConductance
  gatingVariablesClosed : H.gatingVariables
  rateConstantsClosed : H.rateConstants
  actionPotentialClosed : H.actionPotential

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.sodiumConductance ∧ H.potassiumConductance ∧ H.leakConductance ∧
  H.gatingVariables ∧ H.rateConstants ∧ H.actionPotential

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.sodiumConductanceClosed
    (And.intro E.potassiumConductanceClosed
      (And.intro E.leakConductanceClosed
        (And.intro E.gatingVariablesClosed
          (And.intro E.rateConstantsClosed E.actionPotentialClosed))))

end NeuroscienceMembranePotentialFoundationCanonicalLaneLean
end HautevilleHouse