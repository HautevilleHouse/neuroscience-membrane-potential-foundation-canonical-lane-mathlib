import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialFoundationCanonicalLaneLean

structure HodgkinHuxleyModelPackage where
  capacitance : Float
  naChannel : IonChannelFamily
  kChannel : IonChannelFamily
  leakChannel : IonChannelFamily
  membraneCurrentEquation : Prop
  gatingDynamics : Prop
  membraneCurrentEquationClosed : membraneCurrentEquation
  gatingDynamicsClosed : gatingDynamics

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyModelPackage) where
  capacitanceMeasured : Prop
  conductanceModelsValidated : Prop
  capacitanceMeasuredClosed : H.capacitanceMeasured
  conductanceModelsValidatedClosed : H.conductanceModelsValidated

def HodgkinHuxleyModelClosed (H : HodgkinHuxleyModelPackage) : Prop :=
  H.membraneCurrentEquation ∧ H.gatingDynamics ∧
  H.capacitanceMeasured ∧ H.conductanceModelsValidated

theorem hodgkin_huxley_model_closed_from_evidence
    (H : HodgkinHuxleyModelPackage) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyModelClosed H := by
  exact And.intro H.membraneCurrentEquationClosed
    (And.intro H.gatingDynamicsClosed
      (And.intro E.capacitanceMeasuredClosed E.conductanceModelsValidatedClosed))

end NeuroscienceMembranePotentialFoundationCanonicalLaneLean
end HautevilleHouse