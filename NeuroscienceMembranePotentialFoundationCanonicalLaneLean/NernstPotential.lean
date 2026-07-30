import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialFoundationCanonicalLaneLean

structure NernstPotentialPackage where
  ionConcentration : Type u
  valence : Type v
  temperature : Type w
  equilibriumPotential : Type x
  nernstEquation : Prop
  concentrationGradient : Prop
  thermalEnergy : Prop

structure NernstPotentialEvidence (N : NernstPotentialPackage) where
  nernstEquationClosed : N.nernstEquation
  concentrationGradientClosed : N.concentrationGradient
  thermalEnergyClosed : N.thermalEnergy

def NernstPotentialClosed (N : NernstPotentialPackage) : Prop :=
  N.nernstEquation ∧ N.concentrationGradient ∧ N.thermalEnergy

theorem nernst_potential_closed_from_evidence (N : NernstPotentialPackage)
    (E : NernstPotentialEvidence N) : NernstPotentialClosed N := by
  exact And.intro E.nernstEquationClosed
    (And.intro E.concentrationGradientClosed E.thermalEnergyClosed)

end NeuroscienceMembranePotentialFoundationCanonicalLaneLean
end HautevilleHouse