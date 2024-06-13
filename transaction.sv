class transaction;

// Stimulus are declared with rand keyword
 
  rand bit a;  
  rand bit b;
  
  bit d0;
  bit d1;
  bit d2;
  bit d3;

//Function for Displaying values of a , b and outputs  
  function void display(string name);
    $display("-------------------------");
    $display(" %s ",name);
    $display("-------------------------");
    $display("a = %0d, b = %0d",a,b);
    $display("d0= %0d, d1 = %0d, d2 = %0d, d3 = %0d",d0,d1,d2,d3);
    $display("-------------------------");
  endfunction
  
  
endclass
