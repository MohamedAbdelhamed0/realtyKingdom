import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realtykingdom/extantsions.dart';
import 'package:realtykingdom/wep_module/presentation/manager/responisive_buttons/FancyAnimatedButton.dart';
import 'package:realtykingdom/wep_module/presentation/manager/text_style.dart';
import 'package:url_launcher/url_launcher.dart';

import '../manager/responisive_buttons/animated_Border_FormField.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  late AnimationController _animationController;
  late Animation<double> _animation;
  String name = '';
  String email = '';
  String phoneNumber = '';
  String message = '';

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation =
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn);

    // Start the animation
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Processing Data')));
    }
  }

  void _openWhatsApp() async {
    var whatsappUrl = "https://wa.me/+1234567890?text=Hello";
    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
    } else {
      throw 'Could not launch $whatsappUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AnimatedBorderFormField(
              labelText: 'Name',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
              onSaved: (value) => name = value!,
            ),
            4.sbh,
            AnimatedBorderFormField(
              labelText: 'Phone number',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your phone number';
                }
                return null;
              },
              onSaved: (value) => name = value!,
            ),
            4.sbh,
            AnimatedBorderFormField(
              maxLines: 5,
              labelText: 'Message',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your message';
                }
                return null;
              },
              onSaved: (value) => name = value!,
            ),
            4.sbh,
            FancyAnimatedButton(
                text: 'Submit',
                onPressed: _submitForm,
                textStyle: customTextStyle()),
            4.sbh,
            FancyAnimatedButton(
                text: 'open WhatsApp',
                onPressed: _openWhatsApp,
                textStyle: customTextStyle()),
          ],
        ),
      ),
    );
  }
}
