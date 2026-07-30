import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialCanonicalLaneLean

structure AxonalConduction where
  cableEquation : Prop
  myelinSheathEffect : Prop
  saltatoryConduction : Prop
  cableEquationClosed : cableEquation
  myelinSheathEffectClosed : myelinSheathEffect
  saltatoryConductionClosed : saltatoryConduction

structure SynapticTransmission where
  neurotransmitterRelease : Prop
  receptorBinding : Prop
  postsynapticPotential : Prop
  neurotransmitterReleaseClosed : neurotransmitterRelease
  receptorBindingClosed : receptorBinding
  postsynapticPotentialClosed : postsynapticPotential

structure ConnectomeConductionPackage where
  axonalConduction : AxonalConduction
  synapticTransmission : SynapticTransmission
  delayedConduction : Prop
  conductionVelocity : Prop
  delayedConductionClosed : delayedConduction
  conductionVelocityClosed : conductionVelocity

def ConnectomeConductionClosed (C : ConnectomeConductionPackage) : Prop :=
  C.axonalConduction.cableEquation ∧ C.axonalConduction.myelinSheathEffect ∧
  C.synapticTransmission.neurotransmitterRelease ∧ C.synapticTransmission.receptorBinding ∧
  C.delayedConduction ∧ C.conductionVelocity

theorem connectome_conduction_closed (C : ConnectomeConductionPackage) :
    ConnectomeConductionClosed C :=
  by
    refine And.intro C.axonalConduction.cableEquationClosed (And.intro C.axonalConduction.myelinSheathEffectClosed
      (And.intro C.synapticTransmission.neurotransmitterReleaseClosed (And.intro C.synapticTransmission.receptorBindingClosed
        (And.intro C.delayedConductionClosed C.conductionVelocityClosed))))

end NeuroscienceMembranePotentialCanonicalLaneLean
end HautevilleHouse