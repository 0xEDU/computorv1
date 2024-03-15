NAME = computor

build:
	@cabal build
	@mv ./dist-newstyle/build/x86_64-linux/ghc-9.4.8/computorv1-0.1.0.0/x/computor/build/computor/computor .

run:
	@cabal run

clean:
	@cabal clean
	@rm -rf computor

fclean: clean
	@rm -rf dist-newstyle

.PHONY: build run clean fclean
