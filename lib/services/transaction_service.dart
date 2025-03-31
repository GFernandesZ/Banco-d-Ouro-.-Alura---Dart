import 'package:dart_assincronismo/models/accounts.dart';
import 'package:dart_assincronismo/services/account_service.dart';

class TransactionService {
  final AccountService _accountService = AccountService();
  makeTransaction({
    required String idSender,
    required String idReceive,
    required double amount,
  }) async  {
    List<Account> listAccount = await _accountService.getAll();

    Account senderAccount = listAccount.firstWhere((acc) => acc.id == idSender ,);

    Account receiverAccount = listAccount.firstWhere((acc) => acc.id == idReceive,);

  print(senderAccount);
  print(receiverAccount);

  }
}