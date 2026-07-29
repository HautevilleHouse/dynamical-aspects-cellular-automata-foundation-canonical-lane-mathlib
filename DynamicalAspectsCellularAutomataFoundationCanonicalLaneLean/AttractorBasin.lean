import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean.CellularAutomatonDefinition

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

structure AttractorBasinPackage {C : CellularAutomatonConfiguration}
    (R : CellularAutomatonRule C) where
  attractorSet : Set (Vector (Fin C.alphabetSize) ℕ)
  basinOfAttraction : Set (Vector (Fin C.alphabetSize) ℕ)
  attractorRecurrent : Prop
  basinCovering : Prop

structure AttractorBasinEvidence {C : CellularAutomatonConfiguration}
    {R : CellularAutomatonRule C} (A : AttractorBasinPackage R) where
  attractorRecurrentClosed : A.attractorRecurrent
  basinCoveringClosed : A.basinCovering

def AttractorBasinClosed {C : CellularAutomatonConfiguration}
    {R : CellularAutomatonRule C} (A : AttractorBasinPackage R) : Prop :=
  A.attractorRecurrent ∧ A.basinCovering

theorem attractor_basin_closed_from_evidence
    {C : CellularAutomatonConfiguration} {R : CellularAutomatonRule C}
    (A : AttractorBasinPackage R) (E : AttractorBasinEvidence A) : AttractorBasinClosed A := by
  exact And.intro E.attractorRecurrentClosed E.basinCoveringClosed

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse