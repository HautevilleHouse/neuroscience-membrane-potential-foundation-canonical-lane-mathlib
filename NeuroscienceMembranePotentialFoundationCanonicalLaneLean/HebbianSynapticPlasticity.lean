import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialCanonicalLaneLean

structure SpikeTimingBasedRule where
  preSynapticSpike : Prop
  postSynapticSpike : Prop
  weightChange : Prop
  causality : Prop
  preSynapticSpikeClosed : preSynapticSpike
  postSynapticSpikeClosed : postSynapticSpike
  weightChangeClosed : weightChange
  causalityClosed : causality

structure RateBasedRule where
  preSynapticFiringRate : Prop
  postSynapticFiringRate : Prop
  weightChange : Prop
  correlationDetector : Prop
  preSynapticFiringRateClosed : preSynapticFiringRate
  postSynapticFiringRateClosed : postSynapticFiringRate
  weightChangeClosed : weightChange
  correlationDetectorClosed : correlationDetector

structure HebbianSynapticPlasticityPackage where
  spikeTiming : SpikeTimingBasedRule
  rateBased : RateBasedRule
  locality : Prop
  cooperativity : Prop
  localityClosed : locality
  cooperativityClosed : cooperativity

def HebbianSynapticPlasticityClosed (H : HebbianSynapticPlasticityPackage) : Prop :=
  H.spikeTiming.weightChange ∧ H.spikeTiming.causality ∧
  H.rateBased.weightChange ∧ H.rateBased.correlationDetector ∧
  H.locality ∧ H.cooperativity

theorem hebbian_synaptic_plasticity_closed (H : HebbianSynapticPlasticityPackage) :
    HebbianSynapticPlasticityClosed H :=
  by
    refine And.intro H.spikeTiming.weightChangeClosed (And.intro H.spikeTiming.causalityClosed
      (And.intro H.rateBased.weightChangeClosed (And.intro H.rateBased.correlationDetectorClosed
        (And.intro H.localityClosed H.cooperativityClosed))))

end NeuroscienceMembranePotentialCanonicalLaneLean
end HautevilleHouse