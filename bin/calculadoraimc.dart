import 'dart:io';
import 'package:calculadoraimc/pessoa.dart';
import 'package:calculadoraimc/validacoes.dart';

void main() {

  String nome;
  double peso;
  double altura;

  do {
    stdout.write('Digite seu nome: ');
    nome = stdin.readLineSync()!;

    if (!validarTamanhoNome(nome)) {
      print('O nome deve conter 3 dígitos ou mais');
    }
  } while (!validarTamanhoNome(nome));

  do {
    stdout.write('Digite seu peso (kg): ');
    peso = double.parse(stdin.readLineSync()!);

    if (!validarPesoPositivo(peso)) {
      print('O Peso não pode ser igual ou menor a Zero');
    }
  } while (!validarPesoPositivo(peso));

  do {
    stdout.write('Digite sua altura (m): ');
    altura = double.parse(stdin.readLineSync()!);

    if (!validarAlturaPositiva(altura)) {
      print('A Altura não pode ser igual ou menor a Zero');
    }
  } while (!validarAlturaPositiva(altura));

  Pessoa pessoa = Pessoa(nome, peso, altura);
  double imc = pessoa.calcularIMC();
  String classificacao = pessoa.classificacaoIMC(imc);

  print('\nNome: $nome');
  print('IMC: ${imc.toStringAsFixed(2)}');
  print('Classificação: $classificacao');
}