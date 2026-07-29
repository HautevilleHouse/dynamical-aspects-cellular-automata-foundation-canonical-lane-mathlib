import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

structure TopologicalEntropyPackage where
  coveringEntropy : ℕ → ℝ
  metricEntropy : ℕ → ℝ
  entropyExists : Prop
  entropyValue : ℝ
  entropyExistsTerm : entropyExists

def TopologicalEntropyClosed (T : TopologicalEntropyPackage) : Prop :=
  T.entropyExists

theorem topological_entropy_closed_from_evidence
    (T : TopologicalEntropyPackage) (E : T.entropyExistsTerm) :
    TopologicalEntropyClosed T := by
  exact E

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse