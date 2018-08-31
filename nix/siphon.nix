{ mkDerivation, attoparsec, base, bytestring, colonnade
, contravariant, doctest, either, fetchgit, HUnit, pipes
, profunctors, QuickCheck, stdenv, streaming, test-framework
, test-framework-hunit, test-framework-quickcheck2, text
, transformers, vector
}:
mkDerivation {
  pname = "siphon";
  version = "0.8.1";
  src = fetchgit {
    url = "https://github.com/andrewthad/colonnade";
    sha256 = "0g1d0a5l2g1dx3kaf650j0igb3hckdgcry35g6d4kvb34fdzfmlb";
    rev = "d17193baae256f3617f91b33d5c54bc4678a18ad";
  };
  postUnpack = "sourceRoot+=/siphon; echo source root reset to $sourceRoot";
  libraryHaskellDepends = [
    attoparsec base bytestring colonnade streaming text transformers
    vector
  ];
  testHaskellDepends = [
    base bytestring colonnade contravariant doctest either HUnit pipes
    profunctors QuickCheck streaming test-framework
    test-framework-hunit test-framework-quickcheck2 text
  ];
  homepage = "https://github.com/andrewthad/colonnade#readme";
  description = "Encode and decode CSV files";
  license = stdenv.lib.licenses.bsd3;
}
