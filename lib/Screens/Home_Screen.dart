import 'package:finwise_ai_app/widgets/balance_card.dart';
import 'package:finwise_ai_app/widgets/recent_transactions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final name = "User";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    // Example data
    final transactions = [
      {"title": "Supermarket", "amount": -50.0, "date": "Oct 24"},
      {"title": "Freelance Work", "amount": 200.0, "date": "Oct 23"},
      {"title": "Restaurant", "amount": -75.0, "date": "Oct 22"},
      {"title": "Utilities", "amount": -40.0, "date": "Sept 25"},
      {"title": "Gas", "amount": -90.0, "date": "Sept 28"},
      {"title": "Freelance Work", "amount": 300.0, "date": "Sept 23"},
      {"title": "Freelance Work", "amount": 100.0, "date": "Aug 23"},
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        elevation: 8,
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics_outlined),
            label: 'Analytics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_add_outlined),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chat',
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 50,
            titleSpacing: 0,
            backgroundColor: Colors.white,
            // expandedHeight: 100,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(left: 16, bottom: 16),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hi, ${widget.name}',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/ProfileScreen');
                    },
                    child: CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage(
                        'resources/profile_image_test.png',
                      ),
                      backgroundColor: Colors.grey[200],
                      child: Text(
                        widget.name[0].toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(child: BalanceCard(income: 2500, expenses: 1250)),
          SliverToBoxAdapter(
            child: RecentTransactions(transactions: transactions),
          ),
        ],
      ),
    );
  }
}
