import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/cupertino.dart';

import 'bottomsheet.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile>
    with TickerProviderStateMixin {
  @override
  List<String> _languages = ["English", "Hindi"];
  List<String> myInterest = [
    "Thriller",
    "Sci-Fi",
    "Superhero",
    "Mythology",
    "Fantasy",
    "Action",
    "Mystery"
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () => Navigator.pop(context),
      )),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(children: [
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  height: MediaQuery.of(context).size.width / 1.2,
                  width: MediaQuery.of(context).size.width / 1.8,
                  child: Column(children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.pink.withOpacity(0.05),
                          image: DecorationImage(
                              image: AssetImage("assets/images/user1.jpg"),
                              fit: BoxFit.cover)),
                      height: MediaQuery.of(context).size.width / 1.8,
                      width: MediaQuery.of(context).size.width / 1.8,
                      // child: IconButton(icon: Icon(Icons.add),onPressed: () {},),
                    ),
                    Spacer(),
                    Container(
                      height: MediaQuery.of(context).size.width / 4.0,
                      child: Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.pink.withOpacity(0.05),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/user2.jpg"),
                                      fit: BoxFit.cover)),
                              height: MediaQuery.of(context).size.width / 4.0,
                              width: MediaQuery.of(context).size.width / 4.0,
                              // child: IconButton(
                              //   icon: Icon(
                              //     Icons.add,
                              //     size: 20,
                              //     color: Colors.pink[400],
                              //   ),
                              //   onPressed: () {},
                              // )
                              ),
                          Spacer(),
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.pink.withOpacity(0.05),
                                image: DecorationImage(
                              image: AssetImage("assets/images/user3.jpg"),
                              fit: BoxFit.cover)
                              ),
                              height: MediaQuery.of(context).size.width / 4.0,
                              width: MediaQuery.of(context).size.width / 4.0,
                              // child: IconButton(
                              //   icon: Icon(
                              //     Icons.add,
                              //     size: 20,
                              //     color: Colors.pink[400],
                              //   ),
                              //   onPressed: () {},
                              // )
                              ),
                        ],
                      ),
                    )
                  ]),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(4, 8, 0, 8),
                  height: MediaQuery.of(context).size.width / 1.2,
                  width: MediaQuery.of(context).size.width / 2.85,
                  child: Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.pink.withOpacity(0.05),
                            image: DecorationImage(
                              image: AssetImage("assets/images/user4.jpg"),
                              fit: BoxFit.cover)
                          ),
                          height: MediaQuery.of(context).size.width / 2.3,
                          width: MediaQuery.of(context).size.width / 2.6,
                          // child: IconButton(
                          //   icon: Icon(
                          //     Icons.add,
                          //     size: 20,
                          //     color: Colors.pink[400],
                          //   ),
                          //   onPressed: () {},
                          // )
                          ),
                      Spacer(),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.pink.withOpacity(0.05),
                            
                          ),
                          height: MediaQuery.of(context).size.width / 2.6,
                          width: MediaQuery.of(context).size.width / 2.6,
                          child: IconButton(
                            icon: Icon(
                              Icons.add,
                              size: 20,
                              color: Colors.pink[400],
                            ),
                            onPressed: () {},
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            alignment: Alignment.centerLeft,
            height: 50,
            child: Text(
              "About",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.fromLTRB(8, 8, 8, 1),
            padding: EdgeInsets.all(8),
            height: MediaQuery.of(context).size.width / 2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.pink.withOpacity(0.05),
            ),
            child: Text(
              '"Tell them about you."',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            alignment: Alignment.centerRight,
            child: Text(
              "0/200",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            alignment: Alignment.centerLeft,
            height: 50,
            child: Text(
              "Basics",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading: Icon(Icons.local_post_office_outlined),
            title: Row(
              children: [Text("Education"), Spacer(), Text("Add")],
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading: Icon(Icons.man_outlined),
            title: Row(
              children: [Text("Gender"), Spacer(), Text("Add")],
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading: Icon(Icons.wifi_2_bar_outlined),
            title: Row(
              children: [Text("Orientation"), Spacer(), Text("Add")],
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading: Icon(Icons.menu_book_rounded),
            title: Row(
              children: [Text("Work"), Spacer(), Text("Add")],
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          Container(
            padding: EdgeInsets.all(8),
            alignment: Alignment.centerLeft,
            height: 50,
            child: Text(
              "Additional Information",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading: Icon(Icons.child_care),
            title: Row(
              children: [Text("Childern"), Spacer(), Text("Add")],
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading: Icon(Icons.chat_outlined),
            title: Row(
              children: [Text("Conversation"), Spacer(), Text("Add")],
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading: Icon(Icons.emoji_food_beverage),
            title: Row(
              children: [Text("Drink"), Spacer(), Text("Add")],
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading: Icon(Icons.scale),
            title: Row(
              children: [Text("Height"), Spacer(), Text("Add")],
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading: Icon(Icons.heart_broken),
            title: Row(
              children: [Text("Looking For"), Spacer(), Text("Add")],
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading: Icon(Icons.policy),
            title: Row(
              children: [Text("Political Preference"), Spacer(), Text("Add")],
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading: Icon(Icons.polyline_rounded),
            title: Row(
              children: [Text("Pronouns"), Spacer(), Text("Add")],
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading: Icon(Icons.temple_hindu_sharp),
            title: Row(
              children: [Text("Religion"), Spacer(), Text("Add")],
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading: Icon(Icons.smoking_rooms_sharp),
            title: Row(
              children: [Text("Smoke"), Spacer(), Text("Add")],
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading: Icon(Icons.work_outline_rounded),
            title: Row(
              children: [Text("Workout"), Spacer(), Text("Add")],
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading: Icon(Icons.account_tree_rounded),
            title: Row(
              children: [Text("Zodiac"), Spacer(), Text("Add")],
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading: Icon(Icons.location_on_outlined),
            title: Row(
              children: [Text("Living In"), Spacer(), Text("Add")],
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          Container(
            padding: EdgeInsets.all(8),
            alignment: Alignment.centerLeft,
            // height:
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Languages",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                    Spacer(),
                    IconButton(onPressed: () {}, icon: Icon(Icons.add))
                  ],
                ),
                SizedBox(
                  height: 52,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _languages.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(8),
                        padding: EdgeInsets.all(8),
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.pink.withOpacity(0.05),
                            border: Border.all(color: Colors.pink.shade400),
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          _languages[index],
                          style: TextStyle(fontSize: 15),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          Container(
              height: ((myInterest.length / 3) * 50) + 60,
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Interests",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                      Spacer(),
                      IconButton(onPressed: () {}, icon: Icon(Icons.add))
                    ],
                  ),
                  Container(
                    child: Expanded(
                        child: GridView.builder(
                      itemCount: myInterest.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: 4 / 1.2),
                      itemBuilder: (context, index) {
                        return Container(
                          // margin: EdgeInsets.all(8),
                          padding: EdgeInsets.all(8),
                          height: 20,
                          decoration: BoxDecoration(
                              color: Colors.pink.withOpacity(0.05),
                              border: Border.all(color: Colors.pink.shade400),
                              borderRadius: BorderRadius.circular(10)),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Icon(Icons.military_tech_outlined),
                              Text(
                                myInterest[index],
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        );
                      },
                    )),
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
