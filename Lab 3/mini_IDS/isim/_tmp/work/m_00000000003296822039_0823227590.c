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
static const char *ng0 = "C:/Documents and Settings/student/Desktop/mini_IDS/small_fifo.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static const char *ng3 = "";
static const char *ng4 = " ERROR: Attempt to write to full FIFO: %m";
static const char *ng5 = " ERROR: Attempt to read an empty FIFO: %m";



static void A44_0(char *t0)
{
    char t12[8];
    char t13[8];
    char t34[24];
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
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    int t25;
    char *t26;
    unsigned int t27;
    int t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    int t32;
    int t33;

LAB0:    t1 = (t0 + 2552U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 3372);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(45, ng0);

LAB5:    xsi_set_current_line(46, ng0);
    t3 = (t0 + 956U);
    t4 = *((char **)t3);
    t3 = (t4 + 4U);
    t5 = *((unsigned int *)t3);
    t6 = (~(t5));
    t7 = *((unsigned int *)t4);
    t8 = (t7 & t6);
    t9 = (t8 != 0);
    if (t9 > 0)
        goto LAB6;

LAB7:
LAB8:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1044U);
    t3 = *((char **)t2);
    t2 = (t3 + 4U);
    t5 = *((unsigned int *)t2);
    t6 = (~(t5));
    t7 = *((unsigned int *)t3);
    t8 = (t7 & t6);
    t9 = (t8 != 0);
    if (t9 > 0)
        goto LAB11;

LAB12:
LAB13:    goto LAB2;

LAB6:    xsi_set_current_line(47, ng0);
    t10 = (t0 + 868U);
    t11 = *((char **)t10);
    t10 = (t0 + 1800);
    t14 = (t0 + 1800);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    t17 = (t0 + 1800);
    t18 = (t17 + 36U);
    t19 = *((char **)t18);
    t20 = (t0 + 1984);
    t21 = (t20 + 32U);
    t22 = *((char **)t21);
    xsi_vlog_generic_convert_array_indices(t12, t13, t16, t19, 2, 1, t22, 2, 2);
    t23 = (t12 + 4U);
    t24 = *((unsigned int *)t23);
    t25 = (!(t24));
    t26 = (t13 + 4U);
    t27 = *((unsigned int *)t26);
    t28 = (!(t27));
    t29 = (t25 && t28);
    if (t29 == 1)
        goto LAB9;

LAB10:    goto LAB8;

LAB9:    t30 = *((unsigned int *)t12);
    t31 = *((unsigned int *)t13);
    t32 = (t30 - t31);
    t33 = (t32 + 1);
    xsi_vlogvar_generic_wait_assign_value(t10, t11, 2, 0, *((unsigned int *)t13), t33, 0LL);
    goto LAB10;

LAB11:    xsi_set_current_line(49, ng0);
    t4 = (t0 + 1800);
    t10 = (t4 + 32U);
    t11 = *((char **)t10);
    t14 = (t0 + 1800);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    t17 = (t0 + 1800);
    t18 = (t17 + 36U);
    t19 = *((char **)t18);
    t20 = (t0 + 1892);
    t21 = (t20 + 32U);
    t22 = *((char **)t21);
    xsi_vlog_generic_get_array_select_value(t34, 72, t11, t16, t19, 2, 1, t22, 2, 2);
    t23 = (t0 + 1708);
    xsi_vlogvar_generic_wait_assign_value(t23, t34, 2, 0, 0, 72, 1000000LL);
    goto LAB13;

}

static void A56_1(char *t0)
{
    char t13[8];
    char t18[8];
    char t57[8];
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
    char *t12;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    int t39;
    int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t58;

LAB0:    t1 = (t0 + 2680U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 3380);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(57, ng0);

LAB5:    xsi_set_current_line(58, ng0);
    t3 = (t0 + 1396U);
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

LAB10:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 956U);
    t3 = *((char **)t2);
    t2 = (t3 + 4U);
    t5 = *((unsigned int *)t2);
    t6 = (~(t5));
    t7 = *((unsigned int *)t3);
    t8 = (t7 & t6);
    t9 = (t8 != 0);
    if (t9 > 0)
        goto LAB11;

LAB12:
LAB13:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 1044U);
    t3 = *((char **)t2);
    t2 = (t3 + 4U);
    t5 = *((unsigned int *)t2);
    t6 = (~(t5));
    t7 = *((unsigned int *)t3);
    t8 = (t7 & t6);
    t9 = (t8 != 0);
    if (t9 > 0)
        goto LAB14;

LAB15:
LAB16:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 956U);
    t3 = *((char **)t2);
    t2 = (t0 + 1044U);
    t4 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4U);
    t10 = (t4 + 4U);
    t5 = *((unsigned int *)t4);
    t6 = (~(t5));
    *((unsigned int *)t13) = t6;
    *((unsigned int *)t2) = 0;
    if (*((unsigned int *)t10) != 0)
        goto LAB18;

LAB17:    t16 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t16 & 1U);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 & 1U);
    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t13);
    t21 = (t19 & t20);
    *((unsigned int *)t18) = t21;
    t11 = (t3 + 4U);
    t12 = (t13 + 4U);
    t14 = (t18 + 4U);
    t22 = *((unsigned int *)t11);
    t23 = *((unsigned int *)t12);
    t24 = (t22 | t23);
    *((unsigned int *)t14) = t24;
    t25 = *((unsigned int *)t14);
    t26 = (t25 != 0);
    if (t26 == 1)
        goto LAB19;

LAB20:
LAB21:    t47 = (t18 + 4U);
    t48 = *((unsigned int *)t47);
    t49 = (~(t48));
    t50 = *((unsigned int *)t18);
    t51 = (t50 & t49);
    t52 = (t51 != 0);
    if (t52 > 0)
        goto LAB22;

LAB23:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 956U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4U);
    t4 = (t3 + 4U);
    t5 = *((unsigned int *)t3);
    t6 = (~(t5));
    *((unsigned int *)t13) = t6;
    *((unsigned int *)t2) = 0;
    if (*((unsigned int *)t4) != 0)
        goto LAB26;

LAB25:    t16 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t16 & 1U);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 & 1U);
    t10 = (t0 + 1044U);
    t11 = *((char **)t10);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t11);
    t21 = (t19 & t20);
    *((unsigned int *)t18) = t21;
    t10 = (t13 + 4U);
    t12 = (t11 + 4U);
    t14 = (t18 + 4U);
    t22 = *((unsigned int *)t10);
    t23 = *((unsigned int *)t12);
    t24 = (t22 | t23);
    *((unsigned int *)t14) = t24;
    t25 = *((unsigned int *)t14);
    t26 = (t25 != 0);
    if (t26 == 1)
        goto LAB27;

LAB28:
LAB29:    t47 = (t18 + 4U);
    t48 = *((unsigned int *)t47);
    t49 = (~(t48));
    t50 = *((unsigned int *)t18);
    t51 = (t50 & t49);
    t52 = (t51 != 0);
    if (t52 > 0)
        goto LAB30;

LAB31:
LAB32:
LAB24:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(58, ng0);

LAB9:    xsi_set_current_line(59, ng0);
    t10 = ((char*)((ng1)));
    t11 = (t0 + 1892);
    xsi_vlogvar_generic_wait_assign_value(t11, t10, 2, 0, 0, 2, 0LL);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1984);
    xsi_vlogvar_generic_wait_assign_value(t3, t2, 2, 0, 0, 2, 0LL);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2076);
    xsi_vlogvar_generic_wait_assign_value(t3, t2, 2, 0, 0, 3, 0LL);
    goto LAB8;

LAB11:    xsi_set_current_line(64, ng0);
    t4 = (t0 + 1984);
    t10 = (t4 + 32U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng2)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 32, t11, 2, t12, 32);
    t14 = (t0 + 1984);
    xsi_vlogvar_generic_wait_assign_value(t14, t13, 2, 0, 0, 2, 0LL);
    goto LAB13;

LAB14:    xsi_set_current_line(65, ng0);
    t4 = (t0 + 1892);
    t10 = (t4 + 32U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng2)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 32, t11, 2, t12, 32);
    t14 = (t0 + 1892);
    xsi_vlogvar_generic_wait_assign_value(t14, t13, 2, 0, 0, 2, 0LL);
    goto LAB16;

LAB18:    t7 = *((unsigned int *)t13);
    t8 = *((unsigned int *)t10);
    *((unsigned int *)t13) = (t7 | t8);
    t9 = *((unsigned int *)t2);
    t15 = *((unsigned int *)t10);
    *((unsigned int *)t2) = (t9 | t15);
    goto LAB17;

LAB19:    t27 = *((unsigned int *)t18);
    t28 = *((unsigned int *)t14);
    *((unsigned int *)t18) = (t27 | t28);
    t29 = (t3 + 4U);
    t30 = (t13 + 4U);
    t31 = *((unsigned int *)t3);
    t32 = (~(t31));
    t33 = *((unsigned int *)t29);
    t34 = (~(t33));
    t35 = *((unsigned int *)t13);
    t36 = (~(t35));
    t37 = *((unsigned int *)t30);
    t38 = (~(t37));
    t39 = (t32 & t34);
    t40 = (t36 & t38);
    t41 = (~(t39));
    t42 = (~(t40));
    t43 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t43 & t41);
    t44 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t44 & t42);
    t45 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t45 & t41);
    t46 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t46 & t42);
    goto LAB21;

LAB22:    xsi_set_current_line(66, ng0);
    t53 = (t0 + 2076);
    t54 = (t53 + 32U);
    t55 = *((char **)t54);
    t56 = ((char*)((ng2)));
    memset(t57, 0, 8);
    xsi_vlog_unsigned_add(t57, 32, t55, 3, t56, 32);
    t58 = (t0 + 2076);
    xsi_vlogvar_generic_wait_assign_value(t58, t57, 2, 0, 0, 3, 1000000LL);
    goto LAB24;

LAB26:    t7 = *((unsigned int *)t13);
    t8 = *((unsigned int *)t4);
    *((unsigned int *)t13) = (t7 | t8);
    t9 = *((unsigned int *)t2);
    t15 = *((unsigned int *)t4);
    *((unsigned int *)t2) = (t9 | t15);
    goto LAB25;

LAB27:    t27 = *((unsigned int *)t18);
    t28 = *((unsigned int *)t14);
    *((unsigned int *)t18) = (t27 | t28);
    t29 = (t13 + 4U);
    t30 = (t11 + 4U);
    t31 = *((unsigned int *)t13);
    t32 = (~(t31));
    t33 = *((unsigned int *)t29);
    t34 = (~(t33));
    t35 = *((unsigned int *)t11);
    t36 = (~(t35));
    t37 = *((unsigned int *)t30);
    t38 = (~(t37));
    t39 = (t32 & t34);
    t40 = (t36 & t38);
    t41 = (~(t39));
    t42 = (~(t40));
    t43 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t43 & t41);
    t44 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t44 & t42);
    t45 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t45 & t41);
    t46 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t46 & t42);
    goto LAB29;

LAB30:    xsi_set_current_line(71, ng0);
    t53 = (t0 + 2076);
    t54 = (t53 + 32U);
    t55 = *((char **)t54);
    t56 = ((char*)((ng2)));
    memset(t57, 0, 8);
    xsi_vlog_unsigned_minus(t57, 32, t55, 3, t56, 32);
    t58 = (t0 + 2076);
    xsi_vlogvar_generic_wait_assign_value(t58, t57, 2, 0, 0, 3, 1000000LL);
    goto LAB32;

}

static void C80_2(char *t0)
{
    char t7[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;

LAB0:    t1 = (t0 + 2808U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2076);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t0 + 476);
    t6 = *((char **)t5);
    memset(t7, 0, 8);
    t5 = (t7 + 4U);
    t8 = (t4 + 4U);
    t9 = (t6 + 4U);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t8);
    t14 = *((unsigned int *)t9);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t8);
    t18 = *((unsigned int *)t9);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB7;

LAB4:    if (t19 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t7) = 1;

LAB7:    t22 = (t0 + 3456);
    t23 = (t22 + 32U);
    t24 = *((char **)t23);
    t25 = (t24 + 40U);
    t26 = *((char **)t25);
    t27 = (t26 + 4U);
    t28 = 1U;
    t29 = t28;
    t30 = (t7 + 4U);
    t31 = *((unsigned int *)t7);
    t28 = (t28 & t31);
    t32 = *((unsigned int *)t30);
    t29 = (t29 & t32);
    t33 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t33 & 4294967294U);
    t34 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t34 | t28);
    t35 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t35 & 4294967294U);
    t36 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t36 | t29);
    xsi_driver_vfirst_trans(t22, 0, 0);
    t37 = (t0 + 3388);
    *((int *)t37) = 1;

LAB1:    return;
LAB6:    *((unsigned int *)t7) = 1;
    *((unsigned int *)t5) = 1;
    goto LAB7;

}

static void C81_3(char *t0)
{
    char t7[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 2936U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2076);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t0 + 400);
    t6 = *((char **)t5);
    memset(t7, 0, 8);
    t5 = (t7 + 4U);
    t8 = (t4 + 4U);
    t9 = (t6 + 4U);
    if (*((unsigned int *)t8) != 0)
        goto LAB5;

LAB4:    if (*((unsigned int *)t9) != 0)
        goto LAB5;

LAB8:    if (*((unsigned int *)t4) < *((unsigned int *)t6))
        goto LAB7;

LAB6:    *((unsigned int *)t7) = 1;

LAB7:    t10 = (t0 + 3492);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    t15 = (t14 + 4U);
    t16 = 1U;
    t17 = t16;
    t18 = (t7 + 4U);
    t19 = *((unsigned int *)t7);
    t16 = (t16 & t19);
    t20 = *((unsigned int *)t18);
    t17 = (t17 & t20);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t21 & 4294967294U);
    t22 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t22 | t16);
    t23 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t23 & 4294967294U);
    t24 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t24 | t17);
    xsi_driver_vfirst_trans(t10, 0, 0);
    t25 = (t0 + 3396);
    *((int *)t25) = 1;

LAB1:    return;
LAB5:    *((unsigned int *)t7) = 1;
    *((unsigned int *)t5) = 1;
    goto LAB7;

}

static void C82_4(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;

LAB0:    t1 = (t0 + 3064U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2076);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t6 + 4U);
    t8 = (t4 + 4U);
    t9 = (t5 + 4U);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t5);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t8);
    t14 = *((unsigned int *)t9);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t8);
    t18 = *((unsigned int *)t9);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB7;

LAB4:    if (t19 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    t22 = (t0 + 3528);
    t23 = (t22 + 32U);
    t24 = *((char **)t23);
    t25 = (t24 + 40U);
    t26 = *((char **)t25);
    t27 = (t26 + 4U);
    t28 = 1U;
    t29 = t28;
    t30 = (t6 + 4U);
    t31 = *((unsigned int *)t6);
    t28 = (t28 & t31);
    t32 = *((unsigned int *)t30);
    t29 = (t29 & t32);
    t33 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t33 & 4294967294U);
    t34 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t34 | t28);
    t35 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t35 & 4294967294U);
    t36 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t36 | t29);
    xsi_driver_vfirst_trans(t22, 0, 0);
    t37 = (t0 + 3404);
    *((int *)t37) = 1;

LAB1:    return;
LAB6:    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB7;

}

static void A85_5(char *t0)
{
    char t5[8];
    char t21[8];
    char t36[8];
    char t44[8];
    char t76[8];
    char t88[8];
    char t97[8];
    char t105[8];
    char t143[16];
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
    char *t18;
    char *t19;
    char *t20;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    int t68;
    int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    char *t89;
    char *t90;
    char *t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    char *t98;
    char *t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    char *t109;
    char *t110;
    char *t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    char *t119;
    char *t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    int t129;
    int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    char *t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    char *t144;

LAB0:    t1 = (t0 + 3192U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 3412);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(86, ng0);

LAB5:    xsi_set_current_line(87, ng0);
    t3 = (t0 + 956U);
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

LAB11:    memcpy(t44, t5, 8);

LAB12:    memset(t76, 0, 8);
    t77 = (t76 + 4U);
    t78 = (t44 + 4U);
    t79 = *((unsigned int *)t78);
    t80 = (~(t79));
    t81 = *((unsigned int *)t44);
    t82 = (t81 & t80);
    t83 = (t82 & 1U);
    if (t83 != 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t78) != 0)
        goto LAB26;

