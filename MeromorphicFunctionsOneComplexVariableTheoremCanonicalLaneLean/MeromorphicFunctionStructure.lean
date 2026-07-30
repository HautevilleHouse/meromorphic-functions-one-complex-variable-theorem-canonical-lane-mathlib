import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean

structure MeromorphicFunctionStructure where
  domain : Set ℂ
  holomorphicOn : ℂ → ℂ → Prop
  poleSet : Set ℂ
  laurentExpansion : ℂ × ℕ → ℂ  -- (point, order) -> coefficient
  residue : ℂ → ℂ
  isolatedSingularities : Prop
  principalPart : Prop

structure MeromorphicFunctionEvidence (M : MeromorphicFunctionStructure) where
  isolatedSingularitiesClosed : M.isolatedSingularities
  principalPartClosed : M.principalPart

def MeromorphicFunctionClosed (M : MeromorphicFunctionStructure) : Prop :=
  M.isolatedSingularities ∧ M.principalPart

theorem meromorphic_function_closed_from_evidence (M : MeromorphicFunctionStructure)
    (E : MeromorphicFunctionEvidence M) : MeromorphicFunctionClosed M := by
  exact And.intro E.isolatedSingularitiesClosed E.principalPartClosed

end MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean
end HautevilleHouse