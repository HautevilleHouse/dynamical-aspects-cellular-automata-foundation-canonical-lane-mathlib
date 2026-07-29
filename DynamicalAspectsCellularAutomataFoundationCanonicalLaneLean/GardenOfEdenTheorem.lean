import DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean.EndomorphismDynamics

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

structure GardenOfEdenConfiguration where
  pattern : List Bool
  finiteSupport : Prop

structure GardenOfEdenPackage {E : EndomorphismDynamicsPackage}
    (Epkg : EndomorphismDynamicsEvidence E) where
  nonSurjectiveImpliesGarden : Prop
  gardenExistence : Prop
  preimageCounting : Prop

structure GardenOfEdenEvidence {E : EndomorphismDynamicsPackage}
    {Epkg : EndomorphismDynamicsEvidence E} (G : GardenOfEdenPackage Epkg) where
  nonSurjectiveImpliesGardenClosed : G.nonSurjectiveImpliesGarden
  gardenExistenceClosed : G.gardenExistence
  preimageCountingClosed : G.preimageCounting

def GardenOfEdenClosed {E : EndomorphismDynamicsPackage}
    {Epkg : EndomorphismDynamicsEvidence E} (G : GardenOfEdenPackage Epkg) : Prop :=
  G.nonSurjectiveImpliesGarden ∧ G.gardenExistence ∧ G.preimageCounting

theorem garden_of_eden_closed_from_evidence {E : EndomorphismDynamicsPackage}
    {Epkg : EndomorphismDynamicsEvidence E} (G : GardenOfEdenPackage Epkg)
    (Ev : GardenOfEdenEvidence G) : GardenOfEdenClosed G := by
  exact And.intro Ev.nonSurjectiveImpliesGardenClosed
    (And.intro Ev.gardenExistenceClosed Ev.preimageCountingClosed)

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse
