// ignore_for_file: import_of_legacy_library_into_null_safe, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, non_constant_identifier_names, prefer_typing_uninitialized_variables, dead_code

//import 'package:crmproject/Customs/Contants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:onclickonedollar/afa/screens/AutoVerbal/Add.dart';
import 'package:onclickonedollar/afa/screens/AutoVerbal/List.dart';
import 'package:onclickonedollar/contants.dart';
import 'package:onclickonedollar/screen/Account/account.dart';

import 'package:onclickonedollar/screen/Customs/responsive.dart';

import 'package:onclickonedollar/screen/Home/Customs/New_season.dart/page_add.dart';
import 'package:onclickonedollar/screen/Home/Customs/Model-responsive.dart';
import 'package:onclickonedollar/screen/Profile/components/Image.dart';
import 'package:onclickonedollar/screen/Profile/profile.dart';
import 'package:onclickonedollar/screen/propertype/Ppopertys/Home_Screen_property.dart';

import 'MenuCard_dektop.dart';

class Menu extends StatefulWidget {
  final String user;
  final String first_name;
  final String last_name;
  final String email;
  final String gender;
  final String from;
  final String tel;
  final id;
  const Menu(
      {Key? key,
      required this.user,
      required this.first_name,
      required this.last_name,
      required this.email,
      required this.gender,
      required this.from,
      required this.tel,
      required this.id})
      : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Responsive(
        mobile: Mcard(
          username: widget.user,
          email: widget.email,
          first_name: widget.first_name,
          last_name: widget.last_name,
          gender: widget.gender,
          from: widget.from,
          tel: widget.tel,
          id: widget.id,
        ),
        tablet: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 715,
              child: card_Tab(
                username: widget.user,
                email: widget.email,
                first_name: widget.first_name,
                last_name: widget.last_name,
                gender: widget.gender,
                from: widget.from,
                tel: widget.tel,
                id: widget.id,
              ),
            ),
          ],
        ),
        phone: SizedBox(
          //color: Colors.red,
          width: 300,
          child: Scard(
            username: widget.user,
            email: widget.email,
            first_name: widget.first_name,
            last_name: widget.last_name,
            gender: widget.gender,
            from: widget.from,
            tel: widget.tel,
            id: widget.id,
          ),
        ),
        desktop: Mcard(
          username: widget.user,
          email: widget.email,
          first_name: widget.first_name,
          last_name: widget.last_name,
          gender: widget.gender,
          from: widget.from,
          tel: widget.tel,
          id: widget.id,
        ),
      ),
    );
  }
}

class Mcard extends StatefulWidget {
  final String username;
  final String first_name;
  final String last_name;
  final String email;
  final String gender;
  final String from;
  final String tel;
  final String id;
  const Mcard({
    Key? key,
    required this.username,
    required this.first_name,
    required this.last_name,
    required this.email,
    required this.gender,
    required this.from,
    required this.tel,
    required this.id,
  }) : super(key: key);

  @override
  State<Mcard> createState() => _McardState();
}

class _McardState extends State<Mcard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Wrap(
        spacing: 10.0,
        runSpacing: 10.0,
        children: <Widget>[
          Card(
            svgPic: 'assets/icons/profile2.svg',
            title: 'Profile',
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Account(
                  username: widget.username,
                  email: widget.email,
                  first_name: widget.first_name,
                  last_name: widget.last_name,
                  gender: widget.gender,
                  from: widget.from,
                  tel: widget.tel,
                  id: widget.id,
                );
              }));
            },
          ),
          Card(
            svgPic: 'assets/icons/addverbal.svg',
            title: 'one click 1\$',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Menu_Add_verbal(
                      id: widget.id,
                    );
                  },
                ),
              );
            },
          ),
          Card(
            svgPic: 'assets/icons/verballist.svg',
            title: 'Verbal List',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Menu_of_Autoverval(id: widget.id);
                  },
                ),
              );
            },
          ),
          Card(
            svgPic: 'assets/icons/property.svg',
            title: 'Property',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Home_Screen_property();
                  },
                ),
              );
            },
          ),
          Card(
            svgPic: 'assets/icons/list-property.svg',
            title: 'Property List',
            press: () {},
          ),
          Card(
            svgPic: 'assets/icons/wallet.svg',
            title: 'Wallet',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  final String svgPic;
  final String title;
  final press;
  const Card({
    Key? key,
    required this.svgPic,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 105,
          width: 105,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [kDefaultShadow],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: press,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        svgPic,
                        color: kImageColor,
                      ),
                    ),
                  ),
                  Text(
                    title,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
