import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialFoundationCanonicalLaneLean

structure NeuromodulationPackage where
  receptorTypes : Prop
  secondMessenger : Prop
  channelModulation : Prop
  synapticPlasticity : Prop
  networkEffect : Prop
  homeostaticRegulation : Prop

structure NeuromodulationEvidence (N : NeuromodulationPackage) where
  receptorTypesClosed : N.receptorTypes
  secondMessengerClosed : N.secondMessenger
  channelModulationClosed : N.channelModulation
  synapticPlasticityClosed : N.synapticPlasticity
  networkEffectClosed : N.networkEffect
  homeostaticRegulationClosed : N.homeostaticRegulation

def NeuromodulationClosed (N : NeuromodulationPackage) : Prop :=
  N.receptorTypes ∧ N.secondMessenger ∧ N.channelModulation ∧
  N.synapticPlasticity ∧ N.networkEffect ∧ N.homeostaticRegulation

theorem neuromodulation_closed_from_evidence (N : NeuromodulationPackage)
    (E : NeuromodulationEvidence N) : NeuromodulationClosed N := by
  exact And.intro E.receptorTypesClosed
    (And.intro E.secondMessengerClosed
      (And.intro E.channelModulationClosed
        (And.intro E.synapticPlasticityClosed
          (And.intro E.networkEffectClosed E.homeostaticRegulationClosed))))

end NeuroscienceMembranePotentialFoundationCanonicalLaneLean
end HautevilleHouse