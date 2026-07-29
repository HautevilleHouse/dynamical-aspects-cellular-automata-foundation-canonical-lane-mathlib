import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean

structure SensitivityAndChaosPackage {R : CellularAutomatonRuleSet}
    {D : TopologicalDynamicsPackage R} {C : ConservationLawsPackage D}
    {U : UniversalityClassificationPackage C} where
  sensitivityToInitialConditions : Prop
  topologicalTransitivity : Prop
  densePeriodicPoints : Prop
  positiveLyapunovExponent : Prop
  chaoticBehavior : Prop
  sensitivityTerm : sensitivityToInitialConditions
  transitivityTerm : topologicalTransitivity
  densePeriodicTerm : densePeriodicPoints
  lyapunovTerm : positiveLyapunovExponent
  chaoticTerm : chaoticBehavior

structure SensitivityAndChaosEvidence
    {R : CellularAutomatonRuleSet} {D : TopologicalDynamicsPackage R}
    {C : ConservationLawsPackage D} {U : UniversalityClassificationPackage C}
    (S : SensitivityAndChaosPackage U) where
  sensitivityClosed : S.sensitivityToInitialConditions
  transitivityClosed : S.topologicalTransitivity
  densePeriodicClosed : S.densePeriodicPoints
  lyapunovClosed : S.positiveLyapunovExponent
  chaoticClosed : S.chaoticBehavior

def SensitivityAndChaosClosed
    {R : CellularAutomatonRuleSet} {D : TopologicalDynamicsPackage R}
    {C : ConservationLawsPackage D} {U : UniversalityClassificationPackage C}
    (S : SensitivityAndChaosPackage U) : Prop :=
  S.sensitivityToInitialConditions ∧ S.topologicalTransitivity ∧
  S.densePeriodicPoints ∧ S.positiveLyapunovExponent ∧ S.chaoticBehavior

theorem sensitivity_and_chaos_closed_from_evidence
    {R : CellularAutomatonRuleSet} {D : TopologicalDynamicsPackage R}
    {C : ConservationLawsPackage D} {U : UniversalityClassificationPackage C}
    (S : SensitivityAndChaosPackage U) (E : SensitivityAndChaosEvidence S) :
    SensitivityAndChaosClosed S := by
  exact And.intro E.sensitivityClosed
    (And.intro E.transitivityClosed
      (And.intro E.densePeriodicClosed
        (And.intro E.lyapunovClosed E.chaoticClosed)))

end DynamicalAspectsCellularAutomataFoundationCanonicalLaneLean
end HautevilleHouse