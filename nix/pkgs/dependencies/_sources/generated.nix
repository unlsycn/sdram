# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  chisel = {
    pname = "chisel";
    version = "4c0c194710e75dd022c1c1eefa38734ccd5c6cd6";
    src = fetchFromGitHub {
      owner = "chipsalliance";
      repo = "chisel";
      rev = "4c0c194710e75dd022c1c1eefa38734ccd5c6cd6";
      fetchSubmodules = false;
      sha256 = "sha256-kOI8S9YX7nRsJ1vUPeuXZJfwVuE6hgKjCAJ+HDSkk4Y=";
    };
    date = "2024-08-28";
  };
  chisel-interface = {
    pname = "chisel-interface";
    version = "0d97ca7872f69cfcfb9ae1d72059bd62be606322";
    src = fetchFromGitHub {
      owner = "chipsalliance";
      repo = "chisel-interface";
      rev = "0d97ca7872f69cfcfb9ae1d72059bd62be606322";
      fetchSubmodules = false;
      sha256 = "sha256-R0F6AsxoKyFE334bF567er+InzQQMp9bLTlal/SgVhs=";
    };
    date = "2024-05-22";
  };
}
