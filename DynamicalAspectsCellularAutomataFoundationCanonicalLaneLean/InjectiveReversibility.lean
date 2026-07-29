import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

structure InjectiveReversibility {CA : CellularAutomaton}
    (D : CellularAutomatonDynamics CA) where
  injectiveTransition : Prop
  reversibleByLocalRule : Prop
  conservedDensityInvariant : Prop

structure InjectiveReversibilityEvidence {CA : CellularAutomaton}
    {D : CellularAutomatonDynamics CA} (R : InjectiveReversibility D) where
  injectiveTransitionClosed : R.injectiveTransition
  reversibleByLocalRuleClosed : R.reversibleByLocalRule
  conservedDensityInvariantClosed : R.conservedDensityInvariant

def InjectiveReversibilityClosed {CA : CellularAutomaton}
    {D : CellularAutomatonDynamics CA} (R : InjectiveReversibility D) : Prop :=
  R.injectiveTransition ∧ R.reversibleByLocalRule ∧ R.conservedDensityInvariant

theorem injective_reversibility_closed_from_evidence
    {CA : CellularAutomaton} {D : CellularAutomatonDynamics CA}
    (R : InjectiveReversibility D) (E : InjectiveReversibilityEvidence R) :
    InjectiveReversibilityClosed R := by
  exact And.intro E.injectiveTransitionClosed
    (And.intro E.reversibleByLocalRuleClosed E.conservedDensityInvariantClosed)

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse