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
static const char *ng0 = "C:/AseemAshu/RtypeInstruction/Processor/memory.v";
static int ng1[] = {0, 0};
static int ng2[] = {7, 0};
static int ng3[] = {1, 0};
static int ng4[] = {15, 0};
static int ng5[] = {8, 0};
static int ng6[] = {2, 0};
static int ng7[] = {23, 0};
static int ng8[] = {16, 0};
static int ng9[] = {3, 0};
static int ng10[] = {31, 0};
static int ng11[] = {24, 0};



static void A24_0(char *t0)
{
    char t12[8];
    char t21[8];
    char t22[8];
    char t23[8];
    char t46[8];
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
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned int t30;
    int t31;
    char *t32;
    unsigned int t33;
    int t34;
    int t35;
    char *t36;
    unsigned int t37;
    int t38;
    int t39;
    unsigned int t40;
    int t41;
    unsigned int t42;
    unsigned int t43;
    int t44;
    int t45;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;

LAB0:    t1 = (t0 + 1884U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(24, ng0);
    t2 = (t0 + 2192);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(24, ng0);

LAB5:    xsi_set_current_line(25, ng0);
    t3 = (t0 + 740U);
    t4 = *((char **)t3);
    t3 = (t4 + 4U);
    t5 = *((unsigned int *)t3);
    t6 = (~(t5));
    t7 = *((unsigned int *)t4);
    t8 = (t7 & t6);
    t9 = (t8 != 0);
    if (t9 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(27, ng0);

LAB9:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1800);
    xsi_process_wait(t2, 2000000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB6:    xsi_set_current_line(26, ng0);
    t10 = ((char*)((ng1)));
    t11 = (t0 + 1408);
    xsi_vlogvar_assign_value(t11, t10, 0, 0, 32);

LAB8:    goto LAB2;

LAB10:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1004U);
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
LAB13:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1092U);
    t3 = *((char **)t2);
    t2 = (t3 + 4U);
    t5 = *((unsigned int *)t2);
    t6 = (~(t5));
    t7 = *((unsigned int *)t3);
    t8 = (t7 & t6);
    t9 = (t8 != 0);
    if (t9 > 0)
        goto LAB23;

LAB24:
LAB25:    goto LAB8;

LAB11:    xsi_set_current_line(30, ng0);

LAB14:    xsi_set_current_line(31, ng0);
    t4 = (t0 + 1316);
    t10 = (t4 + 32U);
    t11 = *((char **)t10);
    t13 = (t0 + 1316);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    t16 = (t0 + 1316);
    t17 = (t16 + 36U);
    t18 = *((char **)t17);
    t19 = (t0 + 828U);
    t20 = *((char **)t19);
    xsi_vlog_generic_get_array_select_value(t12, 8, t11, t15, t18, 2, 1, t20, 32, 2);
    t19 = (t0 + 1408);
    t24 = (t0 + 1408);
    t25 = (t24 + 40U);
    t26 = *((char **)t25);
    t27 = ((char*)((ng2)));
    t28 = ((char*)((ng1)));
    xsi_vlog_convert_partindices(t21, t22, t23, ((int*)(t26)), 2, t27, 32, 1, t28, 32, 1);
    t29 = (t21 + 4U);
    t30 = *((unsigned int *)t29);
    t31 = (!(t30));
    t32 = (t22 + 4U);
    t33 = *((unsigned int *)t32);
    t34 = (!(t33));
    t35 = (t31 && t34);
    t36 = (t23 + 4U);
    t37 = *((unsigned int *)t36);
    t38 = (!(t37));
    t39 = (t35 && t38);
    if (t39 == 1)
        goto LAB15;

LAB16:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1316);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t10 = (t0 + 1316);
    t11 = (t10 + 40U);
    t13 = *((char **)t11);
    t14 = (t0 + 1316);
    t15 = (t14 + 36U);
    t16 = *((char **)t15);
    t17 = (t0 + 828U);
    t18 = *((char **)t17);
    t17 = ((char*)((ng3)));
    memset(t21, 0, 8);
    xsi_vlog_unsigned_add(t21, 32, t18, 32, t17, 32);
    xsi_vlog_generic_get_array_select_value(t12, 8, t4, t13, t16, 2, 1, t21, 32, 2);
    t19 = (t0 + 1408);
    t20 = (t0 + 1408);
    t24 = (t20 + 40U);
    t25 = *((char **)t24);
    t26 = ((char*)((ng4)));
    t27 = ((char*)((ng5)));
    xsi_vlog_convert_partindices(t22, t23, t46, ((int*)(t25)), 2, t26, 32, 1, t27, 32, 1);
    t28 = (t22 + 4U);
    t5 = *((unsigned int *)t28);
    t31 = (!(t5));
    t29 = (t23 + 4U);
    t6 = *((unsigned int *)t29);
    t34 = (!(t6));
    t35 = (t31 && t34);
    t32 = (t46 + 4U);
    t7 = *((unsigned int *)t32);
    t38 = (!(t7));
    t39 = (t35 && t38);
    if (t39 == 1)
        goto LAB17;

