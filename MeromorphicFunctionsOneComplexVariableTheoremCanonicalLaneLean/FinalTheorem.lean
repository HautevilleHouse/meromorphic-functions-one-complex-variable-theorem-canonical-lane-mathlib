import canonicalLaneMathlib.AdmissibleClass
import MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean.CauchyIntegralPackage
import MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean.AnalyticContinuation
import MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean.MeromorphicFunctionStructure
import MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean.ValueDistributionPackage
import MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean.RiemannMappingPackage

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CauchyIntegralClosed A.object ∧ AnalyticContinuationClosed A.object

def gateClosed (A : AdmissibleClass) : Prop :=
  MeromorphicFunctionClosed A.object ∧ ValueDistributionClosed A.object ∧ RiemannMappingClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  sorry

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  sorry

def ConstrainedMeromorphicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_meromorphic_endgame (A : AdmissibleClass) :
    ConstrainedMeromorphicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean
end HautevilleHouse