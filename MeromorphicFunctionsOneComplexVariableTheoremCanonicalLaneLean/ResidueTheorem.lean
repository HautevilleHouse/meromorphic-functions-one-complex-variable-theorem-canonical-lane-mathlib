import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean

structure ResiduePackage where
  residueDefined : Prop
  residueTheorem : Prop
  argumentPrinciple : Prop
  rouchTheoreme : Prop

structure ResidueEvidence (R : ResiduePackage) where
  residueDefinedClosed : R.residueDefined
  residueTheoremClosed : R.residueTheorem
  argumentPrincipleClosed : R.argumentPrinciple
  rouchTheoremeClosed : R.rouchTheoreme

def ResidueClosed (R : ResiduePackage) : Prop :=
  R.residueDefined ∧ R.residueTheorem ∧ R.argumentPrinciple ∧ R.rouchTheoreme

theorem residue_closed_from_evidence (R : ResiduePackage) (E : ResidueEvidence R) : ResidueClosed R := by
  exact And.intro E.residueDefinedClosed (And.intro E.residueTheoremClosed (And.intro E.argumentPrincipleClosed E.rouchTheoremeClosed))

end MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean
end HautevilleHouse