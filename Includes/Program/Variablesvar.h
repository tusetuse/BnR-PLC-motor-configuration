/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1713912787_1_
#define _BUR_1713912787_1_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL float poloha[3];
_BUR_LOCAL struct MC_MoveAdditive MC_MoveAdditive_2;
_BUR_LOCAL struct MC_MoveAdditive MC_MoveAdditive_1;
_BUR_LOCAL struct MC_MoveAdditive MC_MoveAdditive_0;
_BUR_LOCAL struct MC_MoveAbsolute MC_MoveAbsolute_2;
_BUR_LOCAL struct MC_MoveAbsolute MC_MoveAbsolute_1;
_BUR_LOCAL struct MC_MoveAbsolute MC_MoveAbsolute_0;
_BUR_LOCAL struct MC_ReadActualPosition MC_ReadActualPosition_2;
_BUR_LOCAL struct MC_ReadActualPosition MC_ReadActualPosition_1;
_BUR_LOCAL struct MC_ReadActualPosition MC_ReadActualPosition_0;
_BUR_LOCAL struct MC_MoveVelocity MC_MoveVelocity_2;
_BUR_LOCAL struct MC_MoveVelocity MC_MoveVelocity_1;
_BUR_LOCAL struct MC_MoveVelocity MC_MoveVelocity_0;
_BUR_LOCAL struct MC_Stop MC_Stop_2;
_BUR_LOCAL struct MC_Stop MC_Stop_1;
_BUR_LOCAL struct MC_Stop MC_Stop_0;
_BUR_LOCAL struct MC_Home MC_Home_2;
_BUR_LOCAL struct MC_Home MC_Home_1;
_BUR_LOCAL struct MC_Home MC_Home_0;
_BUR_LOCAL struct MC_Power MC_Power_2;
_BUR_LOCAL struct MC_Power MC_Power_1;
_BUR_LOCAL struct MC_Power MC_Power_0;
_BUR_LOCAL float pozicia[3];
_BUR_LOCAL float vzdialenost[3];
_BUR_LOCAL plcbit stop;
_BUR_LOCAL plcbit start_additive;
_BUR_LOCAL plcbit start_absolute;
_BUR_LOCAL plcbit start_continual;
_BUR_LOCAL plcbit power_on_off;
_BUR_LOCAL unsigned short stav;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Program/Variables.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/Acp10_MC/acp10_mc.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1713912787_1_ */

