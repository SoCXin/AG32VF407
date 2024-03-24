usb_connect
if { [as_device_id] } {
  as_write  ./example_board_master.bin
  as_verify ./example_board_master.bin
}
usb_close
