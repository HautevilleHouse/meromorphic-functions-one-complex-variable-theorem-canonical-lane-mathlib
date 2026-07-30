import HautevilleHouse.MeromorphicFunctionsOneComplexVariableTheorem.CanonicalDomainObjects

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableTheorem

structure AnalyticContinuationPackage where
  directAnalyticContinuation : Prop
  monodromyTheorem : Prop
  globalAnalyticFunction : Prop

structure AnalyticContinuationEvidence (A : AnalyticContinuationPackage) where
  directAnalyticContinuationClosed : A.directAnalyticContinuation
  monodromyTheoremClosed : A.monodromyTheorem
  globalAnalyticFunctionClosed : A.globalAnalyticFunction

def AnalyticContinuationClosed (A : AnalyticContinuationPackage) : Prop :=
  A.directAnalyticContinuation ∧ A.monodromyTheorem ∧ A.globalAnalyticFunction

theorem analytic_continuation_closed_from_evidence (A : AnalyticContinuationPackage) (E : AnalyticContinuationEvidence A) : AnalyticContinuationClosed A :=
  And.intro E.directAnalyticContinuationClosed (And.intro E.monodromyTheoremClosed E.globalAnalyticFunctionClosed)

end MeromorphicFunctionsOneComplexVariableTheorem
end HautevilleHouse