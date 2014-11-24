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

#include "xsi.h"

struct XSI_INFO xsi_info;


int isim_run(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    work_m_00000000000866782574_2073120511_init();
    work_m_00000000002038008674_0236129493_init();
    work_m_00000000001847033564_0132817699_init();
    work_m_00000000001590813837_3658949945_init();
    work_m_00000000001181678687_2384194200_init();
    work_m_00000000003354408515_1260470467_init();
    work_m_00000000001495758756_0967167703_init();
    work_m_00000000000174589887_1705152716_init();
    work_m_00000000002660621395_3675374490_init();
    work_m_00000000003944290984_3116830723_init();
    work_m_00000000003343417013_0996890177_init();
    work_m_00000000000027387696_3188728975_init();
    work_m_00000000001485719794_2906085289_init();
    work_m_00000000003182632364_4043905878_init();
    work_m_00000000002966866999_0833183191_init();
    work_m_00000000000214857854_1858059735_init();
    work_m_00000000002561969247_0374066436_init();
    work_m_00000000002973858244_2725559894_init();
    work_m_00000000002545787594_2381739659_init();
    work_m_00000000003611224004_3312633835_init();
    work_m_00000000004118849057_2885738870_init();
    work_m_00000000002286567983_1428740178_init();
    work_m_00000000001038134732_3785057798_init();
    work_m_00000000003004984860_3661311642_init();


    xsi_register_tops("work_m_00000000003004984860_3661311642");
    xsi_register_tops("work_m_00000000000866782574_2073120511");


    return xsi_run_simulation(argc, argv);

}
