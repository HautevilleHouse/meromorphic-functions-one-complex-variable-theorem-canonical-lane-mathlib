import HautevilleHouse.MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean.ComplexPlaneAdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean

structure CauchyTheoryPackage where
  contourIntegral : Type
  cauchyIntegralFormula : Prop
  residueTheorem : Prop
  analyticContinuation : Prop
  maximumModulus : Prop

structure CauchyTheoryEvidence (C : CauchyTheoryPackage) where
  cauchyIntegralFormulaClosed : C.cauchyIntegralFormula
  residueTheoremClosed : C.residueTheorem
  analyticContinuationClosed : C.analyticContinuation
  maximumModulusClosed : C.maximumModulus

def CauchyTheoryClosed (C : CauchyTheoryPackage) : Prop :=
  C.cauchyIntegralFormula ∧ C.residueTheorem ∧ C.analyticContinuation ∧ C.maximumModulus

theorem cauchy_theory_closed_from_evidence (C : CauchyTheoryPackage) (E : CauchyTheoryEvidence C) : CauchyTheoryClosed C :=
  And.intro E.cauchyIntegralFormulaClosed
    (And.intro E.residueTheoremClosed
      (And.intro E.analyticContinuationClosed E.maximumModulusClosed))

end MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean
end HautevilleHouse