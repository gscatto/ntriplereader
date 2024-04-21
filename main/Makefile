lex.yy.c: main/ntriplereader.l y.tab.h
	lex $<

y.tab.h y.tab.c: main/ntriplereader.y
	yacc -d $<
