{ mkDerivation, aeson, attoparsec, base, bytestring, criterion
, deepseq, doctest, fetchgit, hashable, hspec, HUnit, primitive
, QuickCheck, quickcheck-classes, stdenv, test-framework
, test-framework-hunit, test-framework-quickcheck2, text, vector
}:
mkDerivation {
  pname = "ip";
  version = "1.4.1";
  src = fetchgit {
    url = "https://github.com/andrewthad/haskell-ip.git";
    sha256 = "18xnl8xsg9n6j5qls8g0kknx43j3jr8lynnyjws7g1jkl64mhs0g";
    rev = "f3a237e9f009e1241e88ba2a272953c63d129776";
  };
  libraryHaskellDepends = [
    aeson attoparsec base bytestring deepseq hashable primitive text
    vector
  ];
  testHaskellDepends = [
    attoparsec base bytestring doctest hspec HUnit QuickCheck
    quickcheck-classes test-framework test-framework-hunit
    test-framework-quickcheck2 text
  ];
  benchmarkHaskellDepends = [
    attoparsec base bytestring criterion text
  ];
  homepage = "https://github.com/andrewthad/haskell-ip#readme";
  description = "Library for IP and MAC addresses";
  license = stdenv.lib.licenses.bsd3;
}
