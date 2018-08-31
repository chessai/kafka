{ mkDerivation, aeson, base, binary, containers, fetchgit, ghc-prim
, hashable, path-pieces, stdenv, text, unordered-containers, vector
}:
mkDerivation {
  pname = "quantification";
  version = "0.5.0";
  src = fetchgit {
    url = "https://github.com/andrewthad/quantification.git";
    sha256 = "1dik2yxqmbpabspf0syz2zm88fhbd1j2bmmnxk42pbrkw2l6glj9";
    rev = "fc0c9334687560f28840a295ac6645766fe9e8e7";
  };
  libraryHaskellDepends = [
    aeson base binary containers ghc-prim hashable path-pieces text
    unordered-containers vector
  ];
  homepage = "https://github.com/andrewthad/quantification#readme";
  description = "Rage against the quantification";
  license = stdenv.lib.licenses.bsd3;
}
