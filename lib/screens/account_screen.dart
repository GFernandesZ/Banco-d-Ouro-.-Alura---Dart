import 'dart:io';

import 'package:dart_assincronismo/models/accounts.dart';
import 'package:dart_assincronismo/services/account_service.dart';

class AccountScreen {
  final AccountService _accountService = AccountService();

  void initializeStream() {
    _accountService.streamInfos.listen(
      (event) {
      print(event);
      },
    );
  }
  void runChatBot() async {
    print("Bom dia! Eu sou o Lewis, assistente do Banco d'Ouro!");
    print("Que bom te ter aqui com a gente.\n");

    bool isrunning = true;
    while (isrunning){
      print("Como eu posso te ajudar? (digite o número desejado)");
      print("1 - Ver todas sua contas.");
      print("2 - Adicionar nova conta.");
      print("3 - Sair\n");

      String? input = stdin.readLineSync();

      if (input != null){
        switch (input) {
          case "1":
            {
              await _getAllAccount();
              break;
            }
          case "2":
            {
              await _addExampleAccount();
              break;
            }
          case "3":
            {
              isrunning = false;
              print("Até logo. 👋");
              break;
            }
          default:{
            print("Não entendi, tente novamente");
          }

        }
      }
    }
  }

  _getAllAccount() async {
    try{
    List<Account> listAccounts = await _accountService.getAll();
    print(listAccounts);
    } on Exception {
      print("Não deu");
      print("Tente novamente");
    }
  }

  _addExampleAccount() async{

    Account example = Account(
      id: "ID555", 
      name: "Haley", 
      lastName: "Chirívia", 
      balance: 8001,
      );
    
    await _accountService.addAccount(example);
  }

}