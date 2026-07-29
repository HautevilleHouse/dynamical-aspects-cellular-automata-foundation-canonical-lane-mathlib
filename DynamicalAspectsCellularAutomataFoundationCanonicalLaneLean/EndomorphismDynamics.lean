import DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

structure EndomorphismSpace where
  stateSpace : Type u
  transitionFunction : stateSpace → stateSpace
  topologyCompatible : Prop

structure EndomorphismDynamicsPackage where
  shiftInvariantMeasures : Prop
  mixingProperties : Prop
  entropyExistence : Prop

structure EndomorphismDynamicsEvidence (E : EndomorphismDynamicsPackage) where
  shiftInvariantMeasuresClosed : E.shiftInvariantMeasures
  mixingPropertiesClosed : E.mixingProperties
  entropyExistenceClosed : E.entropyExistence

def EndomorphismDynamicsClosed (E : EndomorphismDynamicsPackage) : Prop :=
  E.shiftInvariantMeasures ∧ E.mixingProperties ∧ E.entropyExistence

theorem endomorphism_dynamics_closed_from_evidence (E : EndomorphismDynamicsPackage)
    (Ev : EndomorphismDynamicsEvidence E) : EndomorphismDynamicsClosed E := by
  exact And.intro Ev.shiftInvariantMeasuresClosed
    (And.intro Ev.mixingPropertiesClosed Ev.entropyExistenceClosed)

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse
