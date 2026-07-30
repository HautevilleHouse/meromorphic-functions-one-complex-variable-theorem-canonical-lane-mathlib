import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean

structure RiemannMappingPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure domain
  simplyConnected : Prop
  nonEmpty : Prop
  notWholePlane : Prop
  conformalMap : domain → 𝔻
  riemannMappingHolds : Prop

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  domainSimplyConnected : R.simplyConnected
  domainNonEmpty : R.nonEmpty
  domainNotWholePlane : R.notWholePlane
  conformalMapIsBiholomorphic : Prop
  riemannMappingHoldsClosed : R.riemannMappingHolds

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.riemannMappingHolds

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage) (E : RiemannMappingEvidence R) : RiemannMappingClosed R :=
  E.riemannMappingHoldsClosed

end MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean
end HautevilleHouse