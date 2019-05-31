all:
	@cd docs; make all

clean:
	rm site -rf
	@cd docs; make clean
