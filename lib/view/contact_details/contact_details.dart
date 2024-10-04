import 'package:flutter/material.dart';
import 'package:flutter_clone_book/main.dart';
import 'package:flutter_clone_book/utils/constants/color_constants.dart';
import 'package:country_icons/country_icons.dart';

class ContactDetails extends StatefulWidget {
  const ContactDetails({super.key});

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  bool isEmailValid = false;
  bool isPhoneValid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left,
            color: Colors.black,
            size: 30,
          ),
        ),
        title: Center(
          child: Text(
            'Contact Details',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(1),
            child: Divider(
              height: 1,
              color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.3),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Email',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              cursorColor: ColorConstants.PRIMARY_COLOR,
              onChanged: (value) {
                final RegExp emailRegex = RegExp(
                  r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                );

                setState(() {
                  email = value;
                  isEmailValid = emailRegex.hasMatch(value);
                });
              },
              controller: _emailController,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              decoration: InputDecoration(
                  hintText: 'eg:abc@gmail.com',
                  hintStyle: TextStyle(
                      color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.3)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: ColorConstants.SEC4_GREY_COLOR, width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          width: 2, color: ColorConstants.GREY_COLOR))),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Seems like you changed the E-mail. This E-mail will only be used for sending ticket(s)',
              style: TextStyle(
                  color: ColorConstants.SEC4_GREY_COLOR, fontSize: 14),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Phone number',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              onChanged: (value) {
                final RegExp phoneRegex = RegExp(r'^\d{10}$');

                setState(() {
                  phno = value;
                  isPhoneValid = phoneRegex.hasMatch(value);
                });
              },
              controller: _phoneController,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              decoration: InputDecoration(
                  hintText: 'eg:91480XXXXX',
                  hintStyle: TextStyle(
                      color: ColorConstants.SEC4_GREY_COLOR.withOpacity(.3)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: ColorConstants.SEC4_GREY_COLOR, width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          width: 2, color: ColorConstants.GREY_COLOR))),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Your Number will only be used for sending tickets(s)',
              style: TextStyle(
                  color: ColorConstants.SEC4_GREY_COLOR, fontSize: 14),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Terms & Conditions',
              style: TextStyle(
                  color: ColorConstants.PRIMARY_COLOR,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline),
            ),
            Spacer(),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: (isEmailValid && isPhoneValid)
                        ? ColorConstants.PRIMARY_COLOR
                        : ColorConstants.SEC4_GREY_COLOR,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    'Update Details',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
