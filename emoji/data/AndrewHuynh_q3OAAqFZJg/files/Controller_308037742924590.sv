`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2016 10:03:55 PM
// Design Name: 
// Module Name: Controller
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Controller(
    input logic [31:0] Instruction,
    output logic ri,
    output logic [5:0] rs,
    output logic [5:0] rd,
    output logic [2:0] F_Code,
    output logic mode,
    output logic [5:0] rt,
    output logic [14:0] imm,
    output logic muxsel2,
    output logic RegWrite,
    output logic MemWrite
    );
    
    //assign RegWrite = 1;
    always_comb begin 
        if(Instruction[31] == 0) begin 
            RegWrite = 1;
            ri = Instruction[31];
            rs = Instruction[30:25];
            rd = Instruction[24:19];
            mode = Instruction[18];
            F_Code = Instruction[17:15];
            rt = Instruction[14:9];
            if(F_Code == 3'b100) begin //load
                muxsel2 = 0;
            end
            else begin
                muxsel2 = 1;
            end
            if(F_Code == 3'b110) begin //store//
                RegWrite = 0;
                muxsel2 = 0;
                MemWrite = 1;
            end
            else begin
                MemWrite = 0;
            end
        end
        else begin //i type 
            RegWrite = 1;
            ri = Instruction[31];
            rs = Instruction[30:25];
            rd = Instruction[24:19];
            mode = Instruction[18];
            F_Code = Instruction[17:15];
            imm = Instruction[14:0];
            if(F_Code == 3'b100) begin //load
                muxsel2 = 0;
            end
            else begin
                muxsel2 = 1; 
                MemWrite = 0;
            end
        end
    end
        
endmodule
