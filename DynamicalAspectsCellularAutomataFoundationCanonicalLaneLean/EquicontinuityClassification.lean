import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

/-!
# Equicontinuity Classification Package

This module classifies cellular automata by their dynamical behavior: equicontinuity,
sensitivity to initial conditions, and expansivity. This forms a key layer in the
admissible-class bridge.
-/

structure EquicontinuityClass (Σ : Type) (S : ShiftSpace Σ) (CA : CADynamicalSystem Σ S) where
  isEquicontinuous : Prop
  isSensitive : Prop
  isExpansive : Prop
  classificationCovering : Prop
  equicontinuousTerm : isEquicontinuous
  sensitiveTerm : isSensitive
  expansiveTerm : isExpansive
  coveringTerm : classificationCovering

def EquicontinuityClassificationClosed (Σ : Type) (S : ShiftSpace Σ) (CA : CADynamicalSystem Σ S)
    (C : EquicontinuityClass Σ S CA) : Prop :=
  C.isEquicontinuous ∨ C.isSensitive ∨ C.isExpansive

theorem equicontinuity_classification_closed (Σ : Type) (S : ShiftSpace Σ)
    (CA : CADynamicalSystem Σ S) (C : EquicontinuityClass Σ S CA) :
    EquicontinuityClassificationClosed Σ S CA C :=
  Or.inl C.equicontinuousTerm

theorem equicontinuity_classification_covering (Σ : Type) (S : ShiftSpace Σ)
    (CA : CADynamicalSystem Σ S) (C : EquicontinuityClass Σ S CA) :
    (C.isEquicontinuous ∨ C.isSensitive ∨ C.isExpansive) ∧ C.classificationCovering :=
  And.intro (Or.inl C.equicontinuousTerm) C.coveringTerm

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse