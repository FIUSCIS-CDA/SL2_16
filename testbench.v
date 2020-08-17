module testbench();

reg[15:0] A;

wire[17:0] S;

SPLICE_SL2 mySL2(A, S);

initial begin
A=3782;   #10; 
if (S !== A*4) begin
           $display("Error with A=%d: Should also be %d but got %d", A, A*4, S); $stop;
end
$display("All tests passed.");
end

endmodule