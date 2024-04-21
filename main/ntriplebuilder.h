#ifndef NTRIPLEBUILDER_H
#define NTRIPLEBUILDER_H

void ntriplebuilder_clearstatement();
void ntriplebuilder_buildstatement();
void ntriplebuilder_buildsubject();
void ntriplebuilder_clearsubject();
void ntriplebuilder_buildpredicate();
void ntriplebuilder_clearpredicate();
void ntriplebuilder_clearobject();
void ntriplebuilder_buildobject();
void ntriplebuilder_clearliteral();
void ntriplebuilder_buildliteral();
void ntriplebuilder_cleardatatype();
void ntriplebuilder_builddatatype();
void ntriplebuilder_addstring(const char *);
void ntriplebuilder_adduri(const char *);

#endif
