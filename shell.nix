{ pkgs ? import <nixpkgs> { } }:
with pkgs;

mkShell {
  buildInputs = [
  	bundler
  	jekyll
	rubyPackages.jekyll-redirect-from
  ];
}
