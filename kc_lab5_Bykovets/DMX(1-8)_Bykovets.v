module dmx18 (
    input wire in,          
    input wire [2:0] adr,   
    input wire EN,          
    output wire [7:0] out   
);

assign out[0] = (~adr[2] & ~adr[1] & ~adr[0] & in & ~EN);  
assign out[1] = (~adr[2] & ~adr[1] & adr[0] & in & ~EN); 
assign out[2] = (~adr[2] & adr[1] & ~adr[0] & in & ~EN); 
assign out[3] = (~adr[2] & adr[1] & adr[0] & in & ~EN); 
assign out[4] = (adr[2] & ~adr[1] & ~adr[0] & in & ~EN); 
assign out[5] = (adr[2] & ~adr[1] & adr[0] & in & ~EN); 
assign out[6] = (adr[2] & adr[1] & ~adr[0] & in & ~EN); 
assign out[7] = (adr[2] & adr[1] & adr[0] & in & ~EN); 

always @(in, adr, EN, out) begin
    $display("Time=%0t in=%b EN=%b adr=%b out=%b", $time, in, EN, adr, out);
end

endmodule