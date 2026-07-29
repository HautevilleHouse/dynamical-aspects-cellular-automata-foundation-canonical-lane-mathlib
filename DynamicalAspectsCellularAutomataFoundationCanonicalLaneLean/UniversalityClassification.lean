import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

structure UniversalityClassificationPackage {R : CellularAutomatonRuleSet}
    {D : TopologicalDynamicsPackage R} {C : ConservationLawsPackage D} where
  turingComplete : Prop
  simulationCapability : Prop
  universalityWitness : Prop
  classificationHierarchy : Prop
  turingCompleteTerm : turingComplete
  simulationCapabilityTerm : simulationCapability
  universalityWitnessTerm : universalityWitness
  classificationHierarchyTerm : classificationHierarchy

structure UniversalityClassificationEvidence
    {R : CellularAutomatonRuleSet} {D : TopologicalDynamicsPackage R}
    {C : ConservationLawsPackage D}
    (U : UniversalityClassificationPackage C) where
  turingCompleteClosed : U.turingComplete
  simulationCapabilityClosed : U.simulationCapability
  universalityWitnessClosed : U.universalityWitness
  classificationHierarchyClosed : U.classificationHierarchy

def UniversalityClassificationClosed
    {R : CellularAutomatonRuleSet} {D : TopologicalDynamicsPackage R}
    {C : ConservationLawsPackage D}
    (U : UniversalityClassificationPackage C) : Prop :=
  U.turingComplete ∧ U.simulationCapability ∧ U.universalityWitness ∧ U.classificationHierarchy

theorem universality_classification_closed_from_evidence
    {R : CellularAutomatonRuleSet} {D : TopologicalDynamicsPackage R}
    {C : ConservationLawsPackage D} (U : UniversalityClassificationPackage C)
    (E : UniversalityClassificationEvidence U) : UniversalityClassificationClosed U := by
  exact And.intro E.turingCompleteClosed
    (And.intro E.simulationCapabilityClosed
      (And.intro E.universalityWitnessClosed E.classificationHierarchyClosed))

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse