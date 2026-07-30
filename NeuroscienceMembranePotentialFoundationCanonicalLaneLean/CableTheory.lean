import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialFoundationCanonicalLaneLean

structure CableTheoryPackage where
  dendriticTree : Type
  axialResistance : Type
  membraneCapacitance : Type
  cableEquation : Prop
  electrotonicLength : Prop
  passivePropagation : Prop

structure CableTheoryEvidence (C : CableTheoryPackage) where
  cableEquationClosed : C.cableEquation
  electrotonicLengthClosed : C.electrotonicLength
  passivePropagationClosed : C.passivePropagation

def CableTheoryClosed (C : CableTheoryPackage) : Prop :=
  C.cableEquation ∧ C.electrotonicLength ∧ C.passivePropagation

theorem cable_theory_closed_from_evidence (C : CableTheoryPackage)
    (E : CableTheoryEvidence C) : CableTheoryClosed C := by
  exact And.intro E.cableEquationClosed (And.intro E.electrotonicLengthClosed E.passivePropagationClosed)

end NeuroscienceMembranePotentialFoundationCanonicalLaneLean
end HautevilleHouse