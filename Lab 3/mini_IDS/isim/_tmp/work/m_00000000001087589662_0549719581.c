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
static int ng1[] = {0, 0};
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {0U, 0U};
static const char *ng5 = "%t ERROR: Attempt to write to full FIFO: %m";
static const char *ng6 = "%t ERROR: Attempt to read an empty FIFO: %m";



static void A55_0(char *t0)
{
    char t8[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int t7;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;

LAB0:    t1 = (t0 + 2468U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2904);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(55, ng0);

LAB5:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 1808);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t0 + 1992);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 1);
    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1900);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1808);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);

LAB6:    t5 = ((char*)((ng2)));
    t7 = xsi_vlog_unsigned_case_compare(t4, 1, t5, 1);
    if (t7 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng4)));
    t7 = xsi_vlog_unsigned_case_compare(t4, 1, t2, 1);
    if (t7 == 1)
        goto LAB9;

LAB10:
LAB11:    goto LAB2;

LAB7:    xsi_set_current_line(59, ng0);

LAB12:    xsi_set_current_line(60, ng0);
    t6 = (t0 + 1584U);
    t9 = *((char **)t6);
    memset(t8, 0, 8);
    t6 = (t8 + 4U);
    t10 = (t9 + 4U);
    t11 = *((unsigned int *)t10);
    t12 = (~(t11));
    t13 = *((unsigned int *)t9);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB16;

LAB14:    if (*((unsigned int *)t10) == 0)
        goto LAB13;

LAB15:    *((unsigned int *)t8) = 1;
    *((unsigned int *)t6) = 1;

LAB16:    t16 = (t8 + 4U);
    t17 = *((unsigned int *)t16);
    t18 = (~(t17));
    t19 = *((unsigned int *)t8);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB17;

LAB18:
LAB19:    goto LAB11;

LAB9:    xsi_set_current_line(66, ng0);

LAB21:    xsi_set_current_line(67, ng0);
    t3 = (t0 + 968U);
    t5 = *((char **)t3);
    t3 = (t5 + 4U);
    t11 = *((unsigned int *)t3);
    t12 = (~(t11));
    t13 = *((unsigned int *)t5);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB22;

LAB23:
LAB24:    goto LAB11;

LAB13:    *((unsigned int *)t8) = 1;
    goto LAB16;

LAB17:    xsi_set_current_line(60, ng0);

LAB20:    xsi_set_current_line(61, ng0);
    t22 = ((char*)((ng3)));
    t23 = (t0 + 1900);
    xsi_vlogvar_assign_value(t23, t22, 0, 0, 1);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1992);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB19;

LAB22:    xsi_set_current_line(67, ng0);

LAB25:    xsi_set_current_line(68, ng0);
    t6 = (t0 + 1584U);
    t9 = *((char **)t6);
    t6 = (t9 + 4U);
    t17 = *((unsigned int *)t6);
    t18 = (~(t17));
    t19 = *((unsigned int *)t9);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB26;

LAB27:    xsi_set_current_line(71, ng0);

LAB30:    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1900);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB28:    goto LAB24;

LAB26:    xsi_set_current_line(68, ng0);

LAB29:    xsi_set_current_line(69, ng0);
    t10 = ((char*)((ng3)));
    t16 = (t0 + 1992);
    xsi_vlogvar_assign_value(t16, t10, 0, 0, 1);
    goto LAB28;

}

