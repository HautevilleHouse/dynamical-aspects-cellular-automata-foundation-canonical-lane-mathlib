import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

structure AttractorBasinClassification {CA : CellularAutomaton}
    (D : CellularAutomatonDynamics CA) where
  attractorSetClassified : Prop
  basinOfAttractionDefined : Prop
  limitCycleOrFixedPoint : Prop
  chaosClassification : Prop

structure AttractorBasinClassificationEvidence {CA : CellularAutomaton}
    {D : CellularAutomatonDynamics CA} (A : AttractorBasinClassification D) where
  attractorSetClassifiedClosed : A.attractorSetClassified
  basinOfAttractionDefinedClosed : A.basinOfAttractionDefined
  limitCycleOrFixedPointClosed : A.limitCycleOrFixedPoint
  chaosClassificationClosed : A.chaosClassification

def AttractorBasinClassificationClosed {CA : CellularAutomaton}
    {D : CellularAutomatonDynamics CA} (A : AttractorBasinClassification D) : Prop :=
  A.attractorSetClassified ∧ A.basinOfAttractionDefined ∧
  A.limitCycleOrFixedPoint ∧ A.chaosClassification

theorem attractor_basin_classification_closed_from_evidence
    {CA : CellularAutomaton} {D : CellularAutomatonDynamics CA}
    (A : AttractorBasinClassification D) (E : AttractorBasinClassificationEvidence A) :
    AttractorBasinClassificationClosed A := by
  exact And.intro E.attractorSetClassifiedClosed
    (And.intro E.basinOfAttractionDefinedClosed
      (And.intro E.limitCycleOrFixedPointClosed E.chaosClassificationClosed))

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse