import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean

structure MeromorphicObject where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure domain
  domainOpen : IsOpen (Set.univ : Set domain)
  meromorphicFunction : domain → ℂ
  isolatedSingularities : Set domain
  isolatedPolesOnly : ∀ x, x ∈ isolatedSingularities → IsPole (meromorphicFunction) x

structure AdmissibleClass where
  object : MeromorphicObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean
end HautevilleHouse