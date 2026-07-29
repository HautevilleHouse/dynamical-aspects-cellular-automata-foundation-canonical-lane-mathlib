import DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : CellularAutomataAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CellularAutomataWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse
