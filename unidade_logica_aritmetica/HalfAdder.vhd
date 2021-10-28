//Sistemas Computacionais - Unidade Lógica Aritmética (Meio Somador)
//Felipe Daniel Dias dos Santos - 11711ECP004
//Graduação em Engenharia de Computação - Faculdade de Engenharia Elétrica - Universidade Federal de Uberlândia

CHIP HalfAdder{

    IN a, b;
    OUT sum, carry;

    PARTS:

        And(a = a, b = b, out = carry);
        Xor(a = a, b = b, out = sum);
}
