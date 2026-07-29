import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Combinatorics.CellularAutomaton

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

structure CellularAutomatonConfiguration where
  dimension : ℕ
  alphabetSize : ℕ
  neighborhoodRadius : ℕ

structure CellularAutomatonRule (C : CellularAutomatonConfiguration) where
  transitionFunction : (Vector (Fin C.alphabetSize) (C.neighborhoodRadius * 2 + 1)) → Fin C.alphabetSize
  ruleNumber : ℕ
  surjectivity : Prop
  injectivity : Prop

structure CellularAutomatonRuleEvidence (C : CellularAutomatonConfiguration) (R : CellularAutomatonRule C) where
  surjectivityClosed : R.surjectivity
  injectivityClosed : R.injectivity

def CellularAutomatonRuleClosed {C : CellularAutomatonConfiguration} (R : CellularAutomatonRule C) : Prop :=
  R.surjectivity ∧ R.injectivity

theorem cellular_automaton_rule_closed_from_evidence
    {C : CellularAutomatonConfiguration} (R : CellularAutomatonRule C)
    (E : CellularAutomatonRuleEvidence C R) : CellularAutomatonRuleClosed R := by
  exact And.intro E.surjectivityClosed E.injectivityClosed

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse