{ pkgs }:

self: super:

with { inherit (pkgs.stdenv) lib; };

with pkgs.haskell.lib;

{
  # aeson = self.callHackage "aeson" "1.4.0.0" {};
  #diffmap = self.callPackage ./diffmap.nix {}; 
  #snmp-tools = disableLibraryProfiling (self.callPackage ./snmp-tools.nix {});
  #non-empty-containers = self.callPackage ./non-empty-containers.nix {};
  #primitive-containers = self.callPackage ./primitive-containers.nix {};

  #primitive-sort = doJailbreak (dontCheck (self.callHackage "primitive-sort" "0.1.0.0" {})); 
  #siphon = dontCheck (self.callPackage ./siphon.nix {});
  #primitive = super.primitive_0_6_4_0;

  #contiguous = self.callPackage ./contiguous.nix {};
  #quantification = self.callPackage ./quantification.nix {};

  #socket = dontCheck (self.callPackage ./socket.nix {});
  #asn1-codec = dontCheck super.asn1-codec;

  #bytestring-encodings = dontCheck super.bytestring-encodings;
  
  #ip = dontCheck (self.callPackage ./ip.nix {});

  #quickcheck-classes = self.callPackage ./quickcheck-classes.nix {};
  
  kafka = (
    with rec {
      kafkaSource = pkgs.lib.cleanSource ../.;
      kafkaBasic = self.callCabal2nix "kafka" kafkaSource {};
    };
    overrideCabal kafkaBasic (old: {
    })
  );
}
