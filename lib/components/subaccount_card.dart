import 'package:flutter/material.dart';
import 'package:flutter_demo/mock/subaccounts.dart';


class SubAccountCard extends StatefulWidget {
  final String heroTag;
  final SubAccount subAccount;
  const SubAccountCard({
    Key? key,
    required this.heroTag,
    required this.subAccount
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SubAccountCardState();

}

class _SubAccountCardState extends State<SubAccountCard> {

  _SubAccountCardState({Key? key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        children: [
          Hero(
            tag: widget.heroTag,
            child: subAccountIcon(widget.subAccount),
          ),
          Text(
              widget.subAccount.name,
              textScaleFactor : MediaQuery.of(context).textScaleFactor
          ),
          Text(
              widget.subAccount.money,
              textScaleFactor : MediaQuery.of(context).textScaleFactor
          )
        ],
      ),
    );
  }
}

Widget subAccountIcon(SubAccount subAccount) {
  return Container(
    color: subAccount.color,
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: subAccount.icon,
    ),
  );
}
