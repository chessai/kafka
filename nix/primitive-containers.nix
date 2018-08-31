{ mkDerivation, aeson, base, containers, contiguous, deepseq
, fetchgit, gauge, ghc-prim, hashable, HUnit, primitive
, primitive-sort, quantification, QuickCheck, quickcheck-classes
, random, stdenv, tasty, tasty-hunit, tasty-quickcheck, text
, unordered-containers, vector
}:
mkDerivation {
  pname = "primitive-containers";
  version = "0.3.0";
  src = fetchgit {
    url = "https://github.com/andrewthad/primitive-containers.git";
    sha256 = "0m0ii52labbx90z0h9n8b2znbm4rdbb6mznhnai8ziyjs8pkbys1";
    rev = "5141a39d5b4216fa963db5e03d4a6540a254654f";
  };
  libraryHaskellDepends = [
    aeson base contiguous deepseq hashable primitive primitive-sort
    quantification text unordered-containers vector
  ];
  testHaskellDepends = [
    aeson base containers HUnit primitive quantification QuickCheck
    quickcheck-classes tasty tasty-hunit tasty-quickcheck text
  ];
  benchmarkHaskellDepends = [
    base containers gauge ghc-prim primitive random
  ];
  homepage = "https://github.com/andrewthad/primitive-containers";
  description = "containers backed by arrays";
  license = stdenv.lib.licenses.bsd3;
}
