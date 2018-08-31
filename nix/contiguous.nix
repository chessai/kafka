{ mkDerivation, base, deepseq, fetchgit, primitive, stdenv }:
mkDerivation {
  pname = "contiguous";
  version = "0.2.0.0";
  src = fetchgit {
    url = "https://github.com/andrewthad/contiguous.git";
    sha256 = "1lwa4jh2ycr3nc6g3jgsgig0fs8hkx7481n4kalc1vkvxqkiqx85";
    rev = "9f765c6e536ce31e1daabcbc49717e06f15e6174";
  };
  libraryHaskellDepends = [ base deepseq primitive ];
  homepage = "https://github.com/andrewthad/contiguous";
  description = "Unified interface for primitive arrays";
  license = stdenv.lib.licenses.bsd3;
}
