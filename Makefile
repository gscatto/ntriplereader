test: ntriplereader_test
	sh test.sh $(shell find tests/* -type d)

ntriplereader_test: lex.yy.c y.tab.c ntriplebuildermock.c
	cc -o $@ $^

lex.yy.c: ntriplereader.l y.tab.h
	lex $<

y.tab.h y.tab.c: ntriplereader.y
	yacc -d $<
