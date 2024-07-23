import 'package:test/test.dart';
import 'package:calculadoraimc/validacoes.dart';

void main() {
  group('Testes da função validarTamanhoNome', () {
    test('Nome com 2 caracteres deve ser inválido', () {
      expect(validarTamanhoNome('Jo'), isFalse);
    });

    test('Nome com 3 caracteres deve ser válido', () {
      expect(validarTamanhoNome('Ana'), isTrue);
    });

    test('Nome com mais de 3 caracteres deve ser válido', () {
      expect(validarTamanhoNome('Carlos'), isTrue);
    });
  });
}
