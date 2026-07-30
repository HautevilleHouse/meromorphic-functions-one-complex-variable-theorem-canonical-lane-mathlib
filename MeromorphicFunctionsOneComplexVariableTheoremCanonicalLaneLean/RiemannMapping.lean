import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean

structure RiemannMappingPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : Type v
  simplyConnected : Prop
  conformalMappingExists : Prop
  uniqueness : Prop

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  simplyConnectedClosed : R.simplyConnected
  conformalMappingExistsClosed : R.conformalMappingExists
  uniquenessClosed : R.uniqueness

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.simplyConnected ∧ R.conformalMappingExists ∧ R.uniqueness

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage) (E : RiemannMappingEvidence R) :
    RiemannMappingClosed R := by
  exact And.intro E.simplyConnectedClosed (And.intro E.conformalMappingExistsClosed E.uniquenessClosed)

end MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean
end HautevilleHouse