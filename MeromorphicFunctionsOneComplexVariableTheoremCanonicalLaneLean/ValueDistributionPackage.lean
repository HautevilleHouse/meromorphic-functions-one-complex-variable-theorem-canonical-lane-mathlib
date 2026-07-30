import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean

structure ValueDistributionPackage where
  functionField : ℂ → ℂ
  targetValue : ℂ
  preimageSize : ℕ → Prop
  deficiency : ℂ → ℝ
  picardTheorem : Prop
  nevanlinnaCharacteristic : Prop
  defectRelation : Prop

structure ValueDistributionEvidence (V : ValueDistributionPackage) where
  picardTheoremClosed : V.picardTheorem
  nevanlinnaCharacteristicClosed : V.nevanlinnaCharacteristic
  defectRelationClosed : V.defectRelation

def ValueDistributionClosed (V : ValueDistributionPackage) : Prop :=
  V.picardTheorem ∧ V.nevanlinnaCharacteristic ∧ V.defectRelation

theorem value_distribution_closed_from_evidence (V : ValueDistributionPackage)
    (E : ValueDistributionEvidence V) : ValueDistributionClosed V := by
  exact And.intro E.picardTheoremClosed
    (And.intro E.nevanlinnaCharacteristicClosed E.defectRelationClosed)

end MeromorphicFunctionsOneComplexVariableTheoremCanonicalLaneLean
end HautevilleHouse