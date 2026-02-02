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
    work_m_00000000003072288075_0373976851_init();
    work_m_00000000002297844348_2984075339_init();
    work_m_00000000002411216020_4156363860_init();


    xsi_register_tops("work_m_00000000002411216020_4156363860");
    xsi_register_tops("work_m_00000000000866782574_2073120511");


    return xsi_run_simulation(argc, argv);

}
