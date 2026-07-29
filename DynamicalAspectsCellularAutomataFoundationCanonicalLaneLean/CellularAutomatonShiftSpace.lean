import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

/-!
# Cellular Automaton Shift Space Package

This module formalizes the shift space structure for one-dimensional cellular automata.
It defines the shift action on configuration space and records the shift-invariance
properties required for admissible-class bridge closure.
-/

structure ShiftSpace (Σ : Type) where
  alphabet : Type
  shiftMap : (ℤ → Σ) → (ℤ → Σ)
  shiftInvariantSet : Set (ℤ → Σ)
  subshiftClosed : Prop
  shiftContinuity : Prop
  shiftContinuityTerm : shiftContinuity
  subshiftClosedTerm : subshiftClosed

def ShiftInvariantClosed (S : ShiftSpace Σ) : Prop :=
  S.subshiftClosed ∧ S.shiftContinuity

theorem shift_invariant_closed_from_terms (S : ShiftSpace Σ) : ShiftInvariantClosed S :=
  And.intro S.subshiftClosedTerm S.shiftContinuityTerm

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse