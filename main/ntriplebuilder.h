#ifndef NTRIPLEBUILDER_H
#define NTRIPLEBUILDER_H

void ntriplebuilder_reporttokenerror();
typedef void (*ntriplebuilderspy_reporttokenerror_t)();
void ntriplebuilder_setreporttokenerror(ntriplebuilderspy_reporttokenerror_t);

#endif
