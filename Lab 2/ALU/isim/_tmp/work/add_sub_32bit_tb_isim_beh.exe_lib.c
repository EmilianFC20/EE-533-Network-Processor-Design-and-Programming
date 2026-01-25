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
    unisims_ver_m_00000000000179858743_3125220529_init();
    unisims_ver_m_00000000003912143520_2316096324_init();
    unisims_ver_m_00000000001218449110_1323117156_init();
    work_m_00000000003878141727_2984075339_init();
    work_m_00000000000575375871_3298147383_init();
    work_m_00000000002773756716_1635510040_init();
    work_m_00000000003277843827_3485926238_init();
    work_m_00000000001527293261_0678276713_init();


    xsi_register_tops("work_m_00000000001527293261_0678276713");
    xsi_register_tops("work_m_00000000000866782574_2073120511");


    return xsi_run_simulation(argc, argv);

}
