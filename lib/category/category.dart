import 'package:flutter/material.dart';
import 'package:slicing_ui/category/search.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}
class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'All Category',
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Color(0xFFF5F9FF),
      ),
      backgroundColor: Color(0xFFF5F9FF),
      body: Container(
        color: Color(0xFFF5F9FF),
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _SearchOnly(
              hintText: "Search For...",
              onChanged: (String value) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Search()),
                  );
              },
            ),
            SizedBox(height: 5),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // 2 columns
                children: List.generate(8, (index) {
                  return Container(
                    padding: EdgeInsets.all(0),
                    child: Image.asset(
                      'images/category$index.png',
                      width: 50,
                      height: 50,
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SearchOnly extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;

  const _SearchOnly({Key? key, required this.hintText, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white10, width: 0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          prefixIcon: Icon(Icons.search, color: Colors.white),
          suffixIcon: GestureDetector(
            onTap: () {},
            child: Container(
              width: 30,
              height: 30,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.blueAccent),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
