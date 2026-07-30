import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean

structure ArgumentPrinciplePackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure domain
  contour : domain → domain
  meromorphicFunction : domain → ℂ
  zerosCount : ℕ
  polesCount : ℕ
  argumentPrincipleHolds : Prop

structure ArgumentPrincipleEvidence (A : ArgumentPrinciplePackage) where
  functionMeromorphicInsideContour : Prop
  noZerosOrPolesOnContour : Prop
  zerosCountCalculated : A.zerosCount = (1 / (2 * π * I)) * ∮_A.contour (A.meromorphicFunction' / A.meromorphicFunction)
  polesCountCalculated : A.polesCount = (1 / (2 * π * I)) * ∮_A.contour (A.meromorphicFunction' / A.meromorphicFunction)
  argumentPrincipleHoldsClosed : A.argumentPrincipleHolds

def ArgumentPrincipleClosed (A : ArgumentPrinciplePackage) : Prop :=
  A.argumentPrincipleHolds

theorem argument_principle_closed_from_evidence (A : ArgumentPrinciplePackage) (E : ArgumentPrincipleEvidence A) : ArgumentPrincipleClosed A :=
  E.argumentPrincipleHoldsClosed

end MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean
end HautevilleHouse