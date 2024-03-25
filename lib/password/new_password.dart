import 'package:flutter/material.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool visible = true;
  TextEditingController txtPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  void _showCongratulationsDialog() {
    showDialog(
      context: context,
      barrierDismissible: true, // Dialog dapat ditutup dengan mengetuk di luar area dialog
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          title: Text(""),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'images/congratulation_password.png', // Ubah path gambar sesuai dengan direktori Anda
                height: 200,
                width: 200,
              ),
              Text("Congratulations",
                style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Jost',fontSize: 24),
              ),
              SizedBox(height: 20),
              Text("Your Account is Ready to Use. You will be \nredirected to the Home Page in a Few \nSeconds.",
                style: TextStyle(fontFamily: 'Mulish'),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Image.asset(
                'images/loading.png', // Ubah path gambar sesuai dengan direktori Anda
                height: 30,
                width: 30,
              ),
            ],
          ),
          actions: [], // Hapus semua tombol
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Row(
          children: [
            Text(
              'Create New Password',
              style: TextStyle(fontSize: 18.0, fontFamily: 'Jost', fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: GestureDetector( // GestureDetector digunakan untuk menutup dialog saat mengklik area lain
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode()); // Menutup keyboard saat mengklik area lain
          Navigator.of(context).pop(); // Menutup dialog
        },
        child: Container(
          decoration: BoxDecoration(color: Colors.grey[100]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  '',
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
              // Tombol di bagian bawah
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create Your New Password",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Jost'),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(height: 20),
                    TextField(
                      style: TextStyle(
                        fontFamily: 'Mulish',
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Password",
                        prefixIcon: Icon(Icons.lock_outline, color: Color(0xFF545454)), // Changed to prefixIcon and added icon color
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        suffixIcon: Icon(Icons.visibility_off, color: Color(0xFF545454)), // Added icon color
                        contentPadding: EdgeInsets.symmetric(vertical: 0), // Adjust padding as needed
                      ),
                      controller: txtPassword,
                      obscureText: true,
                    ),
                    SizedBox(height: 20),
                    TextField(
                      style: TextStyle(
                        fontFamily: 'Mulish',
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Password",
                        prefixIcon: Icon(Icons.lock_outline, color: Color(0xFF545454)), // Changed to prefixIcon and added icon color
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        suffixIcon: Icon(Icons.visibility_off, color: Color(0xFF545454)), // Added icon color
                        contentPadding: EdgeInsets.symmetric(vertical: 0), // Adjust padding as needed
                      ),
                      controller: confirmPassword,
                      obscureText: true,
                    ),
                    SizedBox(height: 40),
                    InkWell(
                      onTap: () {
                        _showCongratulationsDialog();
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFF0961F5),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Continue',
                                textAlign: TextAlign.center, // Center text
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Jost',
                                ),
                              ),
                            ),
                            Positioned(
                              right: 16,
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Color(0xFF0961F5),
                                    size: 24,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 150),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
