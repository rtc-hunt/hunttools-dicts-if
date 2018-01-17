{ mkDerivation, base, hunttools, hunttools-dicts-nonhask, stdenv }:
mkDerivation {
  pname = "hunttools-dicts-if";
  version = "0.1.0.0";
  src = ./.;
  patchPhase = ''
        cat > Paths_hunttools_dicts_non.hs <<-EOF
        module Paths_hunttools_dicts_non where
        getDataFileName a = return $ "${hunttools-dicts-nonhask}/" ++ a
        '';
  libraryHaskellDepends = [ base hunttools ];
  license = stdenv.lib.licenses.bsd3;
}
