
import 'package:flutter/material.dart';

class SubAccount {
  final String name;
  final Icon icon;
  final Color color;
  final String money;

  SubAccount(this.name, this.icon, this.color, this.money);
}

List<SubAccount> allAccounts = [
  SubAccount("Ração", const Icon(Icons.pets), Colors.redAccent, "R\$150,00"),
  SubAccount("Carro Novo", const Icon(Icons.car_rental), Colors.orangeAccent, "R\$15.000,00"),
  SubAccount("Curso", const Icon(Icons.school), Colors.blueAccent, "R\$850,00")
];