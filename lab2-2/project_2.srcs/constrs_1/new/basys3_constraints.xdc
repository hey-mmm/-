## Switches
set_property PACKAGE_PIN V17 [get_ports {sw[0]}]
set_property PACKAGE_PIN V16 [get_ports {sw[1]}]
set_property PACKAGE_PIN W16 [get_ports {sw[2]}]
set_property PACKAGE_PIN W17 [get_ports {sw[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[*]}]

## 7-Segment Display
# Segments (a-g) - Note: T9 and T10 are 1.8V on some boards, but usually 3.3V on Basys3
set_property PACKAGE_PIN W7  [get_ports {seg[0]}] 
set_property PACKAGE_PIN W6  [get_ports {seg[1]}] 
set_property PACKAGE_PIN U8  [get_ports {seg[2]}] 
set_property PACKAGE_PIN V8  [get_ports {seg[3]}] 
set_property PACKAGE_PIN U5  [get_ports {seg[4]}] 
set_property PACKAGE_PIN V5  [get_ports {seg[5]}] 
set_property PACKAGE_PIN U7  [get_ports {seg[6]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {seg[*]}]

# Anodes (an[3:0])
set_property PACKAGE_PIN U2  [get_ports {an[0]}]
set_property PACKAGE_PIN U3  [get_ports {an[1]}]
set_property PACKAGE_PIN V2  [get_ports {an[2]}]
set_property PACKAGE_PIN W2  [get_ports {an[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[*]}]