import 'package:dart_assincronismo/screens/account_screen.dart';

void main() {
  AccountScreen accountScreen = AccountScreen();
  accountScreen.initializeStream();
  accountScreen.runChatBot(); 
}











































// ====================================================================================================================================
// =====================================================Atividades=====================================================================
// ====================================================================================================================================



//   import 'dart:convert';


//   import 'package:http/http.dart';
//   //import 'dart:convert';


//   void main() {

//   requestData2("Machado de Assis");
  
// }
// // Utilizando o then

// requestData(){
//   String url = "https://gist.githubusercontent.com/GFernandesZ/07216de9e0b18621325037692d7f6e7a/raw/3439b2054f399af8eaa64a8a6b97f21be004d2a0/books.json";
//   Future <Response> futureResponse = get(Uri.parse(url));
//   futureResponse.then( 
//     (Response response) { 
//       List<dynamic> livros = json.decode(response.body);
//       Map<String, dynamic> mapLivro = livros.firstWhere
//         ((element) => element["author"] == "Paulo Coelho",
//       );
//       print(mapLivro["title"]);
//     },
//   );
// }

// // Utilizando o await

// requestData2 (String author) async{
//   String url = "https://gist.githubusercontent.com/GFernandesZ/07216de9e0b18621325037692d7f6e7a/raw/3439b2054f399af8eaa64a8a6b97f21be004d2a0/books.json";
//   Response response = await get(Uri.parse(url));
//   List<dynamic> listbook = json.decode(response.body);
//   List<dynamic> booksbyAuthor = listbook.where((book) => book["author"] == author). toList();
//   for(dynamic book in booksbyAuthor){
//     print("Titulo : ${book["title"]}");
//   }
// }












// import 'dart:convert';

// import 'package:http/http.dart';

// void main() {
//   requestData(["ovo", "frango"]);
  
// }

// requestData(List<String> listIngredients) async{
//   String url = "https://gist.githubusercontent.com/GFernandesZ/9676c8ee802d2de77fcb44dd4a78e5d2/raw/68f5cd8a6d8bc56e04491a2c002df0bcaf0d6ec9/recipes.json";
//   Response response = await get(Uri.parse(url));
//   List <dynamic> listRecipes = json.decode(response.body);
//   List<String> listPossibleRecipes = [];
//   for (dynamic recipeDyn in listRecipes) { 
//     //vamos verificar receita por receita recebida com um for, transofrmando cada dynamic em um Map<String,dynamic> e capturando a lista de ingredientes com a chave "ingredients":
//     Map<String, dynamic> recipe = recipeDyn as Map<String, dynamic>;
//     List<dynamic> recipeIngredients = recipe["ingredients"];

//     //Agora use o método every de lista para verificar se todos os elementos da lista de ingredientes recebido por parâmetro passam em uma condição específica:
//     bool containsAllIngredients = listIngredients.every(
//       (ingredient) {
//         bool isContainsIngredient = false;
//         for (String recipeIngredient in recipeIngredients) {
//           if (recipeIngredient
//               .toLowerCase()
//               .contains(ingredient.toLowerCase())) {
//             isContainsIngredient = true;
//             break;
//           }
//         }
//         return isContainsIngredient;
//       },
//     );
//     if (containsAllIngredients) {
//       listPossibleRecipes.add(recipe["name"]);
//     }
//   } 
//   for (String recipe in listPossibleRecipes) {
//   print("Receita: $recipe");
//   }


// }


















// import 'dart:convert';

// import 'package:http/http.dart';

// void main() {
//   requestData();
  
// }

// requestData() async{

//   String url = "https://gist.githubusercontent.com/GFernandesZ/125ce17c0946f41d00bff5c74e322bdd/raw/5753d05e0ce0b2b12e92a586bf51ee8704b12c28/players.json";
//   Response response = await get(Uri.parse(url));

//   Map<String, dynamic> mapPlayers = json.decode(response.body);

//   int playersPerTeam = mapPlayers["rules"]["playersPerTeam"];

//   List<dynamic> listPlayers = mapPlayers["players"];
//   listPlayers.sort(
//       (a, b) => (b["roundsWaiting"] as int).compareTo(a["roundsWaiting"]));

//   List<dynamic> listFirstTeam = listPlayers.sublist(0, playersPerTeam);
//   List<dynamic> listSecondTeam =
//       listPlayers.sublist(playersPerTeam, playersPerTeam * 2);

//   print("**Time A**");
//   for (Map<String, dynamic> person in listFirstTeam) {
//     print(person["name"]);
//   }

//   print("\n**Time B**");
//   for (Map<String, dynamic> person in listSecondTeam) {
//     print(person["name"]);
//   }
// }







// Você está desenvolvendo um sistema de agendamento para uma clínica veterinária. As consultas são armazenadas em formato JSON, incluindo o nome do animal, o horário da consulta e o nome do veterinário responsável.

// Sua tarefa é criar uma função em Dart que filtre as consultas de um determinado veterinário e as organize por ordem de dia e horário e mostre na tela.

// import 'dart:convert';

// import 'package:http/http.dart';

// void main() {
//   fetchVetAndSchedule("Dra. Patrícia Gomes");
// }

// fetchVetAndSchedule(String veterinarian) async {
//   String url =
//       "https://gist.githubusercontent.com/GFernandesZ/1c81b5044c551fc0cba451a0930076b0/raw/2f6fd3959eabcd072bd2f18e907b332354fcdd29/vet.json";
//   Response response = await get(Uri.parse(url));

//   List<dynamic> listAppointments = json.decode(response.body);

//   List<dynamic> vetAppointments = listAppointments
//       .where((appointment) => appointment["veterinarian"] == veterinarian)
//       .toList();

//   vetAppointments.sort((a, b) => DateTime.parse(a["appointment"])
//       .compareTo(DateTime.parse(b["appointment"])));

//   print("Consultas Agendadas para $veterinarian:");
//   for (Map<String, dynamic> appointment in vetAppointments) {
//     print(
//         "Pet: ${appointment["pet_name"]} - Horário: ${appointment["appointment"]}");
//   }
// }
// 

































// ====================================================================================================================================
// =====================================================Atividades Pendentes=====================================================================
// ====================================================================================================================================

// Exercícios:

// Você está trabalhando no desenvolvimento de um aplicativo para uma loja online. A aplicação precisa se comunicar com uma API para obter, adicionar e atualizar produtos no catálogo. O objetivo dos exercícios a seguir é implementar funcionalidades que permitam ao aplicativo gerenciar os produtos na loja.
// Exercício 1: Adicionando um novo produto ao catálogo

// Crie uma função que adicione um novo produto ao catálogo existente representado por uma lista JSON. O produto deve conter as chaves id, name, e price.

// import 'dart:convert';

// void main() {
//   String responseBody = '''
//   [
//     {"id": 1, "name": "Celular", "price": 1200.75},
//     {"id": 2, "name": "Notebook", "price": 3500.10},
//     {"id": 3, "name": "Tablet", "price": 1500.00}
//   ]
//   ''';

// }

// Exercício 2: Enviando dados de um novo produto para a API

// Crie uma função que envie dados de um novo produto para a API da loja usando o método POST. Os dados a serem enviados devem incluir um produto com as chaves id, name, e price.

// import 'dart:convert';
// import 'package:http/http.dart';

// Future<void> sendProduct(Map<String, dynamic> product) async {
//   Uri url = Uri.parse('SUA_URL_GIST_AQUI');
// }

// void main() {
//   var newProduct = {
//     "id": 4,
//     "name": "Monitor",
//     "price": 800.00
//   };
//   sendProduct(newProduct);
// }

// Exercício 3: Enviando múltiplos produtos em uma requisição

// Crie uma função que envie múltiplos produtos em uma única requisição para a API da loja. Os dados devem ser enviados no formato JSON e incluir uma lista de produtos. Essa função também deve solicitar o nome da lista, que deve ser usado para criar a descrição e o nome do arquivo no Gist.

// import 'dart:convert';
// import 'package:http/http.dart';

// Future<void> sendMultipleProducts(List<Map<String, dynamic>> products, String nameList) async {
//   Uri url = Uri.parse('SUA_URL_GIST_AQUI');
  
//   // Seu código aqui.
// }

// void main() {
//   var newProducts = [
//     {
//       "id": 5,
//       "name": "Teclado",
//       "price": 200.00
//     },
//     {
//       "id": 6,
//       "name": "Mouse",
//       "price": 100.00
//     }
//   ];
//   sendMultipleProducts(newProducts, "Periféricos");
// }




























// ====================================================================================================================================
// =====================================================Gabarito=====================================================================
// ====================================================================================================================================

// Exercício 1: Adicionando um novo produto ao catálogo

//     Importe a biblioteca dart:convert.
//     Decodifique a string JSON usando json.decode().
//     Adicione a nova entrada na lista.
//     Codifique a lista de volta para JSON usando json.encode().
//     Imprima o JSON atualizado.

// import 'dart:convert';

// void main() {
//   String responseBody = '''
//   [
//     {"id": 1, "name": "Celular", "price": 1200.75},
//     {"id": 2, "name": "Notebook", "price": 3500.10},
//     {"id": 3, "name": "Tablet", "price": 1500.00}
//   ]
//   ''';

//   // Decodifica a string JSON para uma lista de mapas
//   List<dynamic> products = json.decode(responseBody);

//   // Adiciona uma nova entrada na lista
//   Map<String, dynamic> newProduct = {
//     "id": 4,
//     "name": "Monitor",
//     "price": 800.00
//   };
//   products.add(newProduct);

//   // Codifica a lista de volta para JSON
//   String updatedJson = json.encode(products);

//   print(updatedJson);
// }

// Exercício 2: Enviando dados de um novo produto para a API

//     Importe as bibliotecas necessárias.
//     Defina a função assíncrona sendProduct utilizando async.
//     Realize a requisição HTTP usando o método POST.
//     Codifique os dados a serem enviados no formato JSON usando json.encode().
//     Crie uma chave de API do GIST, caso não tenha, e configure-a no cabeçalho do POST.
//     Adicione o corpo da requisição (body) com os dados codificados.
//     Imprima a resposta da API.

// import 'dart:convert';
// import 'package:http/http.dart';

// Future<void> sendProduct(Map<String, dynamic> product) async {
//   Uri url = Uri.parse('SUA_URL_GIST_AQUI');
  
//   Response response = await post(
//     url,
//     body: json.encode({
//         "description": "products.json",
//         "public": true,
//         "files": {
//           "products.json": {
//             "content": json.encode(product),
//           }
//         }
//       },
//     ),
//     headers: {
//         'Content-Type': 'application/json',
//         'Authorization': 'Bearer ${SEU_TOKEN_AQUI}',
//     },
//   );

//   if (response.statusCode == 200) {
//     print('Produto enviado com sucesso!');
//   } else {
//     print('Erro ao enviar produto: ${response.statusCode}');
//   }
// }

// void main() {
//   Map<String, dynamic> newProduct = {
//     "id": 4,
//     "name": "Monitor",
//     "price": 800.00
//   };
//   sendProduct(newProduct);
// }

// Exercício 3: Enviando múltiplos produtos em uma requisição

//     Importe as bibliotecas necessárias.
//     Defina a função assíncrona sendMultipleProducts utilizando async.
//     Realize a requisição HTTP usando o método POST.
//     Codifique os dados a serem enviados no formato JSON usando json.encode().
//     Adicione o cabeçalho Authorization com o token de autenticação.
//     Adicione o corpo da requisição (body) com os dados codificados.
//         Para a chave "description" utilize o nameList recebido por parâmetro.
//         Para a chave contendo o nome do arquivo, crie um nome que não tenha letras maísculas e espaços usando .toLowerCase().replaceAll(" ", "").
//     Imprima a resposta da API.

// import 'dart:convert';
// import 'package:http/http.dart' as http;

// Future<void> sendMultipleProducts(List<Map<String, dynamic>> products, String nameList) async {
//   Uri url = Uri.parse('SUA_URL_GIST_AQUI');
  
//   String content = json.encode(products);
  
//   Response response = await post(
//     url,
//     body: json.encode({
//         "description": nameList,
//         "public": true,
//         "files": {
//           "${nameList.toLowerCase().replaceAll(" ", "")}.json": {
//             "content": content,
//           }
//         }
//       },
//     ),
//     headers: {
//         'Content-Type': 'application/json',
//         'Authorization': 'Bearer ${SEU_TOKEN_AQUI}',
//     },
//   );

//   if (response.statusCode == 200) {
//     print('Produto enviado com sucesso!');
//   } else {
//     print('Erro ao enviar produto: ${response.statusCode}');
//   }
// }

// void main() {
//   var newProducts = [
//     {
//       "id": 5,
//       "name": "Teclado",
//       "price": 200.00
//     },
//     {
//       "id": 6,
//       "name": "Mouse",
//       "price": 100.00
//     }
//   ];
//   sendMultipleProducts(newProducts, "Periféricos");
// }