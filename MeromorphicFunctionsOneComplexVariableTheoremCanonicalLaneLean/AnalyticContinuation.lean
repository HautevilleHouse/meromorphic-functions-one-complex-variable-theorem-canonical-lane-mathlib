import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean

structure AnalyticContinuationPackage where
  initialFunction : ℂ → ℂ
  initialDomain : Set ℂ
  continuation : ℂ → ℂ
  continuationDomain : Set ℂ
  uniqueness : Prop
  monodromy : Prop
  identityTheorem : Prop

structure AnalyticContinuationEvidence (A : AnalyticContinuationPackage) where
  uniquenessClosed : A.uniqueness
  monodromyClosed : A.monodromy
  identityTheoremClosed : A.identityTheorem

def AnalyticContinuationClosed (A : AnalyticContinuationPackage) : Prop :=
  A.uniqueness ∧ A.monodromy ∧ A.identityTheorem

theorem analytic_continuation_closed_from_evidence (A : AnalyticContinuationPackage)
    (E : AnalyticContinuationEvidence A) : AnalyticContinuationClosed A := by
  exact And.intro E.uniquenessClosed
    (And.intro E.monodromyClosed E.identityTheoremClosed)

end MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean
end HautevilleHouse