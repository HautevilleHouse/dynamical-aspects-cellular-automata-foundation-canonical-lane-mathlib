import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

structure ConservationLawsPackage {R : CellularAutomatonRuleSet}
    (D : TopologicalDynamicsPackage R) where
  additiveInvariant : Type u
  multiplicativeInvariant : Type v
  invariantUnderEvolution : Prop
  conservedQuantities : Prop
  invariantUnderEvolutionTerm : invariantUnderEvolution
  conservedQuantitiesTerm : conservedQuantities

structure ConservationLawsEvidence {R : CellularAutomatonRuleSet}
    {D : TopologicalDynamicsPackage R} (C : ConservationLawsPackage D) where
  invariantUnderEvolutionClosed : C.invariantUnderEvolution
  conservedQuantitiesClosed : C.conservedQuantities

def ConservationLawsClosed {R : CellularAutomatonRuleSet}
    {D : TopologicalDynamicsPackage R} (C : ConservationLawsPackage D) : Prop :=
  C.invariantUnderEvolution ∧ C.conservedQuantities

theorem conservation_laws_closed_from_evidence
    {R : CellularAutomatonRuleSet} {D : TopologicalDynamicsPackage R}
    (C : ConservationLawsPackage D) (E : ConservationLawsEvidence C) :
    ConservationLawsClosed C := by
  exact And.intro E.invariantUnderEvolutionClosed E.conservedQuantitiesClosed

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse