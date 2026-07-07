import StableBorelConjectureCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace StableBorelConjectureCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked,
    A.object.theoremObjectChecked,
    A.object.controlledAssemblyWitness,
    A.object.topologicalBridgeWitness,
    A.object.sourceIndexedBridgeWitness,
    A.object.classicalRemainderCarried⟩

end StableBorelConjectureCanonicalLaneLean
end HautevilleHouse
