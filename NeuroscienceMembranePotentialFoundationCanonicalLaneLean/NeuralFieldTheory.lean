import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialFoundationCanonicalLaneLean

structure NeuralFieldTheoryPackage where
  firingRateField : Type
  synapticKernel : Type
  amariEquation : Prop
  stationaryPatterns : Prop
  travelingWaves : Prop

structure NeuralFieldTheoryEvidence (N : NeuralFieldTheoryPackage) where
  amariEquationClosed : N.amariEquation
  stationaryPatternsClosed : N.stationaryPatterns
  travelingWavesClosed : N.travelingWaves

def NeuralFieldTheoryClosed (N : NeuralFieldTheoryPackage) : Prop :=
  N.amariEquation ∧ N.stationaryPatterns ∧ N.travelingWaves

theorem neural_field_theory_closed_from_evidence (N : NeuralFieldTheoryPackage)
    (E : NeuralFieldTheoryEvidence N) : NeuralFieldTheoryClosed N := by
  exact And.intro E.amariEquationClosed (And.intro E.stationaryPatternsClosed E.travelingWavesClosed)

end NeuroscienceMembranePotentialFoundationCanonicalLaneLean
end HautevilleHouse