test: ntriplesreader_test
	sh test.sh $(shell find tests/* -type d)

ntriplesreader_test: lex.yy.c y.tab.c ntriplesbuildermock.c
	cc -o $@ $^

lex.yy.c: ntriplesreader.l y.tab.h
	lex $<

y.tab.h y.tab.c: ntriplesreader.y
	yacc -d $<
