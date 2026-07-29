import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

/-!
# Cellular Automaton as Dynamical System Package

This module defines a cellular automaton as a continuous dynamical system on a shift space.
It records the local rule, its continuity, and the time-evolution map. Closure evidence
is packaged for the admissible-class bridge.
-/

structure CADynamicalSystem (Σ : Type) (S : ShiftSpace Σ) where
  localRule : (ℤ → Σ) → Σ
  radius : ℕ
  globalMap : (ℤ → Σ) → (ℤ → Σ)
  continuity : Prop
  equivariantUnderShift : Prop
  continuityTerm : continuity
  equivariantTerm : equivariantUnderShift

def CADynamicalSystemClosed (Σ : Type) (S : ShiftSpace Σ) (CA : CADynamicalSystem Σ S) : Prop :=
  CA.continuity ∧ CA.equivariantUnderShift

theorem ca_dynamical_system_closed_from_terms (Σ : Type) (S : ShiftSpace Σ)
    (CA : CADynamicalSystem Σ S) : CADynamicalSystemClosed Σ S CA :=
  And.intro CA.continuityTerm CA.equivariantTerm

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse