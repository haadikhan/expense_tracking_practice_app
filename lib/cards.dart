import 'package:flutter/material.dart';

import 'domain/card_model.dart';

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> with SingleTickerProviderStateMixin {
  late TabController _tabController = TabController(length: 4, vsync: this);

  MyCard card = MyCard(
    cardName: 'cardName',
    cardNumber: '0123 4567 8925 1534',
    expiryDate: '07/23',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(top: 40, left: 5, right: 5),
        child: Column(
          children: [
            _header(),
            const SizedBox(height: 10),
            _debitCard(),
            const SizedBox(height: 10),
            _showCvvButton(),
            const SizedBox(height: 10),
            _transferLimitContainer(),
            const SizedBox(height: 10),
            Divider(
              height: 4,
              thickness: 2,
              color: Colors.white54,
            ),
            _options(),
          ],
        ),
      ),
      // bottomNavigationBar: Container(
      //   padding: EdgeInsets.symmetric(vertical: 8),
      //   margin: EdgeInsets.only(bottom: 12, left: 10, right: 10),
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(20),
      //     color: Colors.grey[800],
      //   ),
      //   child: TabBar(
      //     labelStyle: TextStyle(color: Colors.white30),
      //     labelColor: Colors.lightGreen,
      //     unselectedLabelColor: Colors.white,
      //     tabs: [
      //       Tab(
      //         text: "Dashboard",
      //         icon: Icon(Icons.dashboard),
      //       ),
      //       Tab(
      //         text: "Cards",
      //         icon: Icon(Icons.card_giftcard),
      //       ),
      //       Tab(
      //         text: "Support",
      //         icon: Icon(Icons.message),
      //       ),
      //       Tab(
      //         text: "Profile",
      //         icon: Icon(
      //           Icons.people,
      //         ),
      //       )
      //     ],
      //     controller: _tabController,
      //   ),
      // ),
    );
  }

  Widget _header() {
    return Center(
      child: Text(
        "Virtual CashMate Cards",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }

  Widget _debitCard() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      margin: EdgeInsets.symmetric(horizontal: 15),
      height: 170,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/background.jpg"),
        ),
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                card.cardNumber,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 50),
              Icon(
                Icons.copy,
                color: Colors.white,
                size: 20,
              ),
            ],
          ),
          const SizedBox(height: 70),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style: TextStyle(color: Colors.white54, fontSize: 15),
                  ),
                  const Text(
                    "CashMate Card ",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Valid",
                    style: TextStyle(color: Colors.white54, fontSize: 15),
                  ),
                  Text(
                    card.expiryDate,
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
              Text(
                "Visa",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _showCvvButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 115, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.lightGreen[300],
      ),
      child: Text(
        "SHOW CVV",
        style: TextStyle(
            color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _transferLimitContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey,
      ),
      child: ListTile(
        leading: Icon(
          Icons.account_balance,
          color: Colors.white,
          size: 30,
        ),
        title: Text(
          "\$5040 out of \$8000",
          style: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "Monthly Transfer Limit",
          style: TextStyle(
            color: Colors.white54,
            fontSize: 12,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_sharp,
          color: Colors.white,
          size: 25,
        ),
      ),
    );
  }

  Widget _optionsFunction(String text, IconData icon) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.green,
      ),
      title: Text(
        text,
        style: TextStyle(color: Colors.white54, fontSize: 18),
      ),
    );
  }

  Widget _options() {
    return Column(
      children: [
        _optionsFunction("Connect to Apple Pay", Icons.wifi),
        _optionsFunction("Opration History", Icons.history),
        _optionsFunction("Change Pin", Icons.vpn_key),
        _optionsFunction("Rename Card", Icons.phone),
        _optionsFunction("Transaction Report", Icons.copy),
        _optionsFunction("Block", Icons.lock),
      ],
    );
  }
}
