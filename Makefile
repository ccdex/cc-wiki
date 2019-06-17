all: clean
	@cd docs; make all
	./docs/lang.sh

clean:
	rm site -rf
	@cd docs; make clean
