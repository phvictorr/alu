`timescale 1ns/100ps
`include "main.v"

module main_tb;
    reg [7:0] A, B; // Entradas de 8 bits
    reg controle; // Controle 1 para soma ou 0 para subtração
    wire [7:0] s; // Saída de 8 bits

    main main1(A, B, controle, s); // Instancia o módulo main
    initial begin
        $dumpfile("main_tb.vcd"); // Cria o arquivo de dump
        $dumpvars(0, main_tb); // Inicia o dump
        A = 8'b00000010; // 2
        B = 8'b00000001; // 1
        controle = 1'b1; // 1 -> soma
        #1
        A = 8'b00000010; // 2
        B = 8'b00000001; // 1
        controle = 1'b0; // 0 -> subtração
        #1
        $finish; // para finalizar a simulação
    end

endmodule