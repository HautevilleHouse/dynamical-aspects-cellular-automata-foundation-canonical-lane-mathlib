import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

structure AttractorStructurePackage where
  attractorSet : Type u
  attractionProperty : Prop
  basinOfAttraction : Prop
  stabilityProperty : Prop
  attractionPropertyTerm : attractionProperty
  basinOfAttractionTerm : basinOfAttraction
  stabilityPropertyTerm : stabilityProperty

structure AttractorStructureEvidence (A : AttractorStructurePackage) where
  attractionPropertyClosed : A.attractionProperty
  basinOfAttractionClosed : A.basinOfAttraction
  stabilityPropertyClosed : A.stabilityProperty

def AttractorStructureClosed (A : AttractorStructurePackage) : Prop :=
  A.attractionProperty ∧ A.basinOfAttraction ∧ A.stabilityProperty

theorem attractor_structure_closed_from_evidence
    (A : AttractorStructurePackage) (E : AttractorStructureEvidence A) :
    AttractorStructureClosed A := by
  exact And.intro E.attractionPropertyClosed
    (And.intro E.basinOfAttractionClosed E.stabilityPropertyClosed)

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse