# pio_begin
if { ! [info exists ::HSI_PERIOD] } {
  set ::HSI_PERIOD 100.0
}
create_clock -name PIN_HSI -period $::HSI_PERIOD [get_ports PIN_HSI]
set_clock_groups -asynchronous -group PIN_HSI
if { ! [info exists ::HSE_PERIOD] } {
  set ::HSE_PERIOD 125.0
}
create_clock -name PIN_HSE -period $::HSE_PERIOD [get_ports PIN_HSE]
set_clock_groups -asynchronous -group PIN_HSE
derive_pll_clocks -create_base_clocks
# pio_end
