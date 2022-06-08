
import 'package:flutter/material.dart';
import 'package:flutter_demo/components/subaccount_card.dart';
import 'package:flutter_demo/mock/subaccounts.dart';

class SubAccountDetailPage extends StatefulWidget {

  final SubAccount subAccount;
  final String heroTag;

  const SubAccountDetailPage({
    Key? key,
    required this.subAccount,
    required this.heroTag
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SubAccountDetailPageState();

}

class _SubAccountDetailPageState extends State<SubAccountDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.subAccount.name),
        backgroundColor: widget.subAccount.color,
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Hero(
                tag: widget.heroTag,
                child: Container(
                  color: widget.subAccount.color,
                  height: 150,
                  width: 400,
                  child: widget.subAccount.icon,
                ),
            ),
            Center(
              child: Text(
                  widget.subAccount.money,
                  textScaleFactor : MediaQuery.of(context).textScaleFactor
              ),
            )
          ],
        )
      ),
    );
  }
}
