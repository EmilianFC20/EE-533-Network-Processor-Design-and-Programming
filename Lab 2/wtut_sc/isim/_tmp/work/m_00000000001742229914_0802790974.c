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
static const char *ng0 = "C:/Documents and Settings/All Users/Desktop/wtut_sc/cd4rled.vf";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};



static void A86_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 1440U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 1620);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(87, ng0);

LAB5:    xsi_set_current_line(88, ng0);
    t3 = (t0 + 740U);
    t4 = *((char **)t3);

LAB6:    t3 = ((char*)((ng1)));
    t5 = xsi_vlog_unsigned_case_compare(t4, 1, t3, 1);
    if (t5 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t5 = xsi_vlog_unsigned_case_compare(t4, 1, t2, 1);
    if (t5 == 1)
        goto LAB9;

LAB10:
LAB11:    goto LAB2;

LAB7:    xsi_set_current_line(89, ng0);
    t6 = (t0 + 564U);
    t7 = *((char **)t6);
    t6 = (t0 + 964);
    xsi_vlogvar_generic_wait_assign_value(t6, t7, 2, 0, 0, 1, 0LL);
    goto LAB11;

LAB9:    xsi_set_current_line(90, ng0);
    t3 = (t0 + 652U);
    t6 = *((char **)t3);
    t3 = (t0 + 964);
    xsi_vlogvar_generic_wait_assign_value(t3, t6, 2, 0, 0, 1, 0LL);
    goto LAB11;

}


extern void work_m_00000000001742229914_0802790974_init()
{
	static char *pe[] = {(void *)A86_0};
	xsi_register_didat("work_m_00000000001742229914_0802790974", "isim/_tmp/work/m_00000000001742229914_0802790974.didat");
	xsi_register_executes(pe);
}
