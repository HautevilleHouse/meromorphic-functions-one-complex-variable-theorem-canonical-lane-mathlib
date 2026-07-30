import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean

structure MeromorphicAdmittedObject where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : Type v
  meromorphicFunction : domain → ℂ
  poles : Set domain
  isolatedPoles : Set.IsolatedPoles poles
  essentialSingularities : Set domain
  conclusion : Prop

def MeromorphicWitnessClosed (O : MeromorphicAdmittedObject) : Prop :=
  O.conclusion

structure AdmissibleClass where
  object : MeromorphicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MeromorphicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean
end HautevilleHouse