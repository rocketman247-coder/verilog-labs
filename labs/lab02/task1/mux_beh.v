// mux_beh.v
// 2-to-1 multiplexer, BEHAVIORAL style.
//
// This file does not compile as-is. Find the bug and fix it before moving on.
// Hint: think carefully about which port should be a net and which should be
// a variable in behavioral modeling.

module mux_beh (
  input wire I0,
  input wire I1,
  input wire S,
  output reg Y//behavorial modelling requires a register data type because it uses procedural blocks like always and initial which initiate at specific instances.
);

  always @(I0,I1,S) begin//here we were needed to define the inputs
    if (S)
      Y = I1;
    else
      Y = I0;
  end

endmodule
