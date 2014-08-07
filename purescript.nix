{ cabal, cmdtheline, filepath, haskeline, monadUnify, mtl, parsec
, patternArrows, time, transformers, unorderedContainers
, utf8String, xdgBasedir
}:

cabal.mkDerivation (self: {
  pname = "purescript";
  version = "0.5.4";
  sha256 = "02mxg9bsyzhr7xclf7jdsjjwcc6d05ibji64n9783rc1i9clc2gg";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    cmdtheline filepath haskeline monadUnify mtl parsec patternArrows
    time transformers unorderedContainers utf8String xdgBasedir
  ];
  doCheck = false;
  testDepends = [ filepath mtl parsec transformers utf8String ];
  meta = {
    homepage = "http://www.purescript.org/";
    description = "PureScript Programming Language Compiler";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
  };
})
