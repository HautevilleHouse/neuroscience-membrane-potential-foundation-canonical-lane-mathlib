import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialFoundationCanonicalLaneLean

structure SynapticInput where
  synapseType : String
  peakConductance : Float
  timeCourse : Prop
  reversalPotential : Float
  timeCourseClosed : timeCourse

structure SynapticIntegrationPackage where
  inputs : List SynapticInput
  dendriteCompartment : Prop
  temporalSummation : Prop
  spatialSummation : Prop
  spikeThreshold : Float
  dendriteCompartmentClosed : dendriteCompartment
  temporalSummationClosed : temporalSummation
  spatialSummationClosed : spatialSummation

structure SynapticIntegrationEvidence (S : SynapticIntegrationPackage) where
  inputPropertiesChecked : Prop
  dendriticModelValidated : Prop
  inputPropertiesCheckedClosed : inputPropertiesChecked
  dendriticModelValidatedClosed : dendriticModelValidated

def SynapticIntegrationClosed (S : SynapticIntegrationPackage) : Prop :=
  S.dendriteCompartment ∧ S.temporalSummation ∧ S.spatialSummation ∧
  S.inputPropertiesChecked ∧ S.dendriticModelValidated

theorem synaptic_integration_closed_from_evidence
    (S : SynapticIntegrationPackage) (E : SynapticIntegrationEvidence S) :
    SynapticIntegrationClosed S := by
  exact And.intro S.dendriteCompartmentClosed
    (And.intro S.temporalSummationClosed
      (And.intro S.spatialSummationClosed
        (And.intro E.inputPropertiesCheckedClosed E.dendriticModelValidatedClosed)))

end NeuroscienceMembranePotentialFoundationCanonicalLaneLean
end HautevilleHouse