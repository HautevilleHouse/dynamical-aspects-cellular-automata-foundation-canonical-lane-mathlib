import DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CellularAutomataWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse
