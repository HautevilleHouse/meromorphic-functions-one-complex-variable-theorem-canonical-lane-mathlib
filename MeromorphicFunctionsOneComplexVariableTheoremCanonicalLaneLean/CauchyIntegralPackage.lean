import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean

structure CauchyIntegralPackage where
  domain : Type u
  complexStructure : ℂ
  contour : ℂ → ℂ
  integralFormula : Prop
  cauchyKernel : Prop
  windingNumber : Prop
  homotopyInvariance : Prop

structure CauchyIntegralEvidence (C : CauchyIntegralPackage) where
  integralFormulaClosed : C.integralFormula
  cauchyKernelClosed : C.cauchyKernel
  windingNumberClosed : C.windingNumber
  homotopyInvarianceClosed : C.homotopyInvariance

def CauchyIntegralClosed (C : CauchyIntegralPackage) : Prop :=
  C.integralFormula ∧ C.cauchyKernel ∧ C.windingNumber ∧ C.homotopyInvariance

theorem cauchy_integral_closed_from_evidence (C : CauchyIntegralPackage)
    (E : CauchyIntegralEvidence C) : CauchyIntegralClosed C := by
  exact And.intro E.integralFormulaClosed
    (And.intro E.cauchyKernelClosed
      (And.intro E.windingNumberClosed E.homotopyInvarianceClosed))

end MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean
end HautevilleHouse