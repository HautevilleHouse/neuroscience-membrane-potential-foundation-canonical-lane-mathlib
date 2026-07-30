import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialFoundationCanonicalLaneLean

structure NeuroscienceAdmittedObject where
  membranePotential : Type
  ionChannels : Type
  nernstPotential : Type
  hodgkinHuxley : Type
  synapticIntegration : Type
  conclusion : membranePotential → Prop

structure AdmissibleClass where
  object : NeuroscienceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion A.object.membranePotential) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceMembranePotentialFoundationCanonicalLaneLean
end HautevilleHouse