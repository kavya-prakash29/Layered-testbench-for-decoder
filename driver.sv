class driver;
  
  virtual intf vif;
  
  mailbox gen2driv;
  
  function new(virtual intf vif,mailbox gen2driv); 
    this.vif = vif;
    this.gen2driv = gen2driv;
  endfunction
  
  task main;
    
    repeat(1) 
      begin
       transaction trans;
      
        gen2driv.get(trans);
       
        vif.a     <= trans.a;
        vif.b     <= trans.b;
      
        
        trans.d0     = vif.d0;
        trans.d1   = vif.d1;      
        trans.d2    = vif.d2;
        trans.d3   = vif.d3; 
        trans.display("Driver");
        
    end
  endtask
