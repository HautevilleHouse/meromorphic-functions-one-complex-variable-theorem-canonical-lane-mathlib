import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean

structure ValueDistributionPackage where
  functionSpace : Type u
  complexPlane : Type v
  complexTopology : TopologicalSpace complexPlane
  picardLittleTheorem : Prop
  picardGreatTheorem : Prop
  nevanlinnaTheory : Prop
  defectRelation : Prop

structure ValueDistributionEvidence (V : ValueDistributionPackage) where
  picardLittleTheoremClosed : V.picardLittleTheorem
  picardGreatTheoremClosed : V.picardGreatTheorem
  nevanlinnaTheoryClosed : V.nevanlinnaTheory
  defectRelationClosed : V.defectRelation

def ValueDistributionClosed (V : ValueDistributionPackage) : Prop :=
  V.picardLittleTheorem ∧ V.picardGreatTheorem ∧ V.nevanlinnaTheory ∧ V.defectRelation

theorem value_distribution_closed_from_evidence (V : ValueDistributionPackage) (E : ValueDistributionEvidence V) :
    ValueDistributionClosed V := by
  exact And.intro E.picardLittleTheoremClosed (And.intro E.picardGreatTheoremClosed (And.intro E.nevanlinnaTheoryClosed E.defectRelationClosed))

end MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean
end HautevilleHouse