LAB27:    t84 = (t76 + 4U);
    t85 = *((unsigned int *)t76);
    t86 = *((unsigned int *)t84);
    t87 = (t85 || t86);
    if (t87 > 0)
        goto LAB28;

LAB29:    memcpy(t105, t76, 8);

LAB30:    t137 = (t105 + 4U);
    t138 = *((unsigned int *)t137);
    t139 = (~(t138));
    t140 = *((unsigned int *)t105);
    t141 = (t140 & t139);
    t142 = (t141 != 0);
    if (t142 > 0)
        goto LAB42;

LAB43:
LAB44:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 1044U);
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
        goto LAB45;

LAB46:    if (*((unsigned int *)t4) != 0)
        goto LAB47;

LAB48:    t6 = (t5 + 4U);
    t13 = *((unsigned int *)t5);
    t14 = *((unsigned int *)t6);
    t15 = (t13 || t14);
    if (t15 > 0)
        goto LAB49;

LAB50:    memcpy(t44, t5, 8);

LAB51:    t59 = (t44 + 4U);
    t79 = *((unsigned int *)t59);
    t80 = (~(t79));
    t81 = *((unsigned int *)t44);
    t82 = (t81 & t80);
    t83 = (t82 != 0);
    if (t83 > 0)
        goto LAB63;

LAB64:
LAB65:    goto LAB2;

LAB6:    *((unsigned int *)t5) = 1;
    goto LAB9;

LAB8:    *((unsigned int *)t5) = 1;
    *((unsigned int *)t3) = 1;
    goto LAB9;

LAB10:    t16 = (t0 + 2076);
    t17 = (t16 + 32U);
    t18 = *((char **)t17);
    t19 = (t0 + 476);
    t20 = *((char **)t19);
    memset(t21, 0, 8);
    t19 = (t21 + 4U);
    t22 = (t18 + 4U);
    t23 = (t20 + 4U);
    t24 = *((unsigned int *)t18);
    t25 = *((unsigned int *)t20);
    t26 = (t24 ^ t25);
    t27 = *((unsigned int *)t22);
    t28 = *((unsigned int *)t23);
    t29 = (t27 ^ t28);
    t30 = (t26 | t29);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t23);
    t33 = (t31 | t32);
    t34 = (~(t33));
    t35 = (t30 & t34);
    if (t35 != 0)
        goto LAB16;

LAB13:    if (t33 != 0)
        goto LAB15;

LAB14:    *((unsigned int *)t21) = 1;

LAB16:    memset(t36, 0, 8);
    t37 = (t36 + 4U);
    t38 = (t21 + 4U);
    t39 = *((unsigned int *)t38);
    t40 = (~(t39));
    t41 = *((unsigned int *)t21);
    t42 = (t41 & t40);
    t43 = (t42 & 1U);
    if (t43 != 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t38) != 0)
        goto LAB19;

LAB20:    t45 = *((unsigned int *)t5);
    t46 = *((unsigned int *)t36);
    t47 = (t45 & t46);
    *((unsigned int *)t44) = t47;
    t48 = (t5 + 4U);
    t49 = (t36 + 4U);
    t50 = (t44 + 4U);
    t51 = *((unsigned int *)t48);
    t52 = *((unsigned int *)t49);
    t53 = (t51 | t52);
    *((unsigned int *)t50) = t53;
    t54 = *((unsigned int *)t50);
    t55 = (t54 != 0);
    if (t55 == 1)
        goto LAB21;

LAB22:
LAB23:    goto LAB12;

LAB15:    *((unsigned int *)t21) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB16;

LAB17:    *((unsigned int *)t36) = 1;
    goto LAB20;

LAB19:    *((unsigned int *)t36) = 1;
    *((unsigned int *)t37) = 1;
    goto LAB20;

LAB21:    t56 = *((unsigned int *)t44);
    t57 = *((unsigned int *)t50);
    *((unsigned int *)t44) = (t56 | t57);
    t58 = (t5 + 4U);
    t59 = (t36 + 4U);
    t60 = *((unsigned int *)t5);
    t61 = (~(t60));
    t62 = *((unsigned int *)t58);
    t63 = (~(t62));
    t64 = *((unsigned int *)t36);
    t65 = (~(t64));
    t66 = *((unsigned int *)t59);
    t67 = (~(t66));
    t68 = (t61 & t63);
    t69 = (t65 & t67);
    t70 = (~(t68));
    t71 = (~(t69));
    t72 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t72 & t70);
    t73 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t73 & t71);
    t74 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t74 & t70);
    t75 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t75 & t71);
    goto LAB23;

LAB24:    *((unsigned int *)t76) = 1;
    goto LAB27;

LAB26:    *((unsigned int *)t76) = 1;
    *((unsigned int *)t77) = 1;
    goto LAB27;

LAB28:    t89 = (t0 + 1044U);
    t90 = *((char **)t89);
    memset(t88, 0, 8);
    t89 = (t88 + 4U);
    t91 = (t90 + 4U);
    t92 = *((unsigned int *)t91);
    t93 = (~(t92));
    t94 = *((unsigned int *)t90);
    t95 = (t94 & t93);
    t96 = (t95 & 1U);
    if (t96 != 0)
        goto LAB34;

LAB32:    if (*((unsigned int *)t91) == 0)
        goto LAB31;

LAB33:    *((unsigned int *)t88) = 1;
    *((unsigned int *)t89) = 1;

LAB34:    memset(t97, 0, 8);
    t98 = (t97 + 4U);
    t99 = (t88 + 4U);
    t100 = *((unsigned int *)t99);
    t101 = (~(t100));
    t102 = *((unsigned int *)t88);
    t103 = (t102 & t101);
    t104 = (t103 & 1U);
    if (t104 != 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t99) != 0)
        goto LAB37;

LAB38:    t106 = *((unsigned int *)t76);
    t107 = *((unsigned int *)t97);
    t108 = (t106 & t107);
    *((unsigned int *)t105) = t108;
    t109 = (t76 + 4U);
    t110 = (t97 + 4U);
    t111 = (t105 + 4U);
    t112 = *((unsigned int *)t109);
    t113 = *((unsigned int *)t110);
    t114 = (t112 | t113);
    *((unsigned int *)t111) = t114;
    t115 = *((unsigned int *)t111);
    t116 = (t115 != 0);
    if (t116 == 1)
        goto LAB39;

LAB40:
LAB41:    goto LAB30;

LAB31:    *((unsigned int *)t88) = 1;
    goto LAB34;

LAB35:    *((unsigned int *)t97) = 1;
    goto LAB38;

LAB37:    *((unsigned int *)t97) = 1;
    *((unsigned int *)t98) = 1;
    goto LAB38;

LAB39:    t117 = *((unsigned int *)t105);
    t118 = *((unsigned int *)t111);
    *((unsigned int *)t105) = (t117 | t118);
    t119 = (t76 + 4U);
    t120 = (t97 + 4U);
    t121 = *((unsigned int *)t76);
    t122 = (~(t121));
    t123 = *((unsigned int *)t119);
    t124 = (~(t123));
    t125 = *((unsigned int *)t97);
    t126 = (~(t125));
    t127 = *((unsigned int *)t120);
    t128 = (~(t127));
    t129 = (t122 & t124);
    t130 = (t126 & t128);
    t131 = (~(t129));
    t132 = (~(t130));
    t133 = *((unsigned int *)t111);
    *((unsigned int *)t111) = (t133 & t131);
    t134 = *((unsigned int *)t111);
    *((unsigned int *)t111) = (t134 & t132);
    t135 = *((unsigned int *)t105);
    *((unsigned int *)t105) = (t135 & t131);
    t136 = *((unsigned int *)t105);
    *((unsigned int *)t105) = (t136 & t132);
    goto LAB41;

LAB42:    xsi_set_current_line(88, ng0);
    t144 = xsi_vlog_time(t143, 1000000.000000000, 1000.000000000000);
    xsi_vlogfile_write(0, 0, ng3, 2, t0, (char)118, t143, 64);
    xsi_vlogfile_write(1, 0, ng4, 1, t0);
    goto LAB44;

LAB45:    *((unsigned int *)t5) = 1;
    goto LAB48;

LAB47:    *((unsigned int *)t5) = 1;
    *((unsigned int *)t2) = 1;
    goto LAB48;

LAB49:    t12 = (t0 + 2076);
    t16 = (t12 + 32U);
    t17 = *((char **)t16);
    t18 = ((char*)((ng1)));
    memset(t21, 0, 8);
    t19 = (t21 + 4U);
    t20 = (t17 + 4U);
    t22 = (t18 + 4U);
    t24 = *((unsigned int *)t17);
    t25 = *((unsigned int *)t18);
    t26 = (t24 ^ t25);
    t27 = *((unsigned int *)t20);
    t28 = *((unsigned int *)t22);
    t29 = (t27 ^ t28);
    t30 = (t26 | t29);
    t31 = *((unsigned int *)t20);
    t32 = *((unsigned int *)t22);
    t33 = (t31 | t32);
    t34 = (~(t33));
    t35 = (t30 & t34);
    if (t35 != 0)
        goto LAB55;

LAB52:    if (t33 != 0)
        goto LAB54;

LAB53:    *((unsigned int *)t21) = 1;

LAB55:    memset(t36, 0, 8);
    t23 = (t36 + 4U);
    t37 = (t21 + 4U);
    t39 = *((unsigned int *)t37);
    t40 = (~(t39));
    t41 = *((unsigned int *)t21);
    t42 = (t41 & t40);
    t43 = (t42 & 1U);
    if (t43 != 0)
        goto LAB56;

LAB57:    if (*((unsigned int *)t37) != 0)
        goto LAB58;

LAB59:    t45 = *((unsigned int *)t5);
    t46 = *((unsigned int *)t36);
    t47 = (t45 & t46);
    *((unsigned int *)t44) = t47;
    t38 = (t5 + 4U);
    t48 = (t36 + 4U);
    t49 = (t44 + 4U);
    t51 = *((unsigned int *)t38);
    t52 = *((unsigned int *)t48);
    t53 = (t51 | t52);
    *((unsigned int *)t49) = t53;
    t54 = *((unsigned int *)t49);
    t55 = (t54 != 0);
    if (t55 == 1)
        goto LAB60;

LAB61:
LAB62:    goto LAB51;

LAB54:    *((unsigned int *)t21) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB55;

LAB56:    *((unsigned int *)t36) = 1;
    goto LAB59;

LAB58:    *((unsigned int *)t36) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB59;

LAB60:    t56 = *((unsigned int *)t44);
    t57 = *((unsigned int *)t49);
    *((unsigned int *)t44) = (t56 | t57);
    t50 = (t5 + 4U);
    t58 = (t36 + 4U);
    t60 = *((unsigned int *)t5);
    t61 = (~(t60));
    t62 = *((unsigned int *)t50);
    t63 = (~(t62));
    t64 = *((unsigned int *)t36);
    t65 = (~(t64));
    t66 = *((unsigned int *)t58);
    t67 = (~(t66));
    t68 = (t61 & t63);
    t69 = (t65 & t67);
    t70 = (~(t68));
    t71 = (~(t69));
    t72 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t72 & t70);
    t73 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t73 & t71);
    t74 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t74 & t70);
    t75 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t75 & t71);
    goto LAB62;

LAB63:    xsi_set_current_line(90, ng0);
    t77 = xsi_vlog_time(t143, 1000000.000000000, 1000.000000000000);
    xsi_vlogfile_write(0, 0, ng3, 2, t0, (char)118, t143, 64);
    xsi_vlogfile_write(1, 0, ng5, 1, t0);
    goto LAB65;

}


extern void work_m_00000000003296822039_0823227590_init()
{
	static char *pe[] = {(void *)A44_0,(void *)A56_1,(void *)C80_2,(void *)C81_3,(void *)C82_4,(void *)A85_5};
	xsi_register_didat("work_m_00000000003296822039_0823227590", "isim/_tmp/work/m_00000000003296822039_0823227590.didat");
	xsi_register_executes(pe);
}
