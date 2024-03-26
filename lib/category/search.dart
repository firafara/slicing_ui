
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F9FF),
        title: Text(
          'Search',
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: Color(0xFFF5F9FF),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white10, width: 0),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                // hintText: widget.hintText,
                prefixIcon: Icon(Icons.search,color: Colors.white,),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {

                    });
                  },
                  child: Container(
                    width: 30,
                    height: 30,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.blue
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Searches',
                    style: TextStyle(
                      fontFamily: 'Jost',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'SEE ALL >',
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF0961F5),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 5),
                children: [
                  Words(word: '3D Design'),
                  Words(word: 'Graphic Design'),
                  Words(word: 'Programming'),
                  Words(word: 'SEO & Marketing'),
                  Words(word: 'Web Development'),
                  Words(word: 'Office Productivity'),
                  Words(word: 'Personal Development'),
                  Words(word: 'Finance & Accounting'),
                  Words(word: 'HR Management'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Words extends StatelessWidget {
  final String word;

  const Words({required this.word});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              word,
              style: TextStyle(
                fontFamily: 'Mulish',
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Color(0xFFA0A4AB),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          IconButton(
            onPressed: () {
            },
            icon: Icon(
              Icons.close,
              color: Color(0xFF472D2D),
              size: 11,
            ),
          ),
        ],
      ),
    );
  }
}

