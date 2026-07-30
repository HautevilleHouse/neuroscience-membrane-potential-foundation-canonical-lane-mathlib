import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialFoundationCanonicalLaneLean

structure CableTheoryPassiveMembrane where
  axialResistance : Prop
  membraneResistance : Prop
  membraneCapacitance : Prop
  spaceConstant : Prop
  timeConstant : Prop
  steadyStateDecay : Prop

def CableTheoryPassiveMembraneClosed (C : CableTheoryPassiveMembrane) : Prop :=
  C.axialResistance ∧ C.membraneResistance ∧ C.membraneCapacitance ∧
  C.spaceConstant ∧ C.timeConstant ∧ C.steadyStateDecay

structure CableTheoryEvidence (C : CableTheoryPassiveMembrane) where
  axialResistanceClosed : C.axialResistance
  membraneResistanceClosed : C.membraneResistance
  membraneCapacitanceClosed : C.membraneCapacitance
  spaceConstantClosed : C.spaceConstant
  timeConstantClosed : C.timeConstant
  steadyStateDecayClosed : C.steadyStateDecay

def CableTheoryEvidenceProof (C : CableTheoryPassiveMembrane) : CableTheoryEvidence C := by
  exact ⟨C.axialResistance, C.membraneResistance, C.membraneCapacitance,
          C.spaceConstant, C.timeConstant, C.steadyStateDecay⟩

end HautevilleHouse
end NeuroscienceMembranePotentialFoundationCanonicalLaneLean
