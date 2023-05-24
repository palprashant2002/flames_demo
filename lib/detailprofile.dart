import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DetailProfile extends StatefulWidget {
  const DetailProfile({super.key});

  @override
  State<DetailProfile> createState() => _DetailProfileState();
}

class _DetailProfileState extends State<DetailProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.pink.withOpacity(0.05),
                ),
                child: Column(
                  children: [
                    Spacer(),
                    Container(
                      margin: EdgeInsets.all(8),
                      height: MediaQuery.of(context).size.width / 1.7,
                      width: MediaQuery.of(context).size.width / 1.7,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/user1.jpg"),
                              fit: BoxFit.cover),
                          color: Colors.white,
                          shape: BoxShape.circle),
                    ),
                    Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Spacer(),
                        Text(
                          "VISHU, 21",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink[400]),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.verified,
                          size: 30,
                          color: Colors.grey[400],
                        ),
                        Spacer()
                      ],
                    ),
                    Spacer(),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'edit');
                    },
                    child: Card(
                      elevation: 20,
                      shadowColor: Colors.grey,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.edit_square,
                              size: 40,
                            ),
                            Text(
                              "Edit",
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Card(
                      elevation: 20,
                      shadowColor: Colors.grey,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.settings,
                              size: 40,
                            ),
                            Text(
                              "Settings",
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Card(
                      elevation: 20,
                      shadowColor: Colors.grey,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.qr_code,
                              size: 40,
                            ),
                            Text(
                              "QR Code",
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              )
            ]),
      ),
    );
  }
}
