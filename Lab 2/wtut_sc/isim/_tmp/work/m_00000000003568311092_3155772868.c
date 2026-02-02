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



static void A59_0(char *t0)
{
    char t17[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;

LAB0:    t1 = (t0 + 1792U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1972);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(60, ng0);

LAB5:    xsi_set_current_line(61, ng0);
    t3 = (t0 + 916U);
    t4 = *((char **)t3);
    t3 = (t4 + 4U);
    t5 = *((unsigned int *)t3);
    t6 = (~(t5));
    t7 = *((unsigned int *)t4);
    t8 = (t7 & t6);
    t9 = (t8 != 0);
    if (t9 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1004U);
    t3 = *((char **)t2);
    t2 = (t3 + 4U);
    t5 = *((unsigned int *)t2);
    t6 = (~(t5));
    t7 = *((unsigned int *)t3);
    t8 = (t7 & t6);
    t9 = (t8 != 0);
    if (t9 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 828U);
    t3 = *((char **)t2);
    t2 = (t3 + 4U);
    t5 = *((unsigned int *)t2);
    t6 = (~(t5));
    t7 = *((unsigned int *)t3);
    t8 = (t7 & t6);
    t9 = (t8 != 0);
    if (t9 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 652U);
    t3 = *((char **)t2);
    t2 = (t3 + 4U);
    t5 = *((unsigned int *)t2);
    t6 = (~(t5));
    t7 = *((unsigned int *)t3);
    t8 = (t7 & t6);
    t9 = (t8 != 0);
    if (t9 > 0)
        goto LAB15;

LAB16:
LAB17:
LAB14:
LAB11:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(62, ng0);
    t10 = ((char*)((ng1)));
    t11 = (t0 + 1316);
    xsi_vlogvar_generic_wait_assign_value(t11, t10, 2, 0, 0, 1, 0LL);
    goto LAB8;

LAB9:    xsi_set_current_line(64, ng0);
    t4 = ((char*)((ng2)));
    t10 = (t0 + 1316);
    xsi_vlogvar_generic_wait_assign_value(t10, t4, 2, 0, 0, 1, 0LL);
    goto LAB11;

LAB12:    xsi_set_current_line(66, ng0);
    t4 = (t0 + 740U);
    t10 = *((char **)t4);
    t4 = (t0 + 1316);
    xsi_vlogvar_generic_wait_assign_value(t4, t10, 2, 0, 0, 1, 0LL);
    goto LAB14;

LAB15:    xsi_set_current_line(68, ng0);
    t4 = (t0 + 1092U);
    t10 = *((char **)t4);
    t4 = (t10 + 4U);
    t12 = *((unsigned int *)t4);
    t13 = (~(t12));
    t14 = *((unsigned int *)t10);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB18;

LAB19:
LAB20:    goto LAB17;

LAB18:    xsi_set_current_line(69, ng0);
    t11 = (t0 + 1316);
    t18 = (t11 + 32U);
    t19 = *((char **)t18);
    memset(t17, 0, 8);
    t20 = (t17 + 4U);
    t21 = (t19 + 4U);
    t22 = *((unsigned int *)t21);
    t23 = (~(t22));
    t24 = *((unsigned int *)t19);
    t25 = (t24 & t23);
    t26 = (t25 & 1U);
    if (t26 != 0)
        goto LAB24;

LAB22:    if (*((unsigned int *)t21) == 0)
        goto LAB21;

LAB23:    *((unsigned int *)t17) = 1;
    *((unsigned int *)t20) = 1;

LAB24:    t27 = (t0 + 1316);
    xsi_vlogvar_generic_wait_assign_value(t27, t17, 2, 0, 0, 1, 0LL);
    goto LAB20;

LAB21:    *((unsigned int *)t17) = 1;
    goto LAB24;

}


extern void work_m_00000000003568311092_3155772868_init()
{
	static char *pe[] = {(void *)A59_0};
	xsi_register_didat("work_m_00000000003568311092_3155772868", "isim/_tmp/work/m_00000000003568311092_3155772868.didat");
	xsi_register_executes(pe);
}
