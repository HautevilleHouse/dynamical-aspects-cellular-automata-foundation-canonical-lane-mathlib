import DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse
