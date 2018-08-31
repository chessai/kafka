{ mkDerivation, aeson, base, bifunctors, containers, fetchgit
, primitive, QuickCheck, semigroupoids, semigroups, semirings
, stdenv, tagged, transformers, vector
}:
mkDerivation {
  pname = "quickcheck-classes";
  version = "0.4.14.1";
  src = fetchgit {
    url = "https://github.com/andrewthad/quickcheck-classes.git";
    sha256 = "0h3dhjcxiz7ycams9vqwiv1rx0mlvqsqqkk9dq16a4fns767hdq8";
    rev = "fb9572553eeb7fe741017bea4ec964f4491eed20";
  };
  libraryHaskellDepends = [
    aeson base bifunctors containers primitive QuickCheck semigroupoids
    semigroups semirings tagged transformers
  ];
  testHaskellDepends = [
    aeson base containers primitive QuickCheck semigroupoids tagged
    transformers vector
  ];
  homepage = "https://github.com/andrewthad/quickcheck-classes#readme";
  description = "QuickCheck common typeclasses";
  license = stdenv.lib.licenses.bsd3;
}
