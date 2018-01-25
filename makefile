all:
	ocaml setup.ml -build

clean:
	$(RM) myocamlbuild.ml setup.data setup.log setup.ml
	$(RM) -rf _build
	oasis setup
	ocaml setup.ml -configure