static void A79_1(char *t0)
{
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

LAB0:    t1 = (t0 + 2596U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2912);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(79, ng0);

LAB5:    xsi_set_current_line(80, ng0);
    t3 = (t0 + 1408U);
    t4 = *((char **)t3);
    t3 = (t4 + 4U);
    t5 = *((unsigned int *)t3);
    t6 = (~(t5));
    t7 = *((unsigned int *)t4);
    t8 = (t7 & t6);
    t9 = (t8 != 0);
    if (t9 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(83, ng0);

LAB10:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 1992);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t10 = (t0 + 1808);
    xsi_vlogvar_generic_wait_assign_value(t10, t4, 2, 0, 0, 1, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(80, ng0);

LAB9:    xsi_set_current_line(81, ng0);
    t10 = ((char*)((ng2)));
    t11 = (t0 + 1808);
    xsi_vlogvar_generic_wait_assign_value(t11, t10, 2, 0, 0, 1, 0LL);
    goto LAB8;

}

static void A89_2(char *t0)
{
    char t5[8];
    char t18[8];
    char t25[8];
    char t63[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
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
    char *t16;
    char *t17;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    int t49;
    int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t64;
    char *t65;

LAB0:    t1 = (t0 + 2724U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 2920);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(90, ng0);

LAB5:    xsi_set_current_line(91, ng0);
    t3 = (t0 + 880U);
    t4 = *((char **)t3);
    memset(t5, 0, 8);
    t3 = (t5 + 4U);
    t6 = (t4 + 4U);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB6;

LAB7:    if (*((unsigned int *)t6) != 0)
        goto LAB8;

LAB9:    t12 = (t5 + 4U);
    t13 = *((unsigned int *)t5);
    t14 = *((unsigned int *)t12);
    t15 = (t13 || t14);
    if (t15 > 0)
        goto LAB10;

LAB11:    memcpy(t25, t5, 8);

LAB12:    t57 = (t25 + 4U);
    t58 = *((unsigned int *)t57);
    t59 = (~(t58));
    t60 = *((unsigned int *)t25);
    t61 = (t60 & t59);
    t62 = (t61 != 0);
    if (t62 > 0)
        goto LAB20;

LAB21:
LAB22:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 968U);
    t3 = *((char **)t2);
    memset(t5, 0, 8);
    t2 = (t5 + 4U);
    t4 = (t3 + 4U);
    t7 = *((unsigned int *)t4);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t4) != 0)
        goto LAB26;

LAB27:    t6 = (t5 + 4U);
    t13 = *((unsigned int *)t5);
    t14 = *((unsigned int *)t6);
    t15 = (t13 || t14);
    if (t15 > 0)
        goto LAB28;

LAB29:    memcpy(t25, t5, 8);

LAB30:    t64 = (t25 + 4U);
    t58 = *((unsigned int *)t64);
    t59 = (~(t58));
    t60 = *((unsigned int *)t25);
    t61 = (t60 & t59);
    t62 = (t61 != 0);
    if (t62 > 0)
        goto LAB38;

LAB39:
LAB40:    goto LAB2;

LAB6:    *((unsigned int *)t5) = 1;
    goto LAB9;

LAB8:    *((unsigned int *)t5) = 1;
    *((unsigned int *)t3) = 1;
    goto LAB9;

LAB10:    t16 = (t0 + 1144U);
    t17 = *((char **)t16);
    memset(t18, 0, 8);
    t16 = (t18 + 4U);
    t19 = (t17 + 4U);
    t20 = *((unsigned int *)t19);
    t21 = (~(t20));
    t22 = *((unsigned int *)t17);
    t23 = (t22 & t21);
    t24 = (t23 & 1U);
    if (t24 != 0)
        goto LAB13;

LAB14:    if (*((unsigned int *)t19) != 0)
        goto LAB15;

LAB16:    t26 = *((unsigned int *)t5);
    t27 = *((unsigned int *)t18);
    t28 = (t26 & t27);
    *((unsigned int *)t25) = t28;
    t29 = (t5 + 4U);
    t30 = (t18 + 4U);
    t31 = (t25 + 4U);
    t32 = *((unsigned int *)t29);
    t33 = *((unsigned int *)t30);
    t34 = (t32 | t33);
    *((unsigned int *)t31) = t34;
    t35 = *((unsigned int *)t31);
    t36 = (t35 != 0);
    if (t36 == 1)
        goto LAB17;

LAB18:
LAB19:    goto LAB12;

LAB13:    *((unsigned int *)t18) = 1;
    goto LAB16;

LAB15:    *((unsigned int *)t18) = 1;
    *((unsigned int *)t16) = 1;
    goto LAB16;

LAB17:    t37 = *((unsigned int *)t25);
    t38 = *((unsigned int *)t31);
    *((unsigned int *)t25) = (t37 | t38);
    t39 = (t5 + 4U);
    t40 = (t18 + 4U);
    t41 = *((unsigned int *)t5);
    t42 = (~(t41));
    t43 = *((unsigned int *)t39);
    t44 = (~(t43));
    t45 = *((unsigned int *)t18);
    t46 = (~(t45));
    t47 = *((unsigned int *)t40);
    t48 = (~(t47));
    t49 = (t42 & t44);
    t50 = (t46 & t48);
    t51 = (~(t49));
    t52 = (~(t50));
    t53 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t53 & t51);
    t54 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t54 & t52);
    t55 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t55 & t51);
    t56 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t56 & t52);
    goto LAB19;

LAB20:    xsi_set_current_line(91, ng0);

LAB23:    xsi_set_current_line(92, ng0);
    t64 = xsi_vlog_time(t63, 1000000.000000000, 1000.000000000000);
    xsi_vlogfile_write(1, 0, ng5, 2, t0, (char)118, t63, 64);
    goto LAB22;

LAB24:    *((unsigned int *)t5) = 1;
    goto LAB27;

LAB26:    *((unsigned int *)t5) = 1;
    *((unsigned int *)t2) = 1;
    goto LAB27;

LAB28:    t12 = (t0 + 1808);
    t16 = (t12 + 32U);
    t17 = *((char **)t16);
    memset(t18, 0, 8);
    t19 = (t18 + 4U);
    t29 = (t17 + 4U);
    t20 = *((unsigned int *)t29);
    t21 = (~(t20));
    t22 = *((unsigned int *)t17);
    t23 = (t22 & t21);
    t24 = (t23 & 1U);
    if (t24 != 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t29) != 0)
        goto LAB33;

LAB34:    t26 = *((unsigned int *)t5);
    t27 = *((unsigned int *)t18);
    t28 = (t26 & t27);
    *((unsigned int *)t25) = t28;
    t30 = (t5 + 4U);
    t31 = (t18 + 4U);
    t39 = (t25 + 4U);
    t32 = *((unsigned int *)t30);
    t33 = *((unsigned int *)t31);
    t34 = (t32 | t33);
    *((unsigned int *)t39) = t34;
    t35 = *((unsigned int *)t39);
    t36 = (t35 != 0);
    if (t36 == 1)
        goto LAB35;

LAB36:
LAB37:    goto LAB30;

LAB31:    *((unsigned int *)t18) = 1;
    goto LAB34;

LAB33:    *((unsigned int *)t18) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB34;

LAB35:    t37 = *((unsigned int *)t25);
    t38 = *((unsigned int *)t39);
    *((unsigned int *)t25) = (t37 | t38);
    t40 = (t5 + 4U);
    t57 = (t18 + 4U);
    t41 = *((unsigned int *)t5);
    t42 = (~(t41));
    t43 = *((unsigned int *)t40);
    t44 = (~(t43));
    t45 = *((unsigned int *)t18);
    t46 = (~(t45));
    t47 = *((unsigned int *)t57);
    t48 = (~(t47));
    t49 = (t42 & t44);
    t50 = (t46 & t48);
    t51 = (~(t49));
    t52 = (~(t50));
    t53 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t53 & t51);
    t54 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t54 & t52);
    t55 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t55 & t51);
    t56 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t56 & t52);
    goto LAB37;

LAB38:    xsi_set_current_line(94, ng0);

LAB41:    xsi_set_current_line(95, ng0);
    t65 = xsi_vlog_time(t63, 1000000.000000000, 1000.000000000000);
    xsi_vlogfile_write(1, 0, ng6, 2, t0, (char)118, t63, 64);
    goto LAB40;

}


extern void work_m_00000000001087589662_0549719581_init()
{
	static char *pe[] = {(void *)A55_0,(void *)A79_1,(void *)A89_2};
	xsi_register_didat("work_m_00000000001087589662_0549719581", "isim/_tmp/work/m_00000000001087589662_0549719581.didat");
	xsi_register_executes(pe);
}
