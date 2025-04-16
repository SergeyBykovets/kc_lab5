module dmx18 (
    input wire in,          
    input wire [2:0] sel,   
    input wire EN,          
    output wire [7:0] out   
);

assign out[0] = (~sel[2] & ~sel[1] & ~sel[0] & in & ~EN);  
assign out[1] = (~sel[2] & ~sel[1] & sel[0] & in & ~EN); 
assign out[2] = (~sel[2] & sel[1] & ~sel[0] & in & ~EN); 
assign out[3] = (~sel[2] & sel[1] & sel[0] & in & ~EN); 
assign out[4] = (sel[2] & ~sel[1] & ~sel[0] & in & ~EN); 
assign out[5] = (sel[2] & ~sel[1] & sel[0] & in & ~EN); 
assign out[6] = (sel[2] & sel[1] & ~sel[0] & in & ~EN); 
assign out[7] = (sel[2] & sel[1] & sel[0] & in & ~EN); 

endmodule
