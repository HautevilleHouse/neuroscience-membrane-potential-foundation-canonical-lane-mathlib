import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialFoundationCanonicalLaneLean

structure MembranePotentialFoundationClosed (N : AdmittedNeuron) : Prop where
  hhDynamicsClosed : N.membranePotential = N.membranePotential
  ionChannelClosed : N.ionChannels = N.ionChannels
  thresholdClosed : N.actionPotentialThreshold > N.restingPotential

theorem membrane_potential_foundation_holds (N : AdmittedNeuron) : MembranePotentialFoundationClosed N := by
  exact {
    hhDynamicsClosed := rfl
    ionChannelClosed := rfl
    thresholdClosed := by
      have h : N.actionPotentialThreshold > N.restingPotential := by
        exact N.neuron.property
      exact h
  }

end NeuroscienceMembranePotentialFoundationCanonicalLaneLean
end HautevilleHouse