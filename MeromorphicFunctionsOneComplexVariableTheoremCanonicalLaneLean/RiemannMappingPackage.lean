import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean

structure RiemannMappingPackage where
  sourceDomain : Set ℂ
  targetDisk : Set ℂ
  conformalMap : ℂ → ℂ
  bijectivity : Prop
  boundaryBehavior : Prop
  existence : Prop
  uniqueness : Prop

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  existenceClosed : R.existence
  uniquenessClosed : R.uniqueness
  boundaryBehaviorClosed : R.boundaryBehavior

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.existence ∧ R.uniqueness ∧ R.boundaryBehavior

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage)
    (E : RiemannMappingEvidence R) : RiemannMappingClosed R := by
  exact And.intro E.existenceClosed
    (And.intro E.uniquenessClosed E.boundaryBehaviorClosed)

end MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean
end HautevilleHouse