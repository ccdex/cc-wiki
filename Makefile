<<<<<<< HEAD
all:
	@cd docs; make all
=======
all: clean
	@cd docs; make all
	./docs/lang.sh
>>>>>>> b3fedd534562c3181e8c83b881b5cc37b76e42b9

clean:
	rm site -rf
	@cd docs; make clean
