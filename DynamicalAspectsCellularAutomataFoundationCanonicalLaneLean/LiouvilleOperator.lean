import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean.CellularAutomatonDefinition

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

structure LiouvilleOperatorPackage {C : CellularAutomatonConfiguration}
    (R : CellularAutomatonRule C) where
  liouvilleOperatorOnContinuousFunctions : Prop
  spectrumStructure : Prop
  eigenmeasures : Prop
  peripherialSpectrum : Prop

structure LiouvilleOperatorEvidence {C : CellularAutomatonConfiguration}
    {R : CellularAutomatonRule C} (L : LiouvilleOperatorPackage R) where
  liouvilleOperatorOnContinuousFunctionsClosed : L.liouvilleOperatorOnContinuousFunctions
  spectrumStructureClosed : L.spectrumStructure
  eigenmeasuresClosed : L.eigenmeasures
  peripherialSpectrumClosed : L.peripherialSpectrum

def LiouvilleOperatorClosed {C : CellularAutomatonConfiguration}
    {R : CellularAutomatonRule C} (L : LiouvilleOperatorPackage R) : Prop :=
  L.liouvilleOperatorOnContinuousFunctions ∧ L.spectrumStructure ∧
  L.eigenmeasures ∧ L.peripherialSpectrum

theorem liouville_operator_closed_from_evidence
    {C : CellularAutomatonConfiguration} {R : CellularAutomatonRule C}
    (L : LiouvilleOperatorPackage R) (Ev : LiouvilleOperatorEvidence L) :
    LiouvilleOperatorClosed L := by
  exact And.intro Ev.liouvilleOperatorOnContinuousFunctionsClosed
    (And.intro Ev.spectrumStructureClosed
      (And.intro Ev.eigenmeasuresClosed Ev.peripherialSpectrumClosed))

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse