import 'package:flutter/material.dart';

class DetailProfile extends StatefulWidget {
  const DetailProfile({super.key});

  @override
  State<DetailProfile> createState() => _DetailProfileState();
}

class _DetailProfileState extends State<DetailProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics:const BouncingScrollPhysics(),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 40,
              ),
              IconButton(
                icon:const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Container(
                margin:const EdgeInsets.all(10),
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.pink.withOpacity(0.05),
                ),
                child: Column(
                  children: [
                    const Spacer(),
                    Container(
                      margin:const EdgeInsets.all(8),
                      height: MediaQuery.of(context).size.width / 1.7,
                      width: MediaQuery.of(context).size.width / 1.7,
                      decoration:const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/user1.jpg"),
                              fit: BoxFit.cover),
                          color: Colors.white,
                          shape: BoxShape.circle),
                    ),
                    const Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Spacer(),
                        Text(
                          "VISHU, 21",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink[400]),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.verified,
                          size: 30,
                          color: Colors.grey[400],
                        ),
                        const Spacer()
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'edit');
                    },
                    child: Card(
                      elevation: 20,
                      shadowColor: Colors.grey,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.width/4,
                        width: MediaQuery.of(context).size.width/4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
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
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Card(
                      elevation: 20,
                      shadowColor: Colors.grey,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.width/4,
                        width: MediaQuery.of(context).size.width/4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
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
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Card(
                      elevation: 20,
                      shadowColor: Colors.grey,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.width/4,
                        width: MediaQuery.of(context).size.width/4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
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
                  const Spacer(),
                ],
              )
            ]),
      ),
    );
  }
}
