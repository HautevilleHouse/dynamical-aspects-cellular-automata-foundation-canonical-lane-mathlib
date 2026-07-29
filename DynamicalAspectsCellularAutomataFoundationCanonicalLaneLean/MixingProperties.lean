import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean.CellularAutomatonDefinition

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

structure MixingPropertiesPackage {C : CellularAutomatonConfiguration}
    (R : CellularAutomatonRule C) where
  topologicallyMixing : Prop
  stronglyMixing : Prop
  weaklyMixing : Prop
  mixingImplicationChain : Prop

structure MixingPropertiesEvidence {C : CellularAutomatonConfiguration}
    {R : CellularAutomatonRule C} (M : MixingPropertiesPackage R) where
  topologicallyMixingClosed : M.topologicallyMixing
  stronglyMixingClosed : M.stronglyMixing
  weaklyMixingClosed : M.weaklyMixing
  mixingImplicationChainClosed : M.mixingImplicationChain

def MixingPropertiesClosed {C : CellularAutomatonConfiguration}
    {R : CellularAutomatonRule C} (M : MixingPropertiesPackage R) : Prop :=
  M.topologicallyMixing ∧ M.stronglyMixing ∧ M.weaklyMixing ∧ M.mixingImplicationChain

theorem mixing_properties_closed_from_evidence
    {C : CellularAutomatonConfiguration} {R : CellularAutomatonRule C}
    (M : MixingPropertiesPackage R) (Ev : MixingPropertiesEvidence M) :
    MixingPropertiesClosed M := by
  exact And.intro Ev.topologicallyMixingClosed
    (And.intro Ev.stronglyMixingClosed
      (And.intro Ev.weaklyMixingClosed Ev.mixingImplicationChainClosed))

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse