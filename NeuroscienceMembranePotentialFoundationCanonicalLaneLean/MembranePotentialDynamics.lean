import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialFoundationCanonicalLaneLean

structure MembranePotentialPackage where
  ionChannels : Type u
  conductances : Type v
  capacitance : Type w
  voltage : Type x
  current : Type y
  capacitanceDefined : Prop
  voltageEquilibrium : Prop
  currentBalance : Prop

structure MembranePotentialEvidence (M : MembranePotentialPackage) where
  capacitanceDefinedClosed : M.capacitanceDefined
  voltageEquilibriumClosed : M.voltageEquilibrium
  currentBalanceClosed : M.currentBalance

def MembranePotentialClosed (M : MembranePotentialPackage) : Prop :=
  M.capacitanceDefined ∧ M.voltageEquilibrium ∧ M.currentBalance

theorem membrane_potential_closed_from_evidence (M : MembranePotentialPackage)
    (E : MembranePotentialEvidence M) : MembranePotentialClosed M := by
  exact And.intro E.capacitanceDefinedClosed
    (And.intro E.voltageEquilibriumClosed E.currentBalanceClosed)

end NeuroscienceMembranePotentialFoundationCanonicalLaneLean
end HautevilleHouse