import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:getwidget/getwidget.dart';
import 'package:onclickonedollar/afa/components/contants.dart';
import 'package:onclickonedollar/screen/payment/by_QR/Wing_QR.dart';

class TopUp extends StatefulWidget {
  const TopUp({super.key, required this.set_email});
  final String set_email;
  @override
  State<TopUp> createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kwhite_new,
        title: const Text(
          "V-Point",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            size: 35,
            color: Colors.white,
          ),
        ),
        elevation: 0.0,
        actions: [
          GFIconButton(
            padding: const EdgeInsets.all(1),
            onPressed: () {},
            icon: const Icon(
              Icons.question_mark,
              color: Colors.white,
              size: 20,
            ),
            color: Colors.white,
            type: GFButtonType.outline2x,
            size: 10,
            iconSize: 30.0,
            disabledColor: Colors.white,
            shape: GFIconButtonShape.circle,
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.178,
              decoration: const BoxDecoration(
                  // color: kwhite_new,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    tileMode: TileMode.mirror,
                    colors: [kwhite_new, kwhite_new, Colors.blue],
                    // stops: [0.1, 0.5, 2],
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 15),
                          height: 30,
                          width: 30,
                          child: Image.asset("assets/images/v.png"),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "0.00",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.amber[800],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            const Icon(
                              Icons.account_circle_outlined,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              widget.set_email,
                              style: const TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: GFButton(
                            onPressed: () {},
                            text: "Transaction history",
                            textColor: Colors.white,
                            textStyle: const TextStyle(
                                fontSize: 10, color: Colors.white),
                            type: GFButtonType.outline,
                            shape: GFButtonShape.pills,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: BoxDecoration(
                      color: kImageColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Tariff Plans for ",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              Text(
                                "ONE DAY",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                    fontSize: 17,
                                    decorationStyle: TextDecorationStyle.dashed,
                                    decoration: TextDecoration.underline),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  BottomSheet(context, '1');
                                },
                                child: Container(
                                  margin: const EdgeInsets.all(6),
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  width:
                                      MediaQuery.of(context).size.height * 0.1,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(80),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 7,
                                          offset: Offset(1.0, 7.0))
                                    ],
                                    border: Border.all(
                                        width: 1,
                                        color: const Color.fromRGBO(
                                            255, 111, 0, 1)),
                                  ),
                                  alignment: Alignment.topCenter,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                              width: 15,
                                              height: 15,
                                              child: Image.asset(
                                                  "assets/images/v.png")),
                                          Text(
                                            "1.00",
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.amber[800],
                                            ),
                                          )
                                        ],
                                      ),
                                      const Text(
                                        "\$1.0",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Color.fromARGB(
                                                255, 242, 11, 134),
                                            decorationStyle:
                                                TextDecorationStyle.solid,
                                            decoration:
                                                TextDecoration.underline),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  BottomSheet(context, '2.5');
                                },
                                child: Container(
                                  margin: const EdgeInsets.all(6),
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  width:
                                      MediaQuery.of(context).size.height * 0.1,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(80),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 7,
                                          offset: Offset(1.0, 7.0))
                                    ],
                                    border: Border.all(
                                        width: 1,
                                        color: const Color.fromRGBO(
                                            255, 111, 0, 1)),
                                  ),
                                  alignment: Alignment.topCenter,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                              width: 15,
                                              height: 15,
                                              child: Image.asset(
                                                  "assets/images/v.png")),
                                          Text(
                                            "3.00",
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.amber[800],
                                            ),
                                          )
                                        ],
                                      ),
                                      const Text(
                                        "\$2.5",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Color.fromARGB(
                                                255, 242, 11, 134),
                                            decorationStyle:
                                                TextDecorationStyle.solid,
                                            decoration:
                                                TextDecoration.underline),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  BottomSheet(context, '3');
                                },
                                child: Container(
                                  margin: const EdgeInsets.all(6),
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  width:
                                      MediaQuery.of(context).size.height * 0.1,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(80),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 7,
                                          offset: Offset(1.0, 7.0))
                                    ],
                                    border: Border.all(
                                        width: 1,
                                        color: const Color.fromRGBO(
                                            255, 111, 0, 1)),
                                  ),
                                  alignment: Alignment.topCenter,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                              width: 15,
                                              height: 15,
                                              child: Image.asset(
                                                  "assets/images/v.png")),
                                          Text(
                                            "5.00",
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.amber[800],
                                            ),
                                          )
                                        ],
                                      ),
                                      const Text(
                                        "\$3.0",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Color.fromARGB(
                                                255, 242, 11, 134),
                                            decorationStyle:
                                                TextDecorationStyle.solid,
                                            decoration:
                                                TextDecoration.underline),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  BottomSheet(context, '5');
                                },
                                child: Container(
                                  margin: const EdgeInsets.all(6),
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  width:
                                      MediaQuery.of(context).size.height * 0.1,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(80),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 7,
                                          offset: Offset(1.0, 7.0))
                                    ],
                                    border: Border.all(
                                        width: 1,
                                        color: const Color.fromRGBO(
                                            255, 111, 0, 1)),
                                  ),
                                  alignment: Alignment.topCenter,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                              width: 15,
                                              height: 15,
                                              child: Image.asset(
                                                  "assets/images/v.png")),
                                          Text(
                                            "6.00",
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.amber[800],
                                            ),
                                          )
                                        ],
                                      ),
                                      const Text(
                                        "\$5.0",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Color.fromARGB(
                                                255, 242, 11, 134),
                                            decorationStyle:
                                                TextDecorationStyle.solid,
                                            decoration:
                                                TextDecoration.underline),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  BottomSheet(context, '6.5');
                                },
                                child: Container(
                                  margin: const EdgeInsets.all(6),
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  width:
                                      MediaQuery.of(context).size.height * 0.1,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(80),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 7,
                                          offset: Offset(1.0, 7.0))
                                    ],
                                    border: Border.all(
                                        width: 1,
                                        color: const Color.fromRGBO(
                                            255, 111, 0, 1)),
                                  ),
                                  alignment: Alignment.topCenter,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                              width: 15,
                                              height: 15,
                                              child: Image.asset(
                                                  "assets/images/v.png")),
                                          Text(
                                            "8.00",
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.amber[800],
                                            ),
                                          )
                                        ],
                                      ),
                                      const Text(
                                        "\$6.5",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Color.fromARGB(
                                                255, 242, 11, 134),
                                            decorationStyle:
                                                TextDecorationStyle.solid,
                                            decoration:
                                                TextDecoration.underline),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  BottomSheet(context, '8');
                                },
                                child: Container(
                                  margin: const EdgeInsets.all(6),
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  width:
                                      MediaQuery.of(context).size.height * 0.1,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(80),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 7,
                                          offset: Offset(1.0, 7.0))
                                    ],
                                    border: Border.all(
                                        width: 1,
                                        color: const Color.fromRGBO(
                                            255, 111, 0, 1)),
                                  ),
                                  alignment: Alignment.topCenter,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                              width: 15,
                                              height: 15,
                                              child: Image.asset(
                                                  "assets/images/v.png")),
                                          Text(
                                            "10.00",
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.amber[800],
                                            ),
                                          )
                                        ],
                                      ),
                                      const Text(
                                        "\$8.0",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Color.fromARGB(
                                                255, 242, 11, 134),
                                            decorationStyle:
                                                TextDecorationStyle.solid,
                                            decoration:
                                                TextDecoration.underline),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      right: 15,
                      bottom: -1,
                      child: Image.asset(
                        "assets/images/pay.png",
                        width: 125,
                      ))
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: BoxDecoration(
                      color: kImageColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const SizedBox(width: 10),
                              const Text(
                                "Tariff Plans for",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              SizedBox(
                                height: 25,
                                width: 90,
                                child: DefaultTextStyle(
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                      fontSize: 17,
                                      decorationStyle:
                                          TextDecorationStyle.dashed,
                                      decoration: TextDecoration.underline),
                                  child: AnimatedTextKit(
                                    animatedTexts: [
                                      RotateAnimatedText('WEEK '),
                                      RotateAnimatedText('MOUNT'),
                                    ],
                                    pause: const Duration(milliseconds: 500),
                                    repeatForever: true,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              BottomSheet(context, '10');
                            },
                            child: Card(
                              color: Colors.white,
                              elevation: 5,
                              child: ListTile(
                                minVerticalPadding: 5,
                                title: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Use ",
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.black),
                                    ),
                                    Text(
                                      "5 VERBAL CKECK",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue,
                                          fontSize: 13,
                                          decorationStyle:
                                              TextDecorationStyle.dotted,
                                          decoration: TextDecoration.underline),
                                    ),
                                    Text(
                                      " for ",
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.black),
                                    ),
                                    Text(
                                      "1 week",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red,
                                          fontSize: 13,
                                          decorationStyle:
                                              TextDecorationStyle.dashed,
                                          decoration: TextDecoration.underline),
                                    ),
                                  ],
                                ),
                                subtitle: const Text("10 \$"),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              BottomSheet(context, '30');
                            },
                            child: Card(
                              color: Colors.white,
                              elevation: 5,
                              child: ListTile(
                                minVerticalPadding: 5,
                                title: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Use ",
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.black),
                                    ),
                                    Text(
                                      "40 VERBAL CKECK",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue,
                                          fontSize: 13,
                                          decorationStyle:
                                              TextDecorationStyle.dotted,
                                          decoration: TextDecoration.underline),
                                    ),
                                    Text(
                                      " for ",
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.black),
                                    ),
                                    Text(
                                      "1 month",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red,
                                          fontSize: 13,
                                          decorationStyle:
                                              TextDecorationStyle.dashed,
                                          decoration: TextDecoration.underline),
                                    ),
                                  ],
                                ),
                                subtitle: const Text("30 \$"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      right: 15,
                      child: Image.asset(
                        "assets/images/pay.png",
                        width: 125,
                      ))
                ],
              ),
            ),
            Image.asset("assets/images/mobile_payment.png")
          ],
        ),
      ),
    );
  }

  Future BottomSheet(BuildContext context, String Price) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: const Color.fromARGB(0, 33, 149, 243),
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.6,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: kwhite_new,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('By Bank',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize:
                              MediaQuery.of(context).textScaleFactor * 13)),
                  Container(
                    height: 20,
                    width: 0.5,
                    color: Colors.white,
                  ),
                  Text('By QR',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize:
                              MediaQuery.of(context).textScaleFactor * 13)),
                ],
              ),
              const Divider(
                height: 5,
                color: Colors.white,
              ),
              Container(
                height: 180,
                width: double.infinity,
                padding: const EdgeInsets.only(
                    left: 40, right: 40, top: 20, bottom: 20),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/ticket.png'),
                        fit: BoxFit.contain)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: SizedBox(
                        height: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 60,
                                color: Colors.black12,
                                child: Image.asset(
                                  'assets/images/Upay_bank.png',
                                  fit: BoxFit.fill,
                                )),
                            const Text(
                              'U-Pay Digital Plc.',
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  backgroundColor:
                                      Color.fromARGB(119, 255, 255, 255)),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: SizedBox(
                        height: 50,
                        child: Image.asset('assets/images/KFA.png',
                            fit: BoxFit.fill),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                padding: const EdgeInsets.only(
                    left: 40, right: 40, top: 20, bottom: 20),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/ticket.png'),
                        fit: BoxFit.contain)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: SizedBox(
                        height: 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 60,
                                color: Colors.black12,
                                child: Image.asset(
                                  'assets/images/wing.png',
                                  fit: BoxFit.fill,
                                )),
                            const Text(
                              'U-Pay Digital Plc.',
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  backgroundColor:
                                      Color.fromARGB(119, 255, 255, 255)),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Wing_QR_code(price: Price)));
                      },
                      child: SizedBox(
                        height: 55,
                        child: Image.asset('assets/images/KFA.png',
                            fit: BoxFit.fill),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
