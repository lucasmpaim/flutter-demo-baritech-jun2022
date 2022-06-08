
import 'package:flutter/material.dart';
import 'package:flutter_demo/components/subaccount_card.dart';
import 'package:flutter_demo/mock/subaccounts.dart';
import 'package:flutter_demo/screens/detail_screen.dart';
import 'package:rive/rive.dart';

class GridPage extends StatefulWidget {
  const GridPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _GridPageState();

}

class _GridPageState extends State<GridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(children: [
          SizedBox(
            height: 100,
            child: Container(
              color: const Color(0xFFBB4D4E),
              child: const
              RiveAnimation.asset(
                'assets/2242-4430-25d-head-rig.riv',
              ),
            ),
          ),
          Flexible(
            child: GridView.builder(
              gridDelegate: _delegate(context),
              itemCount: allAccounts.length,
              itemBuilder: _itemBuilder,
              shrinkWrap: true,
            ),
          )
        ],),
      ),
    );
  }
}

SliverGridDelegate _delegate(BuildContext context) {
  var hasTextScaleFactor = MediaQuery.of(context).textScaleFactor > 1;
  return SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: hasTextScaleFactor ? 1 : 2,
      childAspectRatio: 1.2 / 1,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20
  );
}

var _itemBuilder = (BuildContext context, index) {
  var subAccount = allAccounts[index];
  var heroTag = subAccount.name;
  return GestureDetector(
    child: SubAccountCard(heroTag: heroTag, subAccount: subAccount),
    onTap: () => {
      Navigator.of(context)
          .push(
          MaterialPageRoute(
              builder: (context) => SubAccountDetailPage(subAccount: subAccount, heroTag: heroTag)
          )
      )
    },
  );
};