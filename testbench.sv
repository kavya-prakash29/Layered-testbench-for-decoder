`include "interface.sv"
`include "test"
module tbench_top;
  
  intf i_intf();
  
  test t1(i_intf);
  
  decoder d1 (
    .a(i_intf.a),
    .b(i_intf.b),
    .d0(i_intf.d0),
    .d1(i_intf.d1),
    .d2(i_intf.d2),
    .d3(i_intf.d3)
   );
  
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end
  
  
endmodule
