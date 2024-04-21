#ifndef NTRIPLESBUILDER_H
#define NTRIPLESBUILDER_H

void ntriplesbuilder_clearstatement();
void ntriplesbuilder_buildstatement();
void ntriplesbuilder_buildsubject();
void ntriplesbuilder_clearsubject();
void ntriplesbuilder_buildpredicate();
void ntriplesbuilder_clearpredicate();
void ntriplesbuilder_clearobject();
void ntriplesbuilder_buildobject();
void ntriplesbuilder_clearliteral();
void ntriplesbuilder_buildliteral();
void ntriplesbuilder_cleardatatype();
void ntriplesbuilder_builddatatype();
void ntriplesbuilder_addstring(const char *);
void ntriplesbuilder_adduri(const char *);

#endif
