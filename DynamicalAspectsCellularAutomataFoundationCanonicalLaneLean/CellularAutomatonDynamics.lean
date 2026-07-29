import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

structure CellularAutomaton where
  stateSpace : Type u
  neighborhoodShape : Type v
  localRule : (neighborhoodShape -> stateSpace) -> stateSpace
  discreteTimeEvolution : stateSpace -> stateSpace

structure CellularAutomatonDynamics (CA : CellularAutomaton) where
  evolutionOperator : CA.stateSpace -> CA.stateSpace
  shiftInvariantTransition : Prop
  spatialExtensivity : Prop
  regularLanguageAttractor : Prop

structure CellularAutomatonDynamicsEvidence {CA : CellularAutomaton}
    (D : CellularAutomatonDynamics CA) where
  shiftInvariantTransitionClosed : D.shiftInvariantTransition
  spatialExtensivityClosed : D.spatialExtensivity
  regularLanguageAttractorClosed : D.regularLanguageAttractor

def CellularAutomatonDynamicsClosed {CA : CellularAutomaton}
    (D : CellularAutomatonDynamics CA) : Prop :=
  D.shiftInvariantTransition ∧ D.spatialExtensivity ∧ D.regularLanguageAttractor

theorem cellular_automaton_dynamics_closed_from_evidence
    {CA : CellularAutomaton} (D : CellularAutomatonDynamics CA)
    (E : CellularAutomatonDynamicsEvidence D) : CellularAutomatonDynamicsClosed D := by
  exact And.intro E.shiftInvariantTransitionClosed
    (And.intro E.spatialExtensivityClosed E.regularLanguageAttractorClosed)

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse