import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialCanonicalLaneLean

structure SynapticKernel where
  spatialDecay : Prop
  temporalDecay : Prop
  connectivityProfile : Prop
  spatialDecayClosed : spatialDecay
  temporalDecayClosed : temporalDecay
  connectivityProfileClosed : connectivityProfile

structure ActivationFunction where
  threshold : Prop
  sigmoidalShape : Prop
  gainParameter : Prop
  thresholdClosed : threshold
  sigmoidalShapeClosed : sigmoidalShape
  gainParameterClosed : gainParameter

structure NeuralFieldContinuityPackage where
  synapticKernel : SynapticKernel
  activationFunction : ActivationFunction
  fieldEquation : Prop
  initialCondition : Prop
  boundaryCondition : Prop
  fieldEquationClosed : fieldEquation
  initialConditionClosed : initialCondition
  boundaryConditionClosed : boundaryCondition

def NeuralFieldContinuityClosed (N : NeuralFieldContinuityPackage) : Prop :=
  N.synapticKernel.spatialDecay ∧ N.synapticKernel.temporalDecay ∧
  N.activationFunction.threshold ∧ N.activationFunction.sigmoidalShape ∧
  N.fieldEquation ∧ N.initialCondition ∧ N.boundaryCondition

theorem neural_field_continuity_closed (N : NeuralFieldContinuityPackage) :
    NeuralFieldContinuityClosed N :=
  by
    refine And.intro N.synapticKernel.spatialDecayClosed (And.intro N.synapticKernel.temporalDecayClosed
      (And.intro N.activationFunction.thresholdClosed (And.intro N.activationFunction.sigmoidalShapeClosed
        (And.intro N.fieldEquationClosed (And.intro N.initialConditionClosed N.boundaryConditionClosed)))))

end NeuroscienceMembranePotentialCanonicalLaneLean
end HautevilleHouse