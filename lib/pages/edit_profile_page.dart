import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Edit Profile",
          style: primaryTextStyle.copyWith(),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.check,
              color: primaryColor,
            ),
            onPressed: () {},
          ),
        ],
      );
    }

    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name",
              style: secondaryTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: "Alex keinnzal",
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: subtitleColor,),
                )
              ),
            )
          ],
        ),
      );
    }
    
    Widget usernameInput() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Username",
              style: secondaryTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: "@alexkeinn",
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: subtitleColor,),
                )
              ),
            )
          ],
        ),
      );
    }
    
    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Email Address",
              style: secondaryTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: "alex.kein@gmail.com",
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: subtitleColor,),
                )
              ),
            )
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(
                top: defaultMargin,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/image_profile.png'),
                ),
              ),
            ),
            nameInput(),
            usernameInput(),
            emailInput(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
      resizeToAvoidBottomInset: false,
    );
  }
}
