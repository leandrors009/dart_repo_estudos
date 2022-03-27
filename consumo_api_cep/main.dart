import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'dart:io';

void main(List<String> arguments) async {
  var cep = inputCep();
  var url = setUrl(cep);

  var response = await http.get(url);

  if (response.statusCode == 200) {
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
    var returnText = ''' 

    <== CEP ENCONTRADO ==>

    CEP: ${jsonResponse['cep']}
    ESTADO: ${jsonResponse['state']}
    CIDADE: ${jsonResponse['city']}
    BAIRRO: ${jsonResponse['neighborhood']}
    RUA: ${jsonResponse['street']}
    PROVEDOR: ${jsonResponse['service']}

    ''';

    print(returnText);
  } else {
    print('A conexão falhou! Error: ${response.statusCode}');
  }
}

inputCep() {
  stdout.write('\n    Digite o CEP: ');
  var cep = stdin.readLineSync().toString();
  return cep;
}

setUrl(String cep) => Uri.parse('https://brasilapi.com.br/api/cep/v1/{$cep}');
