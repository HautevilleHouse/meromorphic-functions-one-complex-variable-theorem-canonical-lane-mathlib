import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean

structure MeromorphicFunctionPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : Type v
  isolatedSingularities : Prop
  laurentExpansion : Prop
  residueTheorem : Prop
  meromorphicOnCompact : Prop

structure MeromorphicFunctionEvidence (M : MeromorphicFunctionPackage) where
  isolatedSingularitiesClosed : M.isolatedSingularities
  laurentExpansionClosed : M.laurentExpansion
  residueTheoremClosed : M.residueTheorem
  meromorphicOnCompactClosed : M.meromorphicOnCompact

def MeromorphicFunctionClosed (M : MeromorphicFunctionPackage) : Prop :=
  M.isolatedSingularities ∧ M.laurentExpansion ∧ M.residueTheorem ∧ M.meromorphicOnCompact

theorem meromorphic_function_closed_from_evidence (M : MeromorphicFunctionPackage) (E : MeromorphicFunctionEvidence M) :
    MeromorphicFunctionClosed M := by
  exact And.intro E.isolatedSingularitiesClosed (And.intro E.laurentExpansionClosed (And.intro E.residueTheoremClosed E.meromorphicOnCompactClosed))

end MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean
end HautevilleHouse