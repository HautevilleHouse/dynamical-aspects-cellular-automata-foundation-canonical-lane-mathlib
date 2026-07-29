import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

structure RuleSpaceDynamicsPackage where
  space : Type u
  topology : TopologicalSpace space
  shiftMap : space → space
  shiftContinuous : Prop
  shiftContinuousTerm : shiftContinuous

structure RuleSpaceDynamicsEvidence (R : RuleSpaceDynamicsPackage) where
  shiftContinuousClosed : R.shiftContinuous

def RuleSpaceDynamicsClosed (R : RuleSpaceDynamicsPackage) : Prop :=
  R.shiftContinuous

theorem rule_space_dynamics_closed_from_evidence
    (R : RuleSpaceDynamicsPackage) (E : RuleSpaceDynamicsEvidence R) :
    RuleSpaceDynamicsClosed R := by
  exact E.shiftContinuousClosed

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse