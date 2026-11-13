{
  lib,
  fetchFromGitHub,
  php,
}:

php.buildComposerProject2 (finalAttrs: {
  pname = "pest";
  version = "5.3.5";

  src = fetchFromGitHub {
    owner = "pestphp";
    repo = "pest";
    tag = "v${finalAttrs.version}";
    hash = "sha256-VpDALGva4yE8nndntVtCXqsv3mmDhIDm/XJXA6g7crM";
  };

  composerLock = ./composer.lock;
  vendorHash = "sha256-PsE6yRZgLPFJndNj48hvJ9oEfOcfppFLAIEEuTbJpJc";

  meta = {
    changelog = "https://github.com/pestphp/pest/releases/tag/v${finalAttrs.version}";
    description = "PHP testing framework";
    homepage = "https://pestphp.com";
    license = lib.licenses.mit;
    mainProgram = "pest";
    maintainers = [ lib.maintainers.patka ];
  };
})
