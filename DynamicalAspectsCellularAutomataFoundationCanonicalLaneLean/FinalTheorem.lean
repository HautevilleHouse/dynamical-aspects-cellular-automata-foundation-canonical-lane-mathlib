import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

def ConstrainedCellularAutomatonClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cellular_automaton_endgame (A : AdmissibleClass) :
    ConstrainedCellularAutomatonClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse