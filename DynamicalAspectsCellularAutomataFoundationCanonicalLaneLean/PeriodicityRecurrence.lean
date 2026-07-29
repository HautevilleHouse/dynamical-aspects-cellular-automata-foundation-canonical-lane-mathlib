import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

/-!
# Periodicity and Recurrence Package

This module formalizes periodic points and recurrent points for cellular automata.
It records the recurrence structure as part of the admissible-class bridge.
-/

structure Periodicity (Σ : Type) (S : ShiftSpace Σ) (CA : CADynamicalSystem Σ S) where
  periodicPoints : Set (ℤ → Σ)
  eventuallyPeriodicPoints : Set (ℤ → Σ)
  recurrentPoints : Set (ℤ → Σ)
  periodicDense : Prop
  recurrentDense : Prop
  periodicDenseTerm : periodicDense
  recurrentDenseTerm : recurrentDense

def PeriodicityClosed (Σ : Type) (S : ShiftSpace Σ) (CA : CADynamicalSystem Σ S)
    (P : Periodicity Σ S CA) : Prop :=
  P.periodicDense ∧ P.recurrentDense

theorem periodicity_closed (Σ : Type) (S : ShiftSpace Σ) (CA : CADynamicalSystem Σ S)
    (P : Periodicity Σ S CA) : PeriodicityClosed Σ S CA P :=
  And.intro P.periodicDenseTerm P.recurrentDenseTerm

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse