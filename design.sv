// 2:4 Decoder with inputs a and b
// Outputs: d0, d1, d2, d3

module decoder(
    input wire a,
    input wire b,
    output reg d0,
    output reg d1,
    output reg d2,
    output reg d3
);

always_comb begin
  case ({a, b})
        2'b00: begin d0 = 1; d1 = 0; d2 = 0; d3 = 0; end
        2'b01: begin d0 = 0; d1 = 1; d2 = 0; d3 = 0; end
        2'b10: begin d0 = 0; d1 = 0; d2 = 1; d3 = 0; end
        2'b11: begin d0 = 0; d1 = 0; d2 = 0; d3 = 1; end
        default: begin d0 = 0; d1 = 0; d2 = 0; d3 = 0; end // default case for invalid input
    endcase
end

endmodule
