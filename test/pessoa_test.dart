import 'package:test/test.dart';
import 'package:calculadoraimc/pessoa.dart'; 

void main() {
  group('Testes da classe Pessoa', () {
    test('Cálculo de IMC deve retornar o valor correto', () {
      Pessoa pessoa = Pessoa('João', 70, 1.75); 
      expect(pessoa.calcularIMC(), closeTo(22.86, 0.01));
    });

    test('Classificação de IMC deve retornar "Saudável" para IMC entre 18.5 e 24.9', () {
      Pessoa pessoa = Pessoa('Maria', 60, 1.70);
      double imc = pessoa.calcularIMC();
      expect(pessoa.classificacaoIMC(imc), equals('Saudável'));
    });

    test('Classificação de IMC deve retornar "Sobrepeso" para IMC entre 25 e 29.9', () {
      Pessoa pessoa = Pessoa('Carlos', 85, 1.70);
      double imc = pessoa.calcularIMC();
      expect(pessoa.classificacaoIMC(imc), equals('Sobrepeso'));
    });

    test('Classificação de IMC deve retornar "Obesidade Grau I" para IMC entre 30 e 34.9', () {
      Pessoa pessoa = Pessoa('Ana', 95, 1.70);
      double imc = pessoa.calcularIMC();
      expect(pessoa.classificacaoIMC(imc), equals('Obesidade Grau I'));
    });
  });
}