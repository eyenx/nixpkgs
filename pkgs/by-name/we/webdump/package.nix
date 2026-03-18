{
  lib,
  fetchgit,
  installShellFiles,
  stdenv
}:

stdenv.mkDerivation {
  pname = "webdump";
  version = "0.1";

  src = fetchgit {
    url = "git://git.codemadness.org/webdump";
    hash = "sha256-uchBdaRo5r7MJOD+kdeS6F8Gv6zM9xrxLE+Ges0DysA=";
  };

  installPhase = ''
    make install DESTDIR=$out
  '';

  meta = {
    homepage = "https://www.codemadness.org/git/webdump";
    description = "HTML to plain-text converter for webpages";
    license = lib.licenses.isc;
    maintainers = with lib.maintainers; [ eyenx ];
    mainProgram = "webdump";
  };
}
