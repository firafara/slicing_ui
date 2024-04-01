import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_ui/model/model_transaction.dart';
import 'package:slicing_ui/profile/profile.dart';
import 'package:slicing_ui/widget/widget_transaction.dart';

import 'inbox/inboxPage.dart';
import 'myCourse/myCoursePage.dart';



class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});
  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  int _selectedIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
        // Tidak ada navigasi yang diperlukan karena kita sudah berada di halaman Home
          break;
        case 1:
        // Navigasi ke halaman My Course
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyCoursePage()), // Ganti dengan halaman My Course yang sesuai
          );
          break;
        case 2:
        // Navigasi ke halaman Inbox
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => InboxPage()), // Ganti dengan halaman Inbox yang sesuai
          );
          break;
        case 3:
        // Navigasi ke halaman Transaction
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TransactionPage()), // Ganti dengan halaman Transaction yang sesuai
          );
          break;
        case 4:
        // Navigasi ke halaman Profile
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Profile()), // Ganti dengan halaman Profile yang sesuai
          );
          break;
        default:
        // Do nothing
          break;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Transaction',
            style: TextStyle(
              fontFamily: 'Jost',
              fontSize: 21,
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Tambahkan kode fungsi pencarian di sini
                // Misalnya: Navigator.push untuk menuju layar pencarian
              },
            ),
          ],
        ),
        body: Center(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: transactions.length,
            itemBuilder: (BuildContext context, int index) {
              Transaction transaction = transactions[index];
              return WidgetTransaction(
                  urlImage: transaction.urlImage,
                  txtCategori: transaction.txtCategori,
                  txtTitle: transaction.txtTitle,
                  txtStatus: transaction.txtStatus
              );
            },
          ),
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_copy_sharp),
            label: 'My Course',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_card),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue, // Selected item color
        unselectedItemColor: Colors.black, // Unselected item color
        showSelectedLabels: true, // Show labels for selected items
        showUnselectedLabels: true, // Show labels for unselected items
        onTap: _onItemTapped,
      ),
    );
  }
}
