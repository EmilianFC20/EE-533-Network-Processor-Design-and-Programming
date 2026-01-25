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
static const char *ng0 = "C:/Documents and Settings/student/Desktop/ALU/ALU2/ALU2.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {4U, 0U};



static void A28_0(char *t0)
{
    char t8[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;

LAB0:    t1 = (t0 + 1440U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 1620);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(28, ng0);

LAB5:    xsi_set_current_line(29, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 964);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    xsi_set_current_line(31, ng0);
    t2 = (t0 + 740U);
    t3 = *((char **)t2);

LAB6:    t2 = ((char*)((ng1)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t5 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t5 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t5 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t5 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t5 == 1)
        goto LAB15;

LAB16:
LAB18:
LAB17:    xsi_set_current_line(47, ng0);

LAB31:    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 964);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 32);

LAB19:    goto LAB2;

LAB7:    xsi_set_current_line(32, ng0);

LAB20:    xsi_set_current_line(33, ng0);
    t4 = (t0 + 564U);
    t6 = *((char **)t4);
    t4 = (t0 + 652U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t6, 32, t7, 32);
    t4 = (t0 + 964);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 32);
    goto LAB19;

LAB9:    xsi_set_current_line(35, ng0);

LAB21:    xsi_set_current_line(36, ng0);
    t4 = (t0 + 564U);
    t6 = *((char **)t4);
    t4 = (t0 + 652U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_minus(t8, 32, t6, 32, t7, 32);
    t4 = (t0 + 964);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 32);
    goto LAB19;

LAB11:    xsi_set_current_line(38, ng0);

LAB22:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 564U);
    t6 = *((char **)t4);
    t4 = ((char*)((ng4)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_lshift(t8, 32, t6, 32, t4, 32);
    t7 = (t0 + 964);
    xsi_vlogvar_assign_value(t7, t8, 0, 0, 32);
    goto LAB19;

LAB13:    xsi_set_current_line(41, ng0);

LAB23:    xsi_set_current_line(42, ng0);
    t4 = (t0 + 564U);
    t6 = *((char **)t4);
    t4 = (t0 + 652U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t6);
    t10 = *((unsigned int *)t7);
    t11 = (t9 & t10);
    *((unsigned int *)t8) = t11;
    t4 = (t6 + 4U);
    t12 = (t7 + 4U);
    t13 = (t8 + 4U);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t12);
    t16 = (t14 | t15);
    *((unsigned int *)t13) = t16;
    t17 = *((unsigned int *)t13);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB24;

LAB25:
LAB26:    t39 = (t0 + 964);
    xsi_vlogvar_assign_value(t39, t8, 0, 0, 32);
    goto LAB19;

LAB15:    xsi_set_current_line(44, ng0);

LAB27:    xsi_set_current_line(45, ng0);
    t4 = (t0 + 564U);
    t6 = *((char **)t4);
    t4 = (t0 + 652U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t6);
    t10 = *((unsigned int *)t7);
    t11 = (t9 | t10);
    *((unsigned int *)t8) = t11;
    t4 = (t6 + 4U);
    t12 = (t7 + 4U);
    t13 = (t8 + 4U);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t12);
    t16 = (t14 | t15);
    *((unsigned int *)t13) = t16;
    t17 = *((unsigned int *)t13);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB28;

LAB29:
LAB30:    t39 = (t0 + 964);
    xsi_vlogvar_assign_value(t39, t8, 0, 0, 32);
    goto LAB19;

LAB24:    t19 = *((unsigned int *)t8);
    t20 = *((unsigned int *)t13);
    *((unsigned int *)t8) = (t19 | t20);
    t21 = (t6 + 4U);
    t22 = (t7 + 4U);
    t23 = *((unsigned int *)t6);
    t24 = (~(t23));
    t25 = *((unsigned int *)t21);
    t26 = (~(t25));
    t27 = *((unsigned int *)t7);
    t28 = (~(t27));
    t29 = *((unsigned int *)t22);
    t30 = (~(t29));
    t31 = (t24 & t26);
    t32 = (t28 & t30);
    t33 = (~(t31));
    t34 = (~(t32));
    t35 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t35 & t33);
    t36 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t36 & t34);
    t37 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t37 & t33);
    t38 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t38 & t34);
    goto LAB26;

LAB28:    t19 = *((unsigned int *)t8);
    t20 = *((unsigned int *)t13);
    *((unsigned int *)t8) = (t19 | t20);
    t21 = (t6 + 4U);
    t22 = (t7 + 4U);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t31 = (t25 & t24);
    t26 = *((unsigned int *)t22);
    t27 = (~(t26));
    t28 = *((unsigned int *)t7);
    t32 = (t28 & t27);
    t29 = (~(t31));
    t30 = (~(t32));
    t33 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t33 & t29);
    t34 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t34 & t30);
    goto LAB30;

}


extern void work_m_00000000001660281948_3662750778_init()
{
	static char *pe[] = {(void *)A28_0};
	xsi_register_didat("work_m_00000000001660281948_3662750778", "isim/_tmp/work/m_00000000001660281948_3662750778.didat");
	xsi_register_executes(pe);
}
