import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialFoundationCanonicalLaneLean

structure SynapticTransmissionPackage where
  neurotransmitter : Type
  receptor : Type
  postsynapticPotential : Prop
  quantalRelease : Prop
  summation : Prop
  synapticPlasticity : Prop

structure SynapticTransmissionEvidence (S : SynapticTransmissionPackage) where
  postsynapticPotentialClosed : S.postsynapticPotential
  quantalReleaseClosed : S.quantalRelease
  summationClosed : S.summation
  synapticPlasticityClosed : S.synapticPlasticity

def SynapticTransmissionClosed (S : SynapticTransmissionPackage) : Prop :=
  S.postsynapticPotential ∧ S.quantalRelease ∧ S.summation ∧ S.synapticPlasticity

theorem synaptic_transmission_closed_from_evidence (S : SynapticTransmissionPackage)
    (E : SynapticTransmissionEvidence S) : SynapticTransmissionClosed S := by
  exact And.intro E.postsynapticPotentialClosed (And.intro E.quantalReleaseClosed
    (And.intro E.summationClosed E.synapticPlasticityClosed))

end NeuroscienceMembranePotentialFoundationCanonicalLaneLean
end HautevilleHouse