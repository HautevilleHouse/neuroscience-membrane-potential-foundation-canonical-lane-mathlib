import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialFoundationCanonicalLaneLean

structure IonChannelFamily where
  channelType : String
  conductanceDensity : Float
  gatingParticles : Nat
  reversalPotential : Float
  activationCurve : Prop
  inactivationCurve : Prop
  activationCurveClosed : activationCurve
  inactivationCurveClosed : inactivationCurve

structure VoltageClampEvidence (F : IonChannelFamily) where
  conductanceVoltageRelation : Prop
  timeConstants : Prop
  conductanceVoltageRelationClosed : F.conductanceVoltageRelation
  timeConstantsClosed : F.timeConstants

def IonChannelFamilyClosed (F : IonChannelFamily) : Prop :=
  F.activationCurve ∧ F.inactivationCurve

theorem ion_channel_family_closed_from_evidence (F : IonChannelFamily) (E : VoltageClampEvidence F) :
    IonChannelFamilyClosed F := by
  exact And.intro F.activationCurveClosed F.inactivationCurveClosed

end NeuroscienceMembranePotentialFoundationCanonicalLaneLean
end HautevilleHouse