import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

structure TopologicalDynamicsPackage (R : CellularAutomatonRuleSet) where
  shiftMap : Type u
  shiftInvariant : Prop
  productTopology : Type v
  shiftOperator : productTopology → productTopology
  shiftContinuous : Prop
  mixingProperties : Prop
  entropyValues : Prop
  shiftContinuousTerm : shiftContinuous
  mixingPropertiesTerm : mixingProperties
  entropyValuesTerm : entropyValues

structure TopologicalDynamicsEvidence {R : CellularAutomatonRuleSet}
    (D : TopologicalDynamicsPackage R) where
  shiftContinuousClosed : D.shiftContinuous
  mixingPropertiesClosed : D.mixingProperties
  entropyValuesClosed : D.entropyValues

def TopologicalDynamicsClosed {R : CellularAutomatonRuleSet}
    (D : TopologicalDynamicsPackage R) : Prop :=
  D.shiftContinuous ∧ D.mixingProperties ∧ D.entropyValues

theorem topological_dynamics_closed_from_evidence
    {R : CellularAutomatonRuleSet} (D : TopologicalDynamicsPackage R)
    (E : TopologicalDynamicsEvidence D) : TopologicalDynamicsClosed D := by
  exact And.intro E.shiftContinuousClosed (And.intro E.mixingPropertiesClosed E.entropyValuesClosed)

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse