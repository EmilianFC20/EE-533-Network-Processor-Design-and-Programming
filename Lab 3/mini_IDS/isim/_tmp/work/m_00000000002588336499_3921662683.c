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
static const char *ng0 = "C:/Documents and Settings/student/Desktop/mini_IDS/fallthrough_small_fifo_v2.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};
static int ng3[] = {2, 0};
static unsigned int ng4[] = {1U, 0U};
static int ng5[] = {9, 0};
static int ng6[] = {8, 0};
static int ng7[] = {4, 0};



static void A118_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;

LAB0:    t1 = (t0 + 2076U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 1992);
    xsi_process_wait(t2, 8000000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(118, ng0);
    t4 = (t0 + 1416);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t3 + 4U);
    t8 = (t6 + 4U);
    t9 = *((unsigned int *)t6);
    t10 = (~(t9));
    *((unsigned int *)t3) = t10;
    *((unsigned int *)t7) = 0;
    if (*((unsigned int *)t8) != 0)
        goto LAB6;

LAB5:    t15 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t15 & 1U);
    t16 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t16 & 1U);
    t17 = (t0 + 1416);
    xsi_vlogvar_assign_value(t17, t3, 0, 0, 1);
    goto LAB2;

LAB6:    t11 = *((unsigned int *)t3);
    t12 = *((unsigned int *)t8);
    *((unsigned int *)t3) = (t11 | t12);
    t13 = *((unsigned int *)t7);
    t14 = *((unsigned int *)t8);
    *((unsigned int *)t7) = (t13 | t14);
    goto LAB5;

}

static void A137_1(char *t0)
{
    char t7[8];
    char t15[8];
    char t17[8];
    char t19[8];
    char t23[8];
    char t25[8];
    char t27[8];
    char t29[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t16;
    char *t18;
    char *t20;
    char *t21;
    char *t22;
    char *t24;
    char *t26;
    char *t28;
    char *t30;

LAB0:    t1 = (t0 + 2204U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(137, ng0);
    t2 = (t0 + 2384);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(137, ng0);

LAB5:    xsi_set_current_line(138, ng0);
    t3 = (t0 + 1600);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng1)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t5, 32, t6, 32);
    t8 = (t0 + 1600);
    xsi_vlogvar_generic_wait_assign_value(t8, t7, 1, 0, 0, 32, 0LL);
    xsi_set_current_line(139, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1508);
    xsi_vlogvar_generic_wait_assign_value(t3, t2, 1, 0, 0, 1, 0LL);
    xsi_set_current_line(140, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1232);
    xsi_vlogvar_generic_wait_assign_value(t3, t2, 1, 0, 0, 1, 0LL);
    xsi_set_current_line(141, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1324);
    xsi_vlogvar_generic_wait_assign_value(t3, t2, 1, 0, 0, 1, 0LL);
    xsi_set_current_line(142, ng0);
    t2 = (t0 + 1600);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t7, 0, 8);
    xsi_vlog_signed_less(t7, 32, t4, 32, t5, 32);
    t6 = (t7 + 4U);
    t9 = *((unsigned int *)t6);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(145, ng0);
    t2 = (t0 + 1600);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    t6 = ((char*)((ng5)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t5, 32, t6, 32);
    memset(t15, 0, 8);
    xsi_vlog_signed_less(t15, 32, t4, 32, t7, 32);
    t8 = (t15 + 4U);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t15);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(149, ng0);
    t2 = (t0 + 1600);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    t6 = ((char*)((ng6)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t5, 32, t6, 32);
    t8 = ((char*)((ng7)));
    memset(t15, 0, 8);
    xsi_vlog_signed_add(t15, 32, t7, 32, t8, 32);
    memset(t17, 0, 8);
    xsi_vlog_signed_less(t17, 32, t4, 32, t15, 32);
    t14 = (t17 + 4U);
    t9 = *((unsigned int *)t14);
    t10 = (~(t9));
    t11 = *((unsigned int *)t17);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB14;

LAB15:    xsi_set_current_line(152, ng0);
    t2 = (t0 + 1600);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    t6 = ((char*)((ng6)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t5, 32, t6, 32);
    t8 = ((char*)((ng7)));
    memset(t15, 0, 8);
    xsi_vlog_signed_add(t15, 32, t7, 32, t8, 32);
    t14 = ((char*)((ng3)));
    memset(t17, 0, 8);
    xsi_vlog_signed_add(t17, 32, t15, 32, t14, 32);
    memset(t19, 0, 8);
    xsi_vlog_signed_less(t19, 32, t4, 32, t17, 32);
    t16 = (t19 + 4U);
    t9 = *((unsigned int *)t16);
    t10 = (~(t9));
    t11 = *((unsigned int *)t19);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(156, ng0);
    t2 = (t0 + 1600);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    t6 = ((char*)((ng6)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t5, 32, t6, 32);
    t8 = ((char*)((ng7)));
    memset(t15, 0, 8);
    xsi_vlog_signed_add(t15, 32, t7, 32, t8, 32);
    t14 = ((char*)((ng3)));
    memset(t17, 0, 8);
    xsi_vlog_signed_add(t17, 32, t15, 32, t14, 32);
    t16 = ((char*)((ng6)));
    memset(t19, 0, 8);
    xsi_vlog_signed_add(t19, 32, t17, 32, t16, 32);
    memset(t23, 0, 8);
    xsi_vlog_signed_less(t23, 32, t4, 32, t19, 32);
    t18 = (t23 + 4U);
    t9 = *((unsigned int *)t18);
    t10 = (~(t9));
    t11 = *((unsigned int *)t23);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB22;

LAB23:    xsi_set_current_line(161, ng0);
    t2 = (t0 + 1600);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    t6 = ((char*)((ng6)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t5, 32, t6, 32);
    t8 = ((char*)((ng7)));
    memset(t15, 0, 8);
    xsi_vlog_signed_add(t15, 32, t7, 32, t8, 32);
    t14 = ((char*)((ng3)));
    memset(t17, 0, 8);
    xsi_vlog_signed_add(t17, 32, t15, 32, t14, 32);
    t16 = ((char*)((ng6)));
    memset(t19, 0, 8);
    xsi_vlog_signed_add(t19, 32, t17, 32, t16, 32);
    t18 = ((char*)((ng7)));
    memset(t23, 0, 8);
    xsi_vlog_signed_add(t23, 32, t19, 32, t18, 32);
    memset(t25, 0, 8);
    xsi_vlog_signed_less(t25, 32, t4, 32, t23, 32);
    t20 = (t25 + 4U);
    t9 = *((unsigned int *)t20);
    t10 = (~(t9));
    t11 = *((unsigned int *)t25);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB26;

LAB27:    xsi_set_current_line(164, ng0);
    t2 = (t0 + 1600);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    t6 = ((char*)((ng6)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t5, 32, t6, 32);
    t8 = ((char*)((ng7)));
    memset(t15, 0, 8);
    xsi_vlog_signed_add(t15, 32, t7, 32, t8, 32);
    t14 = ((char*)((ng3)));
    memset(t17, 0, 8);
    xsi_vlog_signed_add(t17, 32, t15, 32, t14, 32);
    t16 = ((char*)((ng6)));
    memset(t19, 0, 8);
    xsi_vlog_signed_add(t19, 32, t17, 32, t16, 32);
    t18 = ((char*)((ng7)));
    memset(t23, 0, 8);
    xsi_vlog_signed_add(t23, 32, t19, 32, t18, 32);
    t20 = ((char*)((ng6)));
    memset(t25, 0, 8);
    xsi_vlog_signed_add(t25, 32, t23, 32, t20, 32);
    memset(t27, 0, 8);
    xsi_vlog_signed_less(t27, 32, t4, 32, t25, 32);
    t21 = (t27 + 4U);
    t9 = *((unsigned int *)t21);
    t10 = (~(t9));
    t11 = *((unsigned int *)t27);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB30;

LAB31:
LAB32:
LAB28:
LAB24:
LAB20:
LAB16:
LAB12:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(142, ng0);

LAB9:    xsi_set_current_line(143, ng0);
    t8 = ((char*)((ng4)));
    t14 = (t0 + 1508);
    xsi_vlogvar_generic_wait_assign_value(t14, t8, 2, 0, 0, 1, 0LL);
    goto LAB8;

LAB10:    xsi_set_current_line(145, ng0);

LAB13:    xsi_set_current_line(146, ng0);
    t14 = ((char*)((ng1)));
    t16 = (t0 + 1232);
    xsi_vlogvar_generic_wait_assign_value(t16, t14, 1, 0, 0, 1, 0LL);
    xsi_set_current_line(147, ng0);
    t2 = (t0 + 1140);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_unsigned_add(t7, 32, t4, 32, t5, 32);
    t6 = (t0 + 1140);
    xsi_vlogvar_generic_wait_assign_value(t6, t7, 2, 0, 0, 32, 0LL);
    goto LAB12;

LAB14:    xsi_set_current_line(149, ng0);

LAB17:    xsi_set_current_line(150, ng0);
    t16 = ((char*)((ng1)));
    t18 = (t0 + 1324);
    xsi_vlogvar_generic_wait_assign_value(t18, t16, 1, 0, 0, 1, 0LL);
    goto LAB16;

LAB18:    xsi_set_current_line(152, ng0);

LAB21:    xsi_set_current_line(153, ng0);
    t18 = (t0 + 1140);
    t20 = (t18 + 32U);
    t21 = *((char **)t20);
    t22 = ((char*)((ng4)));
    memset(t23, 0, 8);
    xsi_vlog_unsigned_add(t23, 32, t21, 32, t22, 32);
    t24 = (t0 + 1140);
    xsi_vlogvar_generic_wait_assign_value(t24, t23, 2, 0, 0, 32, 0LL);
    xsi_set_current_line(154, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1232);
    xsi_vlogvar_generic_wait_assign_value(t3, t2, 2, 0, 0, 1, 0LL);
    goto LAB20;

LAB22:    xsi_set_current_line(156, ng0);

LAB25:    xsi_set_current_line(157, ng0);
    t20 = (t0 + 1140);
    t21 = (t20 + 32U);
    t22 = *((char **)t21);
    t24 = ((char*)((ng4)));
    memset(t25, 0, 8);
    xsi_vlog_unsigned_add(t25, 32, t22, 32, t24, 32);
    t26 = (t0 + 1140);
    xsi_vlogvar_generic_wait_assign_value(t26, t25, 2, 0, 0, 32, 0LL);
    xsi_set_current_line(158, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1232);
    xsi_vlogvar_generic_wait_assign_value(t3, t2, 2, 0, 0, 1, 0LL);
    xsi_set_current_line(159, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1324);
    xsi_vlogvar_generic_wait_assign_value(t3, t2, 2, 0, 0, 1, 0LL);
    goto LAB24;

LAB26:    xsi_set_current_line(161, ng0);

LAB29:    xsi_set_current_line(162, ng0);
    t21 = ((char*)((ng4)));
    t22 = (t0 + 1324);
    xsi_vlogvar_generic_wait_assign_value(t22, t21, 2, 0, 0, 1, 0LL);
    goto LAB28;

LAB30:    xsi_set_current_line(164, ng0);

LAB33:    xsi_set_current_line(165, ng0);
    t22 = (t0 + 1140);
    t24 = (t22 + 32U);
    t26 = *((char **)t24);
    t28 = ((char*)((ng4)));
    memset(t29, 0, 8);
    xsi_vlog_unsigned_add(t29, 32, t26, 32, t28, 32);
    t30 = (t0 + 1140);
    xsi_vlogvar_generic_wait_assign_value(t30, t29, 2, 0, 0, 32, 0LL);
    xsi_set_current_line(166, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1232);
    xsi_vlogvar_generic_wait_assign_value(t3, t2, 2, 0, 0, 1, 0LL);
    xsi_set_current_line(167, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1324);
    xsi_vlogvar_generic_wait_assign_value(t3, t2, 2, 0, 0, 1, 0LL);
    goto LAB32;

}


extern void work_m_00000000002588336499_3921662683_init()
{
	static char *pe[] = {(void *)A118_0,(void *)A137_1};
	xsi_register_didat("work_m_00000000002588336499_3921662683", "isim/_tmp/work/m_00000000002588336499_3921662683.didat");
	xsi_register_executes(pe);
}
