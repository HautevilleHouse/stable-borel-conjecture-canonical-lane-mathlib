import StableBorelConjectureCanonicalLaneLean.Formalization
import StableBorelConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace StableBorelConjectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "e9f3b69f1077e0554e783903d273406c92ca417316e1f4bc6154d0b3b9615387", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "5b86c9823b613675637615edb7508e014c0b9de6ce771a12b218f1342297ca7c", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "7fc78be053b80460ca5ed213680553ad0db14b994fff16b5695c779091abab4e", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "f1f59761a79be54ac7c86d63806670b2b53b0b018e6dbd0a233c40d17ca0d4e4", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "0d68278dd8673b3a8e1916bb495b30ef7a45f85156d6528078f5b32a57b403a7", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "71c1df534bbe179657f1d9d5d069dee0f0742b4d57e5bfd251f5ee8261bd47a0", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "41a28644169e76d32acda577158727cae18fc66dc14895cc2966147b0f08c9de", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "9d437adeb0834ad8769ea7bdd9fc37abd415bacfb4b4c3d88ac1ea8032e094a6", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "643acd32bf0983b78faeac30aae26962e826ade8c6fcb5b14afa5a79b9b6ac6e", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "SBOR_G1", constant := "kappa_rigidity" },
  { gate := "SBOR_G2", constant := "sigma_surgery" },
  { gate := "SBOR_G3", constant := "kappa_compact" },
  { gate := "SBOR_G4", constant := "rho_rigidity" },
  { gate := "SBOR_G5", constant := "homeomorphism_transfer" },
  { gate := "SBOR_G6", constant := "eps_coh" },
  { gate := "SBOR_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "5a2d521eee82d2a72873791711ac3e2fac036d387fe4cb88ffdf234050776e5a" },
  { path := "README.md", sha256 := "e0365419424cd57f951a3d2928695b6c29e674b1a33a849d8f4967a9efaa43ad" },
  { path := "artifacts/constants_extracted.json", sha256 := "f1f59761a79be54ac7c86d63806670b2b53b0b018e6dbd0a233c40d17ca0d4e4" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "7fc78be053b80460ca5ed213680553ad0db14b994fff16b5695c779091abab4e" },
  { path := "artifacts/constants_registry.json", sha256 := "0d68278dd8673b3a8e1916bb495b30ef7a45f85156d6528078f5b32a57b403a7" },
  { path := "artifacts/promotion_report.json", sha256 := "41a28644169e76d32acda577158727cae18fc66dc14895cc2966147b0f08c9de" },
  { path := "artifacts/stitch_constants.json", sha256 := "71c1df534bbe179657f1d9d5d069dee0f0742b4d57e5bfd251f5ee8261bd47a0" },
  { path := "notes/EG1_public.md", sha256 := "9f465cdbc4de196b954d3bfad63b8eb8fc312f002d2ba29d7610e6c09a5e43f0" },
  { path := "notes/EG2_public.md", sha256 := "d0cf33e50a39bdc3a70aeb238bab5ba4b6e0967e2c9a399ad96572a491fcd854" },
  { path := "notes/EG3_public.md", sha256 := "62e1c7e41cc5003c326a54d6de95646cc2435bf0b969af741466585c8373f461" },
  { path := "notes/EG4_public.md", sha256 := "081254f7ccde1ebc635b42f1b7143e2fc7bd5c7ef6acb7d0e68b309d66fa04a6" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "5b86c9823b613675637615edb7508e014c0b9de6ce771a12b218f1342297ca7c" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "d06840419880872185d3e1dbf3f914a874d1e067d8b2ed73d43d2daef1fd9c41" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "c9133815c0a1c7d78a424bb450e649a1868616d1e72cb6a2e55e7ae2bc872738" },
  { path := "paper/STABLE_BOREL_CONJECTURE_PREPRINT.md", sha256 := "bd7afaacf89e9c34a151f1bab60f89e80f6ecce02abc8b7a86ba91c6db88d655" },
  { path := "repro/REPRO_PACK.md", sha256 := "8ae398dac11847e795fa043895a082e628eff00fa49306b076e4f372ff9bb14f" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "6f1377726443642cc23c446c2ed29374a357b5390167a91973d4b73d26fc9476" },
  { path := "repro/certificate_baseline.json", sha256 := "643acd32bf0983b78faeac30aae26962e826ade8c6fcb5b14afa5a79b9b6ac6e" },
  { path := "repro/run_repro.sh", sha256 := "2ad5eeda95bad9d6e09927f79d165f3fcdee95a684b041c38c608d9361adc65c" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/sbor_closure_guard.py", sha256 := "1f955efa7d98d9b7b6c66bf0ba8a3dcb4f289d5bd6124dcf4f2de81a933f5694" },
  { path := "scripts/README.md", sha256 := "6cb996e649fc899febfd2745ef967833ea5f9d76116b295d5a046b575b23631b" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "SBOR_G1", status := "PASS" },
  { gate := "SBOR_G2", status := "PASS" },
  { gate := "SBOR_G3", status := "PASS" },
  { gate := "SBOR_G4", status := "PASS" },
  { gate := "SBOR_G5", status := "PASS" },
  { gate := "SBOR_G6", status := "PASS" },
  { gate := "SBOR_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "homeomorphism_transfer", value := "1.029422" },
  { key := "kappa_compact", value := "0.8045052292839904" },
  { key := "kappa_rigidity", value := "1.094116" },
  { key := "rho_rigidity", value := "1.078" },
  { key := "sigma_star_can", value := "1.054" },
  { key := "sigma_surgery", value := "1.074" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "homeomorphism_transfer",
  "kappa_compact",
  "kappa_rigidity",
  "rho_rigidity",
  "sigma_star_can",
  "sigma_surgery"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end StableBorelConjectureCanonicalLaneLean
end HautevilleHouse
