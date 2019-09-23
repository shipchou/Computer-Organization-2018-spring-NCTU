module ALU( result, zero, overflow, aluSrc1, aluSrc2, invertA, invertB, operation );
   
  output wire[31:0] result;
  output wire zero;
  output wire overflow;

  input wire[31:0] aluSrc1;
  input wire[31:0] aluSrc2;
  input wire invertA;
  input wire invertB;
  input wire[1:0] operation;
  
  wire [31:0] w_result;
  wire w_cout;
  wire zzeerroo;
  wire [31:0]carry_temp;
  wire set;

  assign zzeerroo=1'b0; // set a zero wire

  wire w_cin_lastbit;
  wire w_overflow;
  //determine the first cin is 0 or 1
  //we have to set it 1 if it is sub or slt operation
  assign w_cin_lastbit = ((invertB==1&&operation==2'b10)|| operation==2'b11) ? 1: 0 ; 
  ALU_1bit m0(.result(w_result[0]),.carryOut(carry_temp[0]), .a(aluSrc1[0]), .b(aluSrc2[0]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(w_cin_lastbit), .less(set) );
  ALU_1bit m1(.result(w_result[1]),.carryOut(carry_temp[1]), .a(aluSrc1[1]), .b(aluSrc2[1]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[0]), .less(zzeerroo) );
  ALU_1bit m2(.result(w_result[2]),.carryOut(carry_temp[2]), .a(aluSrc1[2]), .b(aluSrc2[2]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[1]), .less(zzeerroo) );
  ALU_1bit m3(.result(w_result[3]),.carryOut(carry_temp[3]), .a(aluSrc1[3]), .b(aluSrc2[3]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[2]), .less(zzeerroo) );
  ALU_1bit m4(.result(w_result[4]),.carryOut(carry_temp[4]), .a(aluSrc1[4]), .b(aluSrc2[4]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[3]), .less(zzeerroo) );
  ALU_1bit m5(.result(w_result[5]),.carryOut(carry_temp[5]), .a(aluSrc1[5]), .b(aluSrc2[5]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[4]), .less(zzeerroo) );
  ALU_1bit m6(.result(w_result[6]),.carryOut(carry_temp[6]), .a(aluSrc1[6]), .b(aluSrc2[6]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[5]), .less(zzeerroo) );
  ALU_1bit m7(.result(w_result[7]),.carryOut(carry_temp[7]), .a(aluSrc1[7]), .b(aluSrc2[7]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[6]), .less(zzeerroo) );
  ALU_1bit m8(.result(w_result[8]),.carryOut(carry_temp[8]), .a(aluSrc1[8]), .b(aluSrc2[8]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[7]), .less(zzeerroo) );
  ALU_1bit m9(.result(w_result[9]),.carryOut(carry_temp[9]), .a(aluSrc1[9]), .b(aluSrc2[9]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[8]), .less(zzeerroo) );
  ALU_1bit m10(.result(w_result[10]),.carryOut(carry_temp[10]), .a(aluSrc1[10]), .b(aluSrc2[10]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[9]), .less(zzeerroo) );
  ALU_1bit m11(.result(w_result[11]),.carryOut(carry_temp[11]), .a(aluSrc1[11]), .b(aluSrc2[11]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[10]), .less(zzeerroo) );
  ALU_1bit m12(.result(w_result[12]),.carryOut(carry_temp[12]), .a(aluSrc1[12]), .b(aluSrc2[12]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[11]), .less(zzeerroo) );
  ALU_1bit m13(.result(w_result[13]),.carryOut(carry_temp[13]), .a(aluSrc1[13]), .b(aluSrc2[13]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[12]), .less(zzeerroo) );
  ALU_1bit m14(.result(w_result[14]),.carryOut(carry_temp[14]), .a(aluSrc1[14]), .b(aluSrc2[14]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[13]), .less(zzeerroo) );
  ALU_1bit m15(.result(w_result[15]),.carryOut(carry_temp[15]), .a(aluSrc1[15]), .b(aluSrc2[15]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[14]), .less(zzeerroo) );
  ALU_1bit m16(.result(w_result[16]),.carryOut(carry_temp[16]), .a(aluSrc1[16]), .b(aluSrc2[16]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[15]), .less(zzeerroo) );
  ALU_1bit m17(.result(w_result[17]),.carryOut(carry_temp[17]), .a(aluSrc1[17]), .b(aluSrc2[17]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[16]), .less(zzeerroo) );
  ALU_1bit m18(.result(w_result[18]),.carryOut(carry_temp[18]), .a(aluSrc1[18]), .b(aluSrc2[18]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[17]), .less(zzeerroo) );
  ALU_1bit m19(.result(w_result[19]),.carryOut(carry_temp[19]), .a(aluSrc1[19]), .b(aluSrc2[19]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[18]), .less(zzeerroo) );
  ALU_1bit m20(.result(w_result[20]),.carryOut(carry_temp[20]), .a(aluSrc1[20]), .b(aluSrc2[20]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[19]), .less(zzeerroo) );
  ALU_1bit m21(.result(w_result[21]),.carryOut(carry_temp[21]), .a(aluSrc1[21]), .b(aluSrc2[21]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[20]), .less(zzeerroo) );
  ALU_1bit m22(.result(w_result[22]),.carryOut(carry_temp[22]), .a(aluSrc1[22]), .b(aluSrc2[22]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[21]), .less(zzeerroo) );
  ALU_1bit m23(.result(w_result[23]),.carryOut(carry_temp[23]), .a(aluSrc1[23]), .b(aluSrc2[23]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[22]), .less(zzeerroo) );
  ALU_1bit m24(.result(w_result[24]),.carryOut(carry_temp[24]), .a(aluSrc1[24]), .b(aluSrc2[24]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[23]), .less(zzeerroo) );
  ALU_1bit m25(.result(w_result[25]),.carryOut(carry_temp[25]), .a(aluSrc1[25]), .b(aluSrc2[25]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[24]), .less(zzeerroo) );
  ALU_1bit m26(.result(w_result[26]),.carryOut(carry_temp[26]), .a(aluSrc1[26]), .b(aluSrc2[26]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[25]), .less(zzeerroo) );
  ALU_1bit m27(.result(w_result[27]),.carryOut(carry_temp[27]), .a(aluSrc1[27]), .b(aluSrc2[27]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[26]), .less(zzeerroo) );
  ALU_1bit m28(.result(w_result[28]),.carryOut(carry_temp[28]), .a(aluSrc1[28]), .b(aluSrc2[28]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[27]), .less(zzeerroo) );
  ALU_1bit m29(.result(w_result[29]),.carryOut(carry_temp[29]), .a(aluSrc1[29]), .b(aluSrc2[29]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[28]), .less(zzeerroo) );
  ALU_1bit m30(.result(w_result[30]),.carryOut(carry_temp[30]), .a(aluSrc1[30]), .b(aluSrc2[30]), .invertA(invertA), .invertB(invertB), .operation(operation), .carryIn(carry_temp[29]), .less(zzeerroo) );
  ALU_btm  m31(.src1(aluSrc1[31]), .src2(aluSrc2[31]), .less(zzeerroo), .A_invert(invertA), .B_invert(invertB), .cin(carry_temp[30]), .operation(operation), .result(w_result[31]), .cout(w_cout), .overflow(w_overflow), .set(set));
  /*your code here*/
  
  assign result=w_result;
  assign zero=(result==32'b0)? 1:0;
  assign overflow=w_overflow;
  
  
	  
endmodule