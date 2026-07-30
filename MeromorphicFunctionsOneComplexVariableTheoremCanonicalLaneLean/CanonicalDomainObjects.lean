import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableTheorem

structure MeromorphicFunctionObject where
  domain : Type
  complexStructure : Instances.ComplexDomain domain
  meromorphicFunction : domain → ℂ
  poles : Set domain
  isolatedPoles : Prop
  analyticOnComplement : Prop

def MeromorphicWitnessClosed (O : MeromorphicFunctionObject) : Prop :=
  O.analyticOnComplement ∧ O.isolatedPoles

end MeromorphicFunctionsOneComplexVariableTheorem
end HautevilleHouse