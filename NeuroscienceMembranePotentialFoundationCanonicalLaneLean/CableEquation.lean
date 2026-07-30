import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialFoundationCanonicalLaneLean

structure CableEquationPackage where
  axialResistance : Prop
  membraneCapacitancePerLength : Prop
  membraneConductancePerLength : Prop
  partialDifferentialEquationDefined : Prop
  boundaryConditionsDefined : Prop
  cableEquationClosed : Prop

structure CableEquationEvidence (P : CableEquationPackage) where
  axialResistanceClosed : P.axialResistance
  membraneCapacitancePerLengthClosed : P.membraneCapacitancePerLength
  membraneConductancePerLengthClosed : P.membraneConductancePerLength
  partialDifferentialEquationDefinedClosed : P.partialDifferentialEquationDefined
  boundaryConditionsDefinedClosed : P.boundaryConditionsDefined

def CableEquationClosed (P : CableEquationPackage) : Prop :=
  P.axialResistance ∧ P.membraneCapacitancePerLength ∧ P.membraneConductancePerLength ∧
  P.partialDifferentialEquationDefined ∧ P.boundaryConditionsDefined

theorem cable_equation_closed_from_evidence
    (P : CableEquationPackage) (E : CableEquationEvidence P) :
    CableEquationClosed P := by
  exact And.intro E.axialResistanceClosed (And.intro E.membraneCapacitancePerLengthClosed
    (And.intro E.membraneConductancePerLengthClosed (And.intro E.partialDifferentialEquationDefinedClosed E.boundaryConditionsDefinedClosed)))

end NeuroscienceMembranePotentialFoundationCanonicalLaneLean
end HautevilleHouse