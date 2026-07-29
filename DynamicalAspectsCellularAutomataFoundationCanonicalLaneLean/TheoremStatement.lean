import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

structure CellularAutomataAdmittedObject where
  space : Type
  dynamics : Type
  rule : Type
  orbitSpace : Type
  limitSet : Type
  attractorStructure : Prop
  conclusion : attractorStructure

def CellularAutomataWitnessClosed (O : CellularAutomataAdmittedObject) : Prop :=
  O.attractorStructure

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse