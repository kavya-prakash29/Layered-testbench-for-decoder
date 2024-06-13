class scoreboard;
  
  mailbox mon2scb;
  
  
  
  function new(mailbox mon2scb);
    this.mon2scb = mon2scb;
  endfunction
  
  task main;
    transaction trans;
    repeat(1)
      begin
      mon2scb.get(trans);
        
        if({trans.a,trans.b} =={trans.d0,trans.d1,trans.d2,trans.d3} ) 
        
   
          $display("Result is as Expected");
        else
          $error("Wrong Result");
           
         trans.display("Scoreboard");
    end
  endtask
