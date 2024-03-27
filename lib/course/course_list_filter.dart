import 'package:flutter/material.dart';
import 'package:slicing_ui/category/category.dart';

class CourseListFilter extends StatefulWidget {
  const CourseListFilter({Key? key});

  @override
  State<CourseListFilter> createState() => _CourseListFilterState();
}

class _CourseListFilterState extends State<CourseListFilter> {
  bool valuePrice = false;
  bool valueSubCategories = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Filter',
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              // Clear action
            },
            child: Container(
              padding: EdgeInsets.only(right: 16),
              child: Text(
                "Clear",
                style: TextStyle(fontFamily: 'Jost'),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SubCategories',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              ),
              Container(
                margin: EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: '3D Design',
                    ),
                    SizedBox(height: 10),
                    CustomCheckbox(
                      value: !valueSubCategories,
                      onChanged: (newValue) {
                        setState(() {
                          valueSubCategories = !newValue;
                        });
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'Web Development',
                    ),
                    SizedBox(height: 10),
                    CustomCheckbox(
                      value: !valueSubCategories,
                      onChanged: (newValue) {
                        setState(() {
                          valueSubCategories = !newValue;
                        });
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: '3D Animation',
                    ),
                    SizedBox(height: 10),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'Graphic Design',
                    ),
                    SizedBox(height: 10),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'SEO & Marketing',
                    ),
                    SizedBox(height: 10),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'Arts & Humanities',
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              Text(
                'Levels',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              ),
              Container(
                margin: EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'All Levels',
                    ),
                    SizedBox(height: 10),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'Beginners',
                    ),
                    SizedBox(height: 10),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'Intermediate',
                    ),
                    SizedBox(height: 10),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'Expert',
                    ),
                  ],
                ),
              ),
              // Add more filter sections as needed
              Text(
                'Price',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              ),
              Container(
                margin: EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    CustomCheckbox(
                      value: valuePrice,
                      onChanged: (newValue) {
                        setState(() {
                          valuePrice = newValue;
                        });
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'Paid',
                    ),
                    SizedBox(height: 10),
                    CustomCheckbox(
                      value: !valuePrice,
                      onChanged: (newValue) {
                        setState(() {
                          valuePrice = !newValue;
                        });
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'Free',
                    ),
                  ],
                ),
              ),
              Text(
                'Features',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              ),
              Container(
                margin: EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    CustomCheckbox(
                      value: valuePrice,
                      onChanged: (newValue) {
                        setState(() {
                          valuePrice = newValue;
                        });
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'All Captian',
                    ),
                    SizedBox(height: 10),
                    CustomCheckbox(
                      value: !valuePrice,
                      onChanged: (newValue) {
                        setState(() {
                          valuePrice = !newValue;
                        });
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'Quizzes',
                    ),
                    SizedBox(height: 10),
                    CustomCheckbox(
                      value: !valuePrice,
                      onChanged: (newValue) {
                        setState(() {
                          valuePrice = !newValue;
                        });
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'Coding Exercise',
                    ),
                    SizedBox(height: 10),
                    CustomCheckbox(
                      value: !valuePrice,
                      onChanged: (newValue) {
                        setState(() {
                          valuePrice = !newValue;
                        });
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'Practice Tests',
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),

              Text(
                'Rating',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              ),
              Container(
                margin: EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    CustomCheckbox(
                      value: valuePrice,
                      onChanged: (newValue) {
                        setState(() {
                          valuePrice = newValue;
                        });
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: '4.5 & Up Above',
                    ),
                    SizedBox(height: 10),
                    CustomCheckbox(
                      value: !valuePrice,
                      onChanged: (newValue) {
                        setState(() {
                          valuePrice = !newValue;
                        });
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: '4.0 & Up Above',
                    ),
                    SizedBox(height: 10),
                    CustomCheckbox(
                      value: !valuePrice,
                      onChanged: (newValue) {
                        setState(() {
                          valuePrice = !newValue;
                        });
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: '3.5 & Up Above',
                    ),
                    SizedBox(height: 10),
                    CustomCheckbox(
                      value: !valuePrice,
                      onChanged: (newValue) {
                        setState(() {
                          valuePrice = !newValue;
                        });
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: '3.0 & Up Above',
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              Text(
                'Video Duration',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              ),
              Container(
                margin: EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    CustomCheckbox(
                      value: valuePrice,
                      onChanged: (newValue) {
                        setState(() {
                          valuePrice = newValue;
                        });
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: '0-2 Hours',
                    ),
                    SizedBox(height: 10),
                    CustomCheckbox(
                      value: !valuePrice,
                      onChanged: (newValue) {
                        setState(() {
                          valuePrice = !newValue;
                        });
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: '3-6 Hours',
                    ),
                    SizedBox(height: 10),
                    CustomCheckbox(
                      value: !valuePrice,
                      onChanged: (newValue) {
                        setState(() {
                          valuePrice = !newValue;
                        });
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: '7-16 Hours',
                    ),
                    SizedBox(height: 10),
                    CustomCheckbox(
                      value: !valuePrice,
                      onChanged: (newValue) {
                        setState(() {
                          valuePrice = !newValue;
                        });
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: '17+ Hours',
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              // Add more filter sections as needed
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Category()),
                    );

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
                          'Apply',
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
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final String text;

  const CustomCheckbox({
    required this.value,
    required this.text,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onChanged != null) {
          onChanged!(value);
        }
      },
      child: Row(
        children: <Widget>[
          Container(
            width: 20.0,
            height: 20.0,
            decoration: BoxDecoration(
              color: value ? Colors.green : Colors.transparent,
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(
                color: value ? Colors.green : Colors.grey,
                width: 2.0,
              ),
            ),
            child: value
                ? Icon(
              Icons.check,
              size: 12.0,
              color: Colors.white,
            )
                : null,
          ),
          SizedBox(width: 8.0),
          Text(
            text,
            style: TextStyle(
              fontSize: 14.0,
              fontFamily: 'Jost',
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const CustomButton({
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
