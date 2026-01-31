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



static void C25_0(char *t0)
{
    char t3[32];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 1348U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 652U);
    t4 = *((char **)t2);
    t2 = (t0 + 564U);
    t5 = *((char **)t2);
    xsi_vlogtype_concat(t3, 112, 112, 2U, t5, 48, t4, 64);
    t2 = (t0 + 1572);
    t6 = (t2 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    xsi_vlog_bit_copy(t9, 0, t3, 0, 112);
    xsi_driver_vfirst_trans(t2, 0, 111);
    t10 = (t0 + 1528);
    *((int *)t10) = 1;

LAB1:    return;
}


extern void work_m_00000000002119997238_1602641108_init()
{
	static char *pe[] = {(void *)C25_0};
	xsi_register_didat("work_m_00000000002119997238_1602641108", "isim/_tmp/work/m_00000000002119997238_1602641108.didat");
	xsi_register_executes(pe);
}
