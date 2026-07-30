import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean

structure CauchyIntegralPackage where
  contourIntegralDefined : Prop
  cauchyIntegralFormula : Prop
  analyticityFromIntegral : Prop
  cauchyEstimates : Prop

structure CauchyIntegralEvidence (C : CauchyIntegralPackage) where
  contourIntegralDefinedClosed : C.contourIntegralDefined
  cauchyIntegralFormulaClosed : C.cauchyIntegralFormula
  analyticityFromIntegralClosed : C.analyticityFromIntegral
  cauchyEstimatesClosed : C.cauchyEstimates

def CauchyIntegralClosed (C : CauchyIntegralPackage) : Prop :=
  C.contourIntegralDefined ∧ C.cauchyIntegralFormula ∧ C.analyticityFromIntegral ∧ C.cauchyEstimates

theorem cauchy_integral_closed_from_evidence (C : CauchyIntegralPackage) (E : CauchyIntegralEvidence C) : CauchyIntegralClosed C := by
  exact And.intro E.contourIntegralDefinedClosed (And.intro E.cauchyIntegralFormulaClosed (And.intro E.analyticityFromIntegralClosed E.cauchyEstimatesClosed))

end MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean
end HautevilleHouse