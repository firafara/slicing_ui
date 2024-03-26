import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  final String text;
  final bool initialValue;
  final Function(bool) onChanged;

  const SwitchButton({
    required this.text,
    required this.initialValue,
    required this.onChanged,
  });

  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  late bool _value;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.text,
          style: TextStyle(
              fontSize: 14.0,
              fontFamily: 'Jost',
              color: Colors.grey[700],
              fontWeight: FontWeight.bold
          ),
        ),
        Switch(
          value: _value,
          onChanged: (value) {
            setState(() {
              _value = value;
            });
            widget.onChanged(value);
          },
          inactiveTrackColor: Colors.grey[200],
          activeTrackColor: Colors.blue,
          activeColor: Colors.white,
        ),
      ],
    );
  }
}

class NotificationProfile extends StatefulWidget {
  const NotificationProfile({super.key});

  @override
  State<NotificationProfile> createState() => _NotificationProfileState();
}

class _NotificationProfileState extends State<NotificationProfile> {
  bool _specialOffer = false;
  bool _sound = false;
  bool _vibrate = false;
  bool _generalNotification = false;
  bool _promoDiscount = false;
  bool _paymentOption = false;
  bool _newServiceAvailable = false;
  bool _newTipsAvailable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notification',
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            children: [
              SwitchButton(
                text: "Special Offer",
                initialValue: _specialOffer,
                onChanged: (value) {
                  setState(() {
                    _specialOffer = value;
                  });
                },
              ),
              SizedBox(height: 10,),
              SwitchButton(
                text: "Sound",
                initialValue: _sound,
                onChanged: (value) {
                  setState(() {
                    _sound = value;
                  });
                },
              ),
              SizedBox(height: 10,),
              SwitchButton(
                text: "Vibrate",
                initialValue: _vibrate,
                onChanged: (value) {
                  setState(() {
                    _vibrate = value;
                  });
                },
              ),
              SizedBox(height: 10,),
              SwitchButton(
                text: "General Notification",
                initialValue: _generalNotification,
                onChanged: (value) {
                  setState(() {
                    _generalNotification = value;
                  });
                },
              ),
              SizedBox(height: 10,),
              SwitchButton(
                text: "Promo & Discount",
                initialValue: _promoDiscount,
                onChanged: (value) {
                  setState(() {
                    _promoDiscount = value;
                  });
                },
              ),
              SizedBox(height: 10,),
              SwitchButton(
                text: "Payment Option",
                initialValue: _paymentOption,
                onChanged: (value) {
                  setState(() {
                    _paymentOption = value;
                  });
                },
              ),
              SizedBox(height: 10,),
              SwitchButton(
                text: "New Service Available",
                initialValue: _newServiceAvailable,
                onChanged: (value) {
                  setState(() {
                    _newServiceAvailable = value;
                  });
                },
              ),
              SizedBox(height: 10,),
              SwitchButton(
                text: "New Tips Available",
                initialValue: _newTipsAvailable,
                onChanged: (value) {
                  setState(() {
                    _newTipsAvailable = value;
                  });
                },
              ),
              SizedBox(height: 10,),
            ],
          )
      ),
    );
  }
}
