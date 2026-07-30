import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialCanonicalLaneLean

structure SodiumChannelDynamics where
  activationGating : Prop
  inactivationGating : Prop
  conductanceVoltageRelation : Prop
  activationGatingClosed : activationGating
  inactivationGatingClosed : inactivationGating
  conductanceVoltageRelationClosed : conductanceVoltageRelation

structure PotassiumChannelDynamics where
  activationGating : Prop
  conductanceVoltageRelation : Prop
  activationGatingClosed : activationGating
  conductanceVoltageRelationClosed : conductanceVoltageRelation

structure LeakChannelDynamics where
  constantConductance : Prop
  reversalPotential : Prop
  constantConductanceClosed : constantConductance
  reversalPotentialClosed : reversalPotential

structure HodgkinHuxleyChannelDynamicsPackage where
  sodium : SodiumChannelDynamics
  potassium : PotassiumChannelDynamics
  leak : LeakChannelDynamics
  membraneCapacitance : Prop
  membraneCapacitanceClosed : membraneCapacitance

def HodgkinHuxleyChannelDynamicsClosed (H : HodgkinHuxleyChannelDynamicsPackage) : Prop :=
  H.sodium.activationGating ∧ H.sodium.inactivationGating ∧ H.sodium.conductanceVoltageRelation ∧
  H.potassium.activationGating ∧ H.potassium.conductanceVoltageRelation ∧
  H.leak.constantConductance ∧ H.leak.reversalPotential ∧
  H.membraneCapacitance

theorem hodgkin_huxley_channel_dynamics_closed (H : HodgkinHuxleyChannelDynamicsPackage) :
    HodgkinHuxleyChannelDynamicsClosed H :=
  by
    refine And.intro H.sodium.activationGatingClosed (And.intro H.sodium.inactivationGatingClosed
      (And.intro H.sodium.conductanceVoltageRelationClosed (And.intro H.potassium.activationGatingClosed
        (And.intro H.potassium.conductanceVoltageRelationClosed (And.intro H.leak.constantConductanceClosed
          (And.intro H.leak.reversalPotentialClosed H.membraneCapacitanceClosed))))))

end NeuroscienceMembranePotentialCanonicalLaneLean
end HautevilleHouse