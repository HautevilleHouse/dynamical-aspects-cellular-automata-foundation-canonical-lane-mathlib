import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

structure CellularAutomatonEvolutionPackage where
  stateSpace : Type u
  evolutionOperator : stateSpace → stateSpace
  localityCondition : Prop
  continuityCondition : Prop
  localityConditionTerm : localityCondition
  continuityConditionTerm : continuityCondition

structure CellularAutomatonEvolutionEvidence
    (C : CellularAutomatonEvolutionPackage) where
  localityConditionClosed : C.localityCondition
  continuityConditionClosed : C.continuityCondition

def CellularAutomatonEvolutionClosed
    (C : CellularAutomatonEvolutionPackage) : Prop :=
  C.localityCondition ∧ C.continuityCondition

theorem cellular_automaton_evolution_closed_from_evidence
    (C : CellularAutomatonEvolutionPackage)
    (E : CellularAutomatonEvolutionEvidence C) :
    CellularAutomatonEvolutionClosed C := by
  exact And.intro E.localityConditionClosed E.continuityConditionClosed

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse