import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialCanonicalLaneLean

structure MembraneCurrentContributions where
  sodiumCurrent : Prop
  potassiumCurrent : Prop
  leakCurrent : Prop
  stimulusCurrent : Prop

def totalMembraneCurrent (C : MembraneCurrentContributions) : Prop :=
  C.sodiumCurrent ∧ C.potassiumCurrent ∧ C.leakCurrent ∧ C.stimulusCurrent

structure MembranePotentialODEPackage where
  capacitiveCurrent : Prop
  currentConservation : Prop
  voltageDerivative : Prop
  initialCondition : Prop
  capacitiveCurrentClosed : capacitiveCurrent
  currentConservationClosed : currentConservation
  voltageDerivativeClosed : voltageDerivative
  initialConditionClosed : initialCondition

def MembranePotentialODEClosed (M : MembranePotentialODEPackage) : Prop :=
  M.capacitiveCurrent ∧ M.currentConservation ∧ M.voltageDerivative ∧ M.initialCondition

theorem membrane_potential_ode_closed (M : MembranePotentialODEPackage) :
    MembranePotentialODEClosed M :=
  by
    exact And.intro M.capacitiveCurrentClosed (And.intro M.currentConservationClosed
      (And.intro M.voltageDerivativeClosed M.initialConditionClosed))

end NeuroscienceMembranePotentialCanonicalLaneLean
end HautevilleHouse