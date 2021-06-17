import 'dart:ui';

import 'package:expense_tracking_practice_app/cards.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController = TabController(length: 4, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 30),
                _header(),
                const SizedBox(height: 20),
                _searchBar(),
                const SizedBox(height: 20),
                _yourBalanceContainer(),
                const SizedBox(height: 10),
                _favoritesText(),
                const SizedBox(height: 10),
                _favoritesList(),
                const SizedBox(height: 10),
              ],
            ),
          ),
          _showBottomSheetButton(),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 6),
        margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[800],
        ),
        child: TabBar(
          labelStyle: TextStyle(color: Colors.white30),
          labelColor: Colors.lightGreen,
          unselectedLabelColor: Colors.white,
          tabs: [
            Tab(
              text: "Dashboard",
              icon: Icon(Icons.dashboard),
            ),
            Tab(
              text: "Cards",
              icon: Icon(Icons.card_giftcard),
            ),
            Tab(
              text: "Support",
              icon: Icon(Icons.message),
            ),
            Tab(
              text: "Profile",
              icon: Icon(Icons.people),
            ),
          ],
          controller: _tabController,
        ),
      ),
    );
  }

  Widget _header() {
    return ListTile(
      leading: Icon(
        Icons.people,
        color: Colors.white,
        size: 45,
      ),
      title: Text(
        "Hello Jacob",
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
      subtitle: Text(
        "Welcome back to CashMate",
        style: TextStyle(color: Colors.white54, fontSize: 15),
      ),
      trailing: Icon(
        Icons.alarm,
        color: Colors.white,
        size: 35,
      ),
    );
  }

  Widget _searchBar() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.white54,
          )),
      child: ListTile(
        leading: Icon(Icons.search, color: Colors.white54, size: 35),
        title: Text(
          "Search",
          style: TextStyle(color: Colors.white54, fontSize: 20),
        ),
      ),
    );
  }

  Widget _yourBalanceContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[700],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "4,890.00",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(width: 110),
            Icon(
              Icons.more_horiz,
              color: Colors.white54,
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(width: 25),
            Text(
              "Your Balance",
              style: TextStyle(color: Colors.white54, fontSize: 20),
            ),
          ],
        ),
        SizedBox(height: 45),
        Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.lightGreen[300],
            ),
            child: Text(
              "REPLENISH",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ]),
    );
  }

  Widget _favoritesText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Favorites",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _favoritesList() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[700],
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.lightGreen[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.arrow_forward),
              ),
              const SizedBox(height: 3),
              Text(
                "Transfers",
                style: TextStyle(
                  color: Colors.white54,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[700],
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.lightGreen[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.payment),
              ),
              const SizedBox(height: 3),
              Text(
                "Payments",
                style: TextStyle(color: Colors.white54),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[700],
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.lightGreen[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.games),
              ),
              const SizedBox(height: 3),
              Text(
                "Games",
                style: TextStyle(
                  color: Colors.white54,
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[700],
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.lightGreen[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.airplane_ticket),
              ),
              const SizedBox(height: 3),
              Text(
                "Tickets",
                style: TextStyle(
                  color: Colors.white54,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _expenseLog() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[850],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Yesterday",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          ListTile(
            leading: Icon(
              Icons.people,
              color: Colors.white,
            ),
            title: Text(
              "Simon pegg",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            subtitle: Text(
              "3 June,6:22 PM",
              style: TextStyle(
                color: Colors.white54,
              ),
            ),
            trailing: Column(
              children: [
                Text(
                  "+1005.50",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Transfer",
                  style: TextStyle(
                    color: Colors.white54,
                  ),
                )
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.people,
              color: Colors.white,
            ),
            title: Text(
              "Apple Music",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            subtitle: Text(
              "1 June,9:42 PM",
              style: TextStyle(
                color: Colors.white54,
              ),
            ),
            trailing: Column(
              children: [
                Text(
                  "-9.99",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Subscription",
                  style: TextStyle(
                    color: Colors.white54,
                  ),
                )
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.people,
              color: Colors.white,
            ),
            title: Text(
              "Stream",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            subtitle: Text(
              "31 May,6:22 PM",
              style: TextStyle(
                color: Colors.white54,
              ),
            ),
            trailing: Column(
              children: [
                Text(
                  "-30",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Transfer",
                  style: TextStyle(
                    color: Colors.white54,
                  ),
                )
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.people,
              color: Colors.white,
            ),
            title: Text(
              "Simon pegg",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            subtitle: Text(
              "3 June,6:22 PM",
              style: TextStyle(
                color: Colors.white54,
              ),
            ),
            trailing: Column(
              children: [
                Text(
                  "+1005.50",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Transfer",
                  style: TextStyle(
                    color: Colors.white54,
                  ),
                )
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.people,
              color: Colors.white,
            ),
            title: Text(
              "Simon pegg",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            subtitle: Text(
              "3 June,6:22 PM",
              style: TextStyle(
                color: Colors.white54,
              ),
            ),
            trailing: Column(
              children: [
                Text(
                  "+1005.50",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Transfer",
                  style: TextStyle(
                    color: Colors.white54,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _showBottomSheetButton() {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          useRootNavigator: true,
          context: (context),
          builder: (context) => _expenseLog(),
        );
        setState(() {});
      },
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 79),
          color: Colors.blue,
          child: Center(
            child: Text(
              "Open Logs",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          )),
    );
  }
}
