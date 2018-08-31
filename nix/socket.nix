{ mkDerivation, async, base, bytestring, fetchgit, QuickCheck
, stdenv, tasty, tasty-hunit, tasty-quickcheck
}:
mkDerivation {
  pname = "socket";
  version = "0.8.1.0";
  src = fetchgit {
    url = "https://github.com/lpeterse/haskell-socket";
    sha256 = "13h4haxp95zzgy5mk7b1p9q95ikk0ny0jvwf849dl1jwk4d72gvm";
    rev = "910d8b14a7d3f295c68f3220061462f90b3df9e6";
  };
  libraryHaskellDepends = [ base bytestring ];
  testHaskellDepends = [
    async base bytestring QuickCheck tasty tasty-hunit tasty-quickcheck
  ];
  homepage = "https://github.com/lpeterse/haskell-socket";
  description = "An extensible socket library";
  license = stdenv.lib.licenses.mit;
}