LAB18:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1316);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t10 = (t0 + 1316);
    t11 = (t10 + 40U);
    t13 = *((char **)t11);
    t14 = (t0 + 1316);
    t15 = (t14 + 36U);
    t16 = *((char **)t15);
    t17 = (t0 + 828U);
    t18 = *((char **)t17);
    t17 = ((char*)((ng6)));
    memset(t21, 0, 8);
    xsi_vlog_unsigned_add(t21, 32, t18, 32, t17, 32);
    xsi_vlog_generic_get_array_select_value(t12, 8, t4, t13, t16, 2, 1, t21, 32, 2);
    t19 = (t0 + 1408);
    t20 = (t0 + 1408);
    t24 = (t20 + 40U);
    t25 = *((char **)t24);
    t26 = ((char*)((ng7)));
    t27 = ((char*)((ng8)));
    xsi_vlog_convert_partindices(t22, t23, t46, ((int*)(t25)), 2, t26, 32, 1, t27, 32, 1);
    t28 = (t22 + 4U);
    t5 = *((unsigned int *)t28);
    t31 = (!(t5));
    t29 = (t23 + 4U);
    t6 = *((unsigned int *)t29);
    t34 = (!(t6));
    t35 = (t31 && t34);
    t32 = (t46 + 4U);
    t7 = *((unsigned int *)t32);
    t38 = (!(t7));
    t39 = (t35 && t38);
    if (t39 == 1)
        goto LAB19;

LAB20:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1316);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t10 = (t0 + 1316);
    t11 = (t10 + 40U);
    t13 = *((char **)t11);
    t14 = (t0 + 1316);
    t15 = (t14 + 36U);
    t16 = *((char **)t15);
    t17 = (t0 + 828U);
    t18 = *((char **)t17);
    t17 = ((char*)((ng9)));
    memset(t21, 0, 8);
    xsi_vlog_unsigned_add(t21, 32, t18, 32, t17, 32);
    xsi_vlog_generic_get_array_select_value(t12, 8, t4, t13, t16, 2, 1, t21, 32, 2);
    t19 = (t0 + 1408);
    t20 = (t0 + 1408);
    t24 = (t20 + 40U);
    t25 = *((char **)t24);
    t26 = ((char*)((ng10)));
    t27 = ((char*)((ng11)));
    xsi_vlog_convert_partindices(t22, t23, t46, ((int*)(t25)), 2, t26, 32, 1, t27, 32, 1);
    t28 = (t22 + 4U);
    t5 = *((unsigned int *)t28);
    t31 = (!(t5));
    t29 = (t23 + 4U);
    t6 = *((unsigned int *)t29);
    t34 = (!(t6));
    t35 = (t31 && t34);
    t32 = (t46 + 4U);
    t7 = *((unsigned int *)t32);
    t38 = (!(t7));
    t39 = (t35 && t38);
    if (t39 == 1)
        goto LAB21;

LAB22:    goto LAB13;

LAB15:    t40 = *((unsigned int *)t23);
    t41 = (t40 + 0);
    t42 = *((unsigned int *)t21);
    t43 = *((unsigned int *)t22);
    t44 = (t42 - t43);
    t45 = (t44 + 1);
    xsi_vlogvar_assign_value(t19, t12, t41, *((unsigned int *)t22), t45);
    goto LAB16;

LAB17:    t8 = *((unsigned int *)t46);
    t41 = (t8 + 0);
    t9 = *((unsigned int *)t22);
    t30 = *((unsigned int *)t23);
    t44 = (t9 - t30);
    t45 = (t44 + 1);
    xsi_vlogvar_assign_value(t19, t12, t41, *((unsigned int *)t23), t45);
    goto LAB18;

LAB19:    t8 = *((unsigned int *)t46);
    t41 = (t8 + 0);
    t9 = *((unsigned int *)t22);
    t30 = *((unsigned int *)t23);
    t44 = (t9 - t30);
    t45 = (t44 + 1);
    xsi_vlogvar_assign_value(t19, t12, t41, *((unsigned int *)t23), t45);
    goto LAB20;

LAB21:    t8 = *((unsigned int *)t46);
    t41 = (t8 + 0);
    t9 = *((unsigned int *)t22);
    t30 = *((unsigned int *)t23);
    t44 = (t9 - t30);
    t45 = (t44 + 1);
    xsi_vlogvar_assign_value(t19, t12, t41, *((unsigned int *)t23), t45);
    goto LAB22;

LAB23:    xsi_set_current_line(36, ng0);

LAB26:    xsi_set_current_line(37, ng0);
    t4 = (t0 + 916U);
    t10 = *((char **)t4);
    memset(t12, 0, 8);
    t4 = (t12 + 4U);
    t11 = (t10 + 4U);
    t30 = *((unsigned int *)t10);
    t33 = (t30 >> 0);
    *((unsigned int *)t12) = t33;
    t37 = *((unsigned int *)t11);
    t40 = (t37 >> 0);
    *((unsigned int *)t4) = t40;
    t42 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t42 & 255U);
    t43 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t43 & 255U);
    t13 = (t0 + 1316);
    t14 = (t0 + 1316);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    t17 = (t0 + 1316);
    t18 = (t17 + 36U);
    t19 = *((char **)t18);
    t20 = (t0 + 828U);
    t24 = *((char **)t20);
    xsi_vlog_generic_convert_array_indices(t21, t22, t16, t19, 2, 1, t24, 32, 2);
    t20 = (t21 + 4U);
    t47 = *((unsigned int *)t20);
    t31 = (!(t47));
    t25 = (t22 + 4U);
    t48 = *((unsigned int *)t25);
    t34 = (!(t48));
    t35 = (t31 && t34);
    if (t35 == 1)
        goto LAB27;

LAB28:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 916U);
    t3 = *((char **)t2);
    memset(t12, 0, 8);
    t2 = (t12 + 4U);
    t4 = (t3 + 4U);
    t5 = *((unsigned int *)t3);
    t6 = (t5 >> 8);
    *((unsigned int *)t12) = t6;
    t7 = *((unsigned int *)t4);
    t8 = (t7 >> 8);
    *((unsigned int *)t2) = t8;
    t9 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t9 & 255U);
    t30 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t30 & 255U);
    t10 = (t0 + 1316);
    t11 = (t0 + 1316);
    t13 = (t11 + 40U);
    t14 = *((char **)t13);
    t15 = (t0 + 1316);
    t16 = (t15 + 36U);
    t17 = *((char **)t16);
    t18 = (t0 + 828U);
    t19 = *((char **)t18);
    t18 = ((char*)((ng3)));
    memset(t23, 0, 8);
    xsi_vlog_unsigned_add(t23, 32, t19, 32, t18, 32);
    xsi_vlog_generic_convert_array_indices(t21, t22, t14, t17, 2, 1, t23, 32, 2);
    t20 = (t21 + 4U);
    t33 = *((unsigned int *)t20);
    t31 = (!(t33));
    t24 = (t22 + 4U);
    t37 = *((unsigned int *)t24);
    t34 = (!(t37));
    t35 = (t31 && t34);
    if (t35 == 1)
        goto LAB29;

LAB30:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 916U);
    t3 = *((char **)t2);
    memset(t12, 0, 8);
    t2 = (t12 + 4U);
    t4 = (t3 + 4U);
    t5 = *((unsigned int *)t3);
    t6 = (t5 >> 16);
    *((unsigned int *)t12) = t6;
    t7 = *((unsigned int *)t4);
    t8 = (t7 >> 16);
    *((unsigned int *)t2) = t8;
    t9 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t9 & 255U);
    t30 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t30 & 255U);
    t10 = (t0 + 1316);
    t11 = (t0 + 1316);
    t13 = (t11 + 40U);
    t14 = *((char **)t13);
    t15 = (t0 + 1316);
    t16 = (t15 + 36U);
    t17 = *((char **)t16);
    t18 = (t0 + 828U);
    t19 = *((char **)t18);
    t18 = ((char*)((ng6)));
    memset(t23, 0, 8);
    xsi_vlog_unsigned_add(t23, 32, t19, 32, t18, 32);
    xsi_vlog_generic_convert_array_indices(t21, t22, t14, t17, 2, 1, t23, 32, 2);
    t20 = (t21 + 4U);
    t33 = *((unsigned int *)t20);
    t31 = (!(t33));
    t24 = (t22 + 4U);
    t37 = *((unsigned int *)t24);
    t34 = (!(t37));
    t35 = (t31 && t34);
    if (t35 == 1)
        goto LAB31;

LAB32:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 916U);
    t3 = *((char **)t2);
    memset(t12, 0, 8);
    t2 = (t12 + 4U);
    t4 = (t3 + 4U);
    t5 = *((unsigned int *)t3);
    t6 = (t5 >> 24);
    *((unsigned int *)t12) = t6;
    t7 = *((unsigned int *)t4);
    t8 = (t7 >> 24);
    *((unsigned int *)t2) = t8;
    t9 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t9 & 255U);
    t30 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t30 & 255U);
    t10 = (t0 + 1316);
    t11 = (t0 + 1316);
    t13 = (t11 + 40U);
    t14 = *((char **)t13);
    t15 = (t0 + 1316);
    t16 = (t15 + 36U);
    t17 = *((char **)t16);
    t18 = (t0 + 828U);
    t19 = *((char **)t18);
    t18 = ((char*)((ng9)));
    memset(t23, 0, 8);
    xsi_vlog_unsigned_add(t23, 32, t19, 32, t18, 32);
    xsi_vlog_generic_convert_array_indices(t21, t22, t14, t17, 2, 1, t23, 32, 2);
    t20 = (t21 + 4U);
    t33 = *((unsigned int *)t20);
    t31 = (!(t33));
    t24 = (t22 + 4U);
    t37 = *((unsigned int *)t24);
    t34 = (!(t37));
    t35 = (t31 && t34);
    if (t35 == 1)
        goto LAB33;

LAB34:    goto LAB25;

LAB27:    t49 = *((unsigned int *)t21);
    t50 = *((unsigned int *)t22);
    t38 = (t49 - t50);
    t39 = (t38 + 1);
    xsi_vlogvar_assign_value(t13, t12, 0, *((unsigned int *)t22), t39);
    goto LAB28;

LAB29:    t40 = *((unsigned int *)t21);
    t42 = *((unsigned int *)t22);
    t38 = (t40 - t42);
    t39 = (t38 + 1);
    xsi_vlogvar_assign_value(t10, t12, 0, *((unsigned int *)t22), t39);
    goto LAB30;

LAB31:    t40 = *((unsigned int *)t21);
    t42 = *((unsigned int *)t22);
    t38 = (t40 - t42);
    t39 = (t38 + 1);
    xsi_vlogvar_assign_value(t10, t12, 0, *((unsigned int *)t22), t39);
    goto LAB32;

LAB33:    t40 = *((unsigned int *)t21);
    t42 = *((unsigned int *)t22);
    t38 = (t40 - t42);
    t39 = (t38 + 1);
    xsi_vlogvar_assign_value(t10, t12, 0, *((unsigned int *)t22), t39);
    goto LAB34;

}

static void C44_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    t1 = (t0 + 2012U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1408);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    memset(t3, 0, 8);
    t6 = (t3 + 4U);
    t7 = (t5 + 4U);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t3) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t6) = t11;
    t12 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t12 & 4294967295U);
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 4294967295U);
    t14 = (t0 + 2244);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    t17 = (t16 + 40U);
    t18 = *((char **)t17);
    memcpy(t18, t3, 8);
    xsi_driver_vfirst_trans(t14, 0, 31);
    t19 = (t0 + 2200);
    *((int *)t19) = 1;

LAB1:    return;
}


extern void work_m_00000000002545787594_2381739659_init()
{
	static char *pe[] = {(void *)A24_0,(void *)C44_1};
	xsi_register_didat("work_m_00000000002545787594_2381739659", "isim/_tmp/work/m_00000000002545787594_2381739659.didat");
	xsi_register_executes(pe);
}
