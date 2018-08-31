{ mkDerivation, aeson, aeson-pretty, asn1-codec, async, base
, bytestring, colonnade, constrictor, containers, data-fix, dhall
, diffmap, directory, errors, fast-logger, filepath, ip
, non-empty-containers, optparse-applicative, primitive
, primitive-containers, siphon, stdenv, text, transformers, vector
}:
mkDerivation {
  pname = "snmp-tools";
  version = "0.1.0.0";
  src = ../../snmp-tools/.;
  libraryHaskellDepends = [
    aeson aeson-pretty asn1-codec async base bytestring colonnade
    constrictor containers data-fix dhall diffmap directory errors
    fast-logger filepath ip non-empty-containers optparse-applicative
    primitive primitive-containers siphon text transformers vector
  ];
  homepage = "https://github.com/layer-3-communications/snmp-tools";
  license = stdenv.lib.licenses.bsd3;
}
