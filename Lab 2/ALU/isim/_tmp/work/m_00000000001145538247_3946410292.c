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
static const char *ng0 = "C:/Documents and Settings/student/Desktop/ALU/mux8_8bit.vf";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {5U, 0U};
static unsigned int ng7[] = {6U, 0U};
static unsigned int ng8[] = {7U, 0U};



static void A43_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    int t20;

LAB0:    t1 = (t0 + 2232U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2412);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(44, ng0);

LAB5:    xsi_set_current_line(45, ng0);
    t4 = (t0 + 1268U);
    t5 = *((char **)t4);
    memset(t3, 0, 8);
    t4 = (t3 + 4U);
    t6 = (t5 + 4U);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t6) == 0)
        goto LAB6;

LAB8:    *((unsigned int *)t3) = 1;
    *((unsigned int *)t4) = 1;

LAB9:    t12 = (t3 + 4U);
    t13 = *((unsigned int *)t12);
    t14 = (~(t13));
    t15 = *((unsigned int *)t3);
    t16 = (t15 & t14);
    t17 = (t16 != 0);
    if (t17 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(48, ng0);

LAB13:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1356U);
    t4 = *((char **)t2);
    t2 = (t0 + 1444U);
    t5 = *((char **)t2);
    t2 = (t0 + 1532U);
    t6 = *((char **)t2);
    xsi_vlogtype_concat(t3, 3, 3, 3U, t6, 1, t5, 1, t4, 1);

LAB14:    t2 = ((char*)((ng1)));
    t20 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t20 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng2)));
    t20 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t20 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng3)));
    t20 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t20 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng4)));
    t20 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t20 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng5)));
    t20 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t20 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng6)));
    t20 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t20 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng7)));
    t20 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t20 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng8)));
    t20 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t20 == 1)
        goto LAB29;

LAB30:
LAB31:
LAB12:    goto LAB2;

LAB6:    *((unsigned int *)t3) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(46, ng0);
    t18 = ((char*)((ng1)));
    t19 = (t0 + 1756);
    xsi_vlogvar_generic_wait_assign_value(t19, t18, 2, 0, 0, 1, 0LL);
    goto LAB12;

LAB15:    xsi_set_current_line(50, ng0);
    t12 = (t0 + 564U);
    t18 = *((char **)t12);
    t12 = (t0 + 1756);
    xsi_vlogvar_generic_wait_assign_value(t12, t18, 2, 0, 0, 1, 0LL);
    goto LAB31;

LAB17:    xsi_set_current_line(51, ng0);
    t4 = (t0 + 652U);
    t5 = *((char **)t4);
    t4 = (t0 + 1756);
    xsi_vlogvar_generic_wait_assign_value(t4, t5, 2, 0, 0, 1, 0LL);
    goto LAB31;

LAB19:    xsi_set_current_line(52, ng0);
    t4 = (t0 + 740U);
    t5 = *((char **)t4);
    t4 = (t0 + 1756);
    xsi_vlogvar_generic_wait_assign_value(t4, t5, 2, 0, 0, 1, 0LL);
    goto LAB31;

LAB21:    xsi_set_current_line(53, ng0);
    t4 = (t0 + 828U);
    t5 = *((char **)t4);
    t4 = (t0 + 1756);
    xsi_vlogvar_generic_wait_assign_value(t4, t5, 2, 0, 0, 1, 0LL);
    goto LAB31;

LAB23:    xsi_set_current_line(54, ng0);
    t4 = (t0 + 916U);
    t5 = *((char **)t4);
    t4 = (t0 + 1756);
    xsi_vlogvar_generic_wait_assign_value(t4, t5, 2, 0, 0, 1, 0LL);
    goto LAB31;

LAB25:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 1004U);
    t5 = *((char **)t4);
    t4 = (t0 + 1756);
    xsi_vlogvar_generic_wait_assign_value(t4, t5, 2, 0, 0, 1, 0LL);
    goto LAB31;

LAB27:    xsi_set_current_line(56, ng0);
    t4 = (t0 + 1092U);
    t5 = *((char **)t4);
    t4 = (t0 + 1756);
    xsi_vlogvar_generic_wait_assign_value(t4, t5, 2, 0, 0, 1, 0LL);
    goto LAB31;

LAB29:    xsi_set_current_line(57, ng0);
    t4 = (t0 + 1180U);
    t5 = *((char **)t4);
    t4 = (t0 + 1756);
    xsi_vlogvar_generic_wait_assign_value(t4, t5, 2, 0, 0, 1, 0LL);
    goto LAB31;

}


extern void work_m_00000000001145538247_3946410292_init()
{
	static char *pe[] = {(void *)A43_0};
	xsi_register_didat("work_m_00000000001145538247_3946410292", "isim/_tmp/work/m_00000000001145538247_3946410292.didat");
	xsi_register_executes(pe);
}
