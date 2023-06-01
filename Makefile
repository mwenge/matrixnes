.PHONY: all clean run

NES_IMAGE = "bin/matrix.nes"
ONLINE_NES_IMAGE = "docs/matrix.nes"
FCEUX = fceux

all: clean run

matrix.nes:
	ca65 -g src/matrix.asm -l bin/matrix.lst -o bin/matrix.o
	ld65 -o $(NES_IMAGE) -C matrix.cfg -m bin/matrix.map.txt bin/matrix.o -Ln bin/matrix.labels.txt --dbgfile bin/matrix.nes.test.dbg
	cp ${NES_IMAGE} ${ONLINE_NES_IMAGE}
	python3 fceux_symbols.py

run: matrix.nes
	$(FCEUX) $(NES_IMAGE)

clean:
	-rm $(NES_IMAGE)
	-rm bin/*.txt
	-rm bin/*.o
	-rm bin/*.nl
	-rm bin/*.lst
	-rm bin/*.dbg
