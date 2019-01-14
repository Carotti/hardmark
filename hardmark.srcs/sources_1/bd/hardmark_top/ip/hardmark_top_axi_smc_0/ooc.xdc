# aclk {FREQ_HZ 100000000 CLK_DOMAIN /clk_wiz_clk_out1 PHASE 0.0} aclk1 {FREQ_HZ 100000000 CLK_DOMAIN hardmark_top_processing_system7_0_1_FCLK_CLK0 PHASE 0.000}
# Clock Domain: /clk_wiz_clk_out1
create_clock -name aclk -period 10.000 [get_ports aclk]
# Clock Domain: hardmark_top_processing_system7_0_1_FCLK_CLK0
create_clock -name aclk1 -period 10.000 [get_ports aclk1]
# Generated clocks
