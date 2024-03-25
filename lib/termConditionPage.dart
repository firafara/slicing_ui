import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TermConditionPage extends StatefulWidget {
  @override
  _TermConditionPageState createState() => _TermConditionPageState();
}

class _TermConditionPageState extends State<TermConditionPage> {
  String _termsAndConditionsText =
      "At enim hic etiam dolore. Dulce amarum, leve asperum, prope longe, stare movere, quadratum rotundum. At certe gravius. Nullus est igitur cuiusquam dies natalis. Paulum, cum regem Persem captum adduceret, eodem flumine invectio?";

  String _termsAndUseText =
      "Ut proverbia non nulla veriora sint quam vestra dogmata. Tamen aberramus a proposito, et, ne longius, prorsus, inquam, Piso, si ista mala sunt, placet. Omnes enim iucundum motum, quo sensus hilaretur. Cum id fugiunt, re eadem defendunt, quae Peripatetici, verba. Quibusnam praeteritis? Portenta haec esse dicit, quidem hactenus; Si id dicis, vicimus. Qui ita affectus, beatum esse numquam probabis; Igitur neque stultorum quisquam beatus neque sapientium non beatus. Dicam, inquam, et quidem discendi causa magis, quam quo te aut Epicurum reprehensum velim. Dolor ergo, id est summum malum, metuetur semper, etiamsi non ader.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms & Conditions'),
      ),
      body: Column(
        children: [
          Container(
            height: 30,
            child: Text(
              'Terms & Conditions',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            height: 204,
            width: double.infinity,
            padding: EdgeInsets.all(8.0),
            child: Text(
              _termsAndConditionsText,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          Container(
            height: 29,
            child: Text(
              'Condition & Attending',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            height: 204,
            padding: EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Text(
                _termsAndUseText,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
