//------------------------------------------------------------------------------
// MIPS register file
//   width: 32 bits
//   depth: 32 words (reg[0] is static zero register)
//   2 asynchronous read ports
//   1 synchronous, positive edge triggered write port
//------------------------------------------------------------------------------

`include "register.v"
`include "decoders.v"

module regfile
(
output[31:0]	ReadData1,	// Contents of first register read
output[31:0]	ReadData2,	// Contents of second register read
input[31:0]	WriteData,	// Contents to write to register
input[4:0]	ReadRegister1,	// Address of first register to read
input[4:0]	ReadRegister2,	// Address of second register to read
input[4:0]	WriteRegister,	// Address of register to write
input		RegWrite,	// Enable writing of register when High
input		Clk		// Clock (Positive Edge Triggered)
);

	wire[31:0] regoutput0;
	wire[31:0] regoutput1;
	wire[31:0] regoutput2;
	wire[31:0] regoutput3;
	wire[31:0] regoutput4;
	wire[31:0] regoutput5;
	wire[31:0] regoutput6;
	wire[31:0] regoutput7;
	wire[31:0] regoutput8;
	wire[31:0] regoutput9;
	wire[31:0] regoutput10;
	wire[31:0] regoutput11;
	wire[31:0] regoutput12;
	wire[31:0] regoutput13;
	wire[31:0] regoutput14;
	wire[31:0] regoutput15;
	wire[31:0] regoutput16;
	wire[31:0] regoutput17;
	wire[31:0] regoutput18;
	wire[31:0] regoutput19;
	wire[31:0] regoutput20;
	wire[31:0] regoutput21;
	wire[31:0] regoutput22;
	wire[31:0] regoutput23;
	wire[31:0] regoutput24;
	wire[31:0] regoutput25;
	wire[31:0] regoutput26;
	wire[31:0] regoutput27;
	wire[31:0] regoutput28;
	wire[31:0] regoutput29;
	wire[31:0] regoutput30;
	wire[31:0] regoutput31;
	wire[31:0] decoutput;


	decoder1to32 decoder(decoutput, RegWrite, WriteRegister); //decoder
	register32zero reg0(regoutput0, WriteData, decoutput[0], Clk); //register zero
	register32 reg1(regoutput1, WriteData, decoutput[1], Clk); //the other registers
	register32 reg2(regoutput2, WriteData, decoutput[2], Clk);
	register32 reg3(regoutput3, WriteData, decoutput[3], Clk);
	register32 reg4(regoutput4, WriteData, decoutput[4], Clk); 
	register32 reg5(regoutput5, WriteData, decoutput[5], Clk);
	register32 reg6(regoutput6, WriteData, decoutput[6], Clk);
	register32 reg7(regoutput7, WriteData, decoutput[7], Clk);
	register32 reg8(regoutput8, WriteData, decoutput[8], Clk);
	register32 reg9(regoutput9, WriteData, decoutput[9], Clk);
	register32 reg10(regoutput10, WriteData, decoutput[10], Clk);
	register32 reg11(regoutput11, WriteData, decoutput[11], Clk);
	register32 reg12(regoutput12, WriteData, decoutput[12], Clk);
	register32 reg13(regoutput13, WriteData, decoutput[13], Clk);
	register32 reg14(regoutput14, WriteData, decoutput[14], Clk); 
	register32 reg15(regoutput15, WriteData, decoutput[15], Clk);
	register32 reg16(regoutput16, WriteData, decoutput[16], Clk);
	register32 reg17(regoutput17, WriteData, decoutput[17], Clk);
	register32 reg18(regoutput18, WriteData, decoutput[18], Clk);
	register32 reg19(regoutput19, WriteData, decoutput[19], Clk);
	register32 reg20(regoutput20, WriteData, decoutput[20], Clk);
	register32 reg21(regoutput21, WriteData, decoutput[21], Clk);
	register32 reg22(regoutput22, WriteData, decoutput[22], Clk);
	register32 reg23(regoutput23, WriteData, decoutput[23], Clk);
	register32 reg24(regoutput24, WriteData, decoutput[24], Clk); 
	register32 reg25(regoutput25, WriteData, decoutput[25], Clk);
	register32 reg26(regoutput26, WriteData, decoutput[26], Clk);
	register32 reg27(regoutput27, WriteData, decoutput[27], Clk);
	register32 reg28(regoutput28, WriteData, decoutput[28], Clk);
	register32 reg29(regoutput29, WriteData, decoutput[29], Clk);
	register32 reg30(regoutput30, WriteData, decoutput[30], Clk);
	register32 reg31(regoutput31, WriteData, decoutput[31], Clk);
	mux32to1by32 multiplexer1(ReadData1, ReadRegister1, 
				regoutput0, regoutput1, regoutput2, regoutput3, regoutput4, 
				regoutput5, regoutput6, regoutput7, regoutput8, regoutput9, 
				regoutput10, regoutput11, regoutput12, regoutput13, regoutput14, 
				regoutput15, regoutput16, regoutput17, regoutput18, regoutput19,
				regoutput20, regoutput21, regoutput22, regoutput23, regoutput24, 
				regoutput25, regoutput26, regoutput27, regoutput28, regoutput29,
				regoutput30, regoutput31);
	mux32to1by32 multiplexer2(ReadData2, ReadRegister2, 
				regoutput0, regoutput1, regoutput2, regoutput3, regoutput4, 
				regoutput5, regoutput6, regoutput7, regoutput8, regoutput9, 
				regoutput10, regoutput11, regoutput12, regoutput13, regoutput14, 
				regoutput15, regoutput16, regoutput17, regoutput18, regoutput19,
				regoutput20, regoutput21, regoutput22, regoutput23, regoutput24, 
				regoutput25, regoutput26, regoutput27, regoutput28, regoutput29,
				regoutput30, regoutput31);
endmodule