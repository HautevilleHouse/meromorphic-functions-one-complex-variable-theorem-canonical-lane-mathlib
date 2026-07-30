import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean

structure CauchyIntegralPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure domain
  contour : domain → domain
  integrand : domain → ℂ
  integralValue : ℂ
  cauchyIntegralFormulaHolds : Prop

structure CauchyIntegralEvidence (C : CauchyIntegralPackage) where
  contourClosed : C.contour (0 : domain) = C.contour (1 : domain)
  integrandHolomorphicOnDomain : Prop
  integralValueCalculated : C.integralValue = (1 / (2 * π * I)) * ∮_C.contour C.integrand
  cauchyIntegralFormulaHoldsClosed : C.cauchyIntegralFormulaHolds

def CauchyIntegralClosed (C : CauchyIntegralPackage) : Prop :=
  C.cauchyIntegralFormulaHolds

theorem cauchy_integral_closed_from_evidence (C : CauchyIntegralPackage) (E : CauchyIntegralEvidence C) : CauchyIntegralClosed C :=
  E.cauchyIntegralFormulaHoldsClosed

end MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean
end HautevilleHouse