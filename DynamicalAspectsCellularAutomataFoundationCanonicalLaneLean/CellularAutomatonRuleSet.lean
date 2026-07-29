import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

structure CellularAutomatonRuleSet where
  rules : Type u
  localRule : Type v
  radius : Nat
  dimension : Nat
  stateSpace : Type w
  neighbors : Type x
  updateRule : neighbors → stateSpace
  ruleWellDefined : Prop
  ruleWellDefinedTerm : ruleWellDefined

def CellularAutomatonRuleSetClosed (R : CellularAutomatonRuleSet) : Prop :=
  R.ruleWellDefined

theorem cellular_automaton_rule_set_closed (R : CellularAutomatonRuleSet) :
    CellularAutomatonRuleSetClosed R := by
  exact R.ruleWellDefinedTerm

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse