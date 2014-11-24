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
static int ng0[] = {4, 0};
static const char *ng1 = "C:/AseemAshu/RtypeInstruction/Processor/Rtypeinst.v";
static int ng2[] = {0, 0};



static void C29_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 4352U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng0)));
    t3 = (t0 + 4840);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8);
    xsi_driver_vfirst_trans(t3, 0, 31);

LAB1:    return;
}

static void C38_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;

LAB0:    t1 = (t0 + 4480U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2764U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t3 + 4U);
    t5 = (t4 + 4U);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 26);
    *((unsigned int *)t3) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 26);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t10 & 63U);
    t11 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t11 & 63U);
    t12 = (t0 + 4876);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    t17 = (t16 + 4U);
    t18 = 63U;
    t19 = t18;
    t20 = (t3 + 4U);
    t21 = *((unsigned int *)t3);
    t18 = (t18 & t21);
    t22 = *((unsigned int *)t20);
    t19 = (t19 & t22);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 & 4294967232U);
    t24 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t24 | t18);
    t25 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t25 & 4294967232U);
    t26 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t26 | t19);
    xsi_driver_vfirst_trans(t12, 0, 5);
    t27 = (t0 + 4788);
    *((int *)t27) = 1;

LAB1:    return;
}

static void A55_2(char *t0)
{
    char t10[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;

LAB0:    t1 = (t0 + 4608U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng1);
    t2 = (t0 + 4796);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(55, ng1);

LAB5:    xsi_set_current_line(56, ng1);
    t3 = (t0 + 1004U);
    t4 = *((char **)t3);
    t3 = (t4 + 4U);
    t5 = *((unsigned int *)t3);
    t6 = (~(t5));
    t7 = *((unsigned int *)t4);
    t8 = (t7 & t6);
    t9 = (t8 != 0);
    if (t9 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(60, ng1);

LAB10:    xsi_set_current_line(61, ng1);
    t2 = (t0 + 1972U);
    t3 = *((char **)t2);
    memset(t10, 0, 8);
    t2 = (t10 + 4U);
    t4 = (t3 + 4U);
    t5 = *((unsigned int *)t3);
    t6 = (~(t5));
    *((unsigned int *)t10) = t6;
    *((unsigned int *)t2) = 0;
    if (*((unsigned int *)t4) != 0)
        goto LAB12;

LAB11:    t14 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t14 & 1U);
    t15 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t15 & 1U);
    t11 = (t10 + 4U);
    t16 = *((unsigned int *)t11);
    t17 = (~(t16));
    t18 = *((unsigned int *)t10);
    t19 = (t18 & t17);
    t20 = (t19 != 0);
    if (t20 > 0)
        goto LAB13;

LAB14:
LAB15:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(56, ng1);

LAB9:    xsi_set_current_line(57, ng1);
    t11 = ((char*)((ng0)));
    memset(t10, 0, 8);
    xsi_vlog_signed_unary_minus(t10, 32, t11, 32);
    t12 = (t0 + 3784);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 32);
    xsi_set_current_line(58, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3876);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    goto LAB8;

LAB12:    t7 = *((unsigned int *)t10);
    t8 = *((unsigned int *)t4);
    *((unsigned int *)t10) = (t7 | t8);
    t9 = *((unsigned int *)t2);
    t13 = *((unsigned int *)t4);
    *((unsigned int *)t2) = (t9 | t13);
    goto LAB11;

LAB13:    xsi_set_current_line(61, ng1);

LAB16:    xsi_set_current_line(62, ng1);
    t12 = (t0 + 2324U);
    t21 = *((char **)t12);
    t12 = (t0 + 3692);
    xsi_vlogvar_assign_value(t12, t21, 0, 0, 32);
    xsi_set_current_line(63, ng1);
    t2 = (t0 + 1796U);
    t3 = *((char **)t2);
    t2 = (t3 + 4U);
    t5 = *((unsigned int *)t2);
    t6 = (~(t5));
    t7 = *((unsigned int *)t3);
    t8 = (t7 & t6);
    t9 = (t8 != 0);
    if (t9 > 0)
        goto LAB17;

LAB18:
LAB19:    xsi_set_current_line(65, ng1);
    t2 = (t0 + 2676U);
    t3 = *((char **)t2);
    t2 = (t0 + 3784);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    goto LAB15;

LAB17:    xsi_set_current_line(64, ng1);
    t4 = (t0 + 2324U);
    t11 = *((char **)t4);
    t4 = (t0 + 3876);
    xsi_vlogvar_assign_value(t4, t11, 0, 0, 32);
    goto LAB19;

}


extern void work_m_00000000004118849057_2885738870_init()
{
	static char *pe[] = {(void *)C29_0,(void *)C38_1,(void *)A55_2};
	xsi_register_didat("work_m_00000000004118849057_2885738870", "isim/_tmp/work/m_00000000004118849057_2885738870.didat");
	xsi_register_executes(pe);
}
