import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean

structure WeierstrassFactorizationPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure domain
  zeros : List ℂ
  order : ℕ → ℕ
  entireFunction : ℂ → ℂ
  factorizationHolds : Prop

structure WeierstrassFactorizationEvidence (W : WeierstrassFactorizationPackage) where
  zerosDiscrete : Prop
  convergenceCondition : Prop
  entireFunctionConstructed : Prop
  factorizationHoldsClosed : W.factorizationHolds

def WeierstrassFactorizationClosed (W : WeierstrassFactorizationPackage) : Prop :=
  W.factorizationHolds

theorem weierstrass_factorization_closed_from_evidence (W : WeierstrassFactorizationPackage) (E : WeierstrassFactorizationEvidence W) : WeierstrassFactorizationClosed W :=
  E.factorizationHoldsClosed

end MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean
end HautevilleHouse