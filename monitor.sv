class monitor;
  
  virtual intf vif;
  mailbox mon2scb;
  
  function new(virtual intf vif,mailbox mon2scb);
    this.vif     = vif;
    this.mon2scb = mon2scb;
  endfunction
  
  task main;
    repeat(1)
      #3;
      begin
      transaction trans;
      trans = new();
      trans.a       = vif.a;
      trans.b       = vif.b;
      trans.d0     = vif.d0;
      trans.d1   = vif.d1;
      trans.d2    = vif.d2;
      trans.d3   = vif.d3;
      mon2scb.put(trans);
      trans.display("Monitor");
    end
  endtask
  
endclass
