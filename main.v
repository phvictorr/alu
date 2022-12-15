/* Implemente uma ALU que execute as operações de soma (controle = 1) e
subtração (controle = 0), considerando dois operandos com 8 bits cada. Crie um
testbench para verificar o funcionamento do seu código 

By Felipe Victor: @phvictorr

*/

module main(A, B, controle, s);
    input [7:0] A, B; // Entradas de 8 bits
    input controle; // Controle 1 para soma ou 0 para subtração
    output [7:0] s; // Saída de 8 bits
    reg [7:0] s3; // Saída intermediária
    wire [7:0] w1, w2; // Saídas intermediárias

    assign w1 = A; // A recebe fio w1
    assign w2 = B; // B recebe fio w2
    assign s = s3; // atribui registrador s3 à saída

    always @(controle)
    begin
        if(controle == 1'b1) // Se o controle for 1, soma
            s3 = w1 + w2;
    end

    always @(controle)
    begin
        if(controle == 1'b0) // Se o controle for 0, subtrai
            s3 = w1 - w2;
    end

endmodule
