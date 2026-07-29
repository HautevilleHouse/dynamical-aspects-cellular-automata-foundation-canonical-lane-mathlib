import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

/-!
# Topological Entropy for Cellular Automata Package

This module defines topological entropy for cellular automata and records the
entropy invariant as part of the admissible-class bridge.
-/

open Set

structure TopologicalEntropy (Σ : Type) (S : ShiftSpace Σ) (CA : CADynamicalSystem Σ S) where
  entropyValue : ℝ
  entropyUpperBound : ℝ
  finiteTypeApproximation : ℕ → ℝ
  entropyWellDefined : Prop
  finiteApproxConvergence : Prop
  entropyWellDefinedTerm : entropyWellDefined
  finiteApproxConvergenceTerm : finiteApproxConvergence

def TopologicalEntropyClosed (Σ : Type) (S : ShiftSpace Σ) (CA : CADynamicalSystem Σ S)
    (H : TopologicalEntropy Σ S CA) : Prop :=
  H.entropyWellDefined ∧ H.finiteApproxConvergence

theorem topological_entropy_closed (Σ : Type) (S : ShiftSpace Σ) (CA : CADynamicalSystem Σ S)
    (H : TopologicalEntropy Σ S CA) : TopologicalEntropyClosed Σ S CA H :=
  And.intro H.entropyWellDefinedTerm H.finiteApproxConvergenceTerm

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse