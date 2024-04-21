test: ntriplesreader
	sh test.sh

ntriplesreader: lex.yy.c y.tab.c
	cc -o $@ $^

lex.yy.c: ntriplesreader.l y.tab.h
	lex $<

y.tab.h y.tab.c: ntriplesreader.y
	yacc -d $<
