import HautevilleHouse.MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean.ComplexPlaneAdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  IsMeromorphic A.object.meromorphicFunction A.object.domain

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.isolatedPolesOnly

end MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean
end HautevilleHouse