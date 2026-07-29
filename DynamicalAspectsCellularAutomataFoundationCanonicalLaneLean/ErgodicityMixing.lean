import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

structure ErgodicityMixingPackage where
  invariantMeasure : Type u
  ergodicProperty : Prop
  mixingProperty : Prop
  correlationDecay : Prop
  ergodicPropertyTerm : ergodicProperty
  mixingPropertyTerm : mixingProperty
  correlationDecayTerm : correlationDecay

structure ErgodicityMixingEvidence (E : ErgodicityMixingPackage) where
  ergodicPropertyClosed : E.ergodicProperty
  mixingPropertyClosed : E.mixingProperty
  correlationDecayClosed : E.correlationDecay

def ErgodicityMixingClosed (E : ErgodicityMixingPackage) : Prop :=
  E.ergodicProperty ∧ E.mixingProperty ∧ E.correlationDecay

theorem ergodicity_mixing_closed_from_evidence
    (E : ErgodicityMixingPackage) (Ev : ErgodicityMixingEvidence E) :
    ErgodicityMixingClosed E := by
  exact And.intro Ev.ergodicPropertyClosed
    (And.intro Ev.mixingPropertyClosed Ev.correlationDecayClosed)

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse