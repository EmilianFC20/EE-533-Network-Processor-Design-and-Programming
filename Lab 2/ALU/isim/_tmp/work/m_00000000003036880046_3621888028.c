/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2007 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

/* This file is designed for use with ISim build 0x734844ce */

#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Documents and Settings/student/Desktop/ALU/ifd32.vf";



static void A33_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;

LAB0:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1532);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(34, ng0);

LAB5:    xsi_set_current_line(35, ng0);
    t3 = (t0 + 652U);
    t4 = *((char **)t3);
    t3 = (t0 + 876);
    xsi_vlogvar_generic_wait_assign_value(t3, t4, 2, 0, 0, 16, 0LL);
    goto LAB2;

}


extern void work_m_00000000003036880046_3621888028_init()
{
	static char *pe[] = {(void *)A33_0};
	xsi_register_didat("work_m_00000000003036880046_3621888028", "isim/_tmp/work/m_00000000003036880046_3621888028.didat");
	xsi_register_executes(pe);
}
