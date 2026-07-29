import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

structure SymbolicDynamicsPackage where
  alphabet : Type u
  shiftSpace : ℕ → alphabet
  forbiddenPatterns : Nat → Prop
  soficProperty : Prop
  shiftSpace_term : shiftSpace
  forbiddenPatternsTerm : (∀ n, forbiddenPatterns n)
  soficPropertyTerm : soficProperty

df SymbolicDynamicsClosed (S : SymbolicDynamicsPackage) : Prop :=
  S.soficProperty

theorem symbolic_dynamics_closed_from_evidence
    (S : SymbolicDynamicsPackage) (E : S.soficPropertyTerm) :
    SymbolicDynamicsClosed S := by
  exact E

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse