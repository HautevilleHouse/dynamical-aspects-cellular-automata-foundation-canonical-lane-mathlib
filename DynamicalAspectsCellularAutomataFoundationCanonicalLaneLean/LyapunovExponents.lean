import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

structure LyapunovExponentsPackage where
  jacobianExists : Prop
  maximalExponent : ℝ
  positivityCondition : Prop
  jacobianExistsTerm : jacobianExists
  maximalExponentTerm : maximalExponent
  positivityConditionTerm : positivityCondition

def LyapunovExponentsClosed (L : LyapunovExponentsPackage) : Prop :=
  L.positivityCondition

theorem lyapunov_exponents_closed_from_evidence
    (L : LyapunovExponentsPackage) (E : L.positivityConditionTerm) :
    LyapunovExponentsClosed L := by
  exact E

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse