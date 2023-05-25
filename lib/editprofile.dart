import 'package:flutter/material.dart';
import 'bottomsheet.dart';
import 'data.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () => Navigator.pop(context),
      )),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                height: MediaQuery.of(context).size.width / 1.2,
                width: MediaQuery.of(context).size.width / 1.8,
                child: Column(children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink.withOpacity(0.05),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/user1.jpg"),
                            fit: BoxFit.cover)),
                    height: MediaQuery.of(context).size.width / 1.8,
                    width: MediaQuery.of(context).size.width / 1.8,
                    // child: IconButton(icon: Icon(Icons.add),onPressed: () {},),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 4.0,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.pink.withOpacity(0.05),
                              // image: const DecorationImage(
                              //     image:
                              //         AssetImage("assets/images/user2.jpg"),
                              //     fit: BoxFit.cover)
                                  ),
                          height: MediaQuery.of(context).size.width / 4.0,
                          width: MediaQuery.of(context).size.width / 4.0,
                          child: IconButton(
                            icon: Icon(
                              Icons.add,
                              size: 20,
                              color: Colors.pink[400],
                            ),
                            onPressed: () {},
                          )
                          // child: Image(image: AssetImage("assets/images/user2.jpg"),fit: BoxFit.cover,),
                        ),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.pink.withOpacity(0.05),
                              image: const DecorationImage(
                                  image:
                                      AssetImage("assets/images/user3.jpg"),
                                      fit: BoxFit.cover
                                  )
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
                margin:const EdgeInsets.fromLTRB(4, 8, 0, 8),
                height: MediaQuery.of(context).size.width / 1.2,
                width: MediaQuery.of(context).size.width / 2.85,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.pink.withOpacity(0.05),
                          image:const DecorationImage(
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
                    const Spacer(),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.pink.withOpacity(0.05),
                          // image: DecorationImage(image: AssetImage("assets/images/user2.jpg"),fit: BoxFit.cover)
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
                        )
                        )
                  ],
                ),
              )
            ],
          ),
          Container(
            padding:const EdgeInsets.all(8),
            alignment: Alignment.centerLeft,
            height: 50,
            child:const Text(
              "About",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin:const EdgeInsets.fromLTRB(8, 8, 8, 1),
            padding:const EdgeInsets.all(8),
            height: MediaQuery.of(context).size.width / 2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.pink.withOpacity(0.05),
            ),
            child:const Text(
              '"Tell them about you."',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
          ),
          Container(
            padding:const EdgeInsets.all(8),
            alignment: Alignment.centerRight,
            child:const Text(
              "0/200",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
          ),
          Container(
            padding:const EdgeInsets.all(8),
            alignment: Alignment.centerLeft,
            height: 50,
            child:const Text(
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
            leading:const Icon(Icons.local_post_office_outlined),
            title: Row(
              children: const [Text("Education"), Spacer(), Text("Add")],
            ),
            trailing:const Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading:const Icon(Icons.man_outlined),
            title: Row(
              children:const [Text("Gender"), Spacer(), Text("Add")],
            ),
            trailing:const Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading:const Icon(Icons.wifi_2_bar_outlined),
            title: Row(
              children:const [Text("Orientation"), Spacer(), Text("Add")],
            ),
            trailing:const Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading:const Icon(Icons.menu_book_rounded),
            title: Row(
              children:const [Text("Work"), Spacer(), Text("Add")],
            ),
            trailing:const Icon(Icons.arrow_forward_ios_outlined),
          ),
          Container(
            padding:const EdgeInsets.all(8),
            alignment: Alignment.centerLeft,
            height: 50,
            child:const Text(
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
            leading:const Icon(Icons.child_care),
            title: Row(
              children:const [Text("Childern"), Spacer(), Text("Add")],
            ),
            trailing:const Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading:const Icon(Icons.chat_outlined),
            title: Row(
              children:const [Text("Conversation"), Spacer(), Text("Add")],
            ),
            trailing:const Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading:const Icon(Icons.emoji_food_beverage),
            title: Row(
              children:const [Text("Drink"), Spacer(), Text("Add")],
            ),
            trailing:const Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading:const Icon(Icons.scale),
            title: Row(
              children:const [Text("Height"), Spacer(), Text("Add")],
            ),
            trailing:const Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading:const Icon(Icons.heart_broken),
            title: Row(
              children:const [Text("Looking For"), Spacer(), Text("Add")],
            ),
            trailing:const Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading:const Icon(Icons.policy),
            title: Row(
              children:const [Text("Political Preference"), Spacer(), Text("Add")],
            ),
            trailing:const Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading:const Icon(Icons.polyline_rounded),
            title: Row(
              children:const [Text("Pronouns"), Spacer(), Text("Add")],
            ),
            trailing:const Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading:const Icon(Icons.temple_hindu_sharp),
            title: Row(
              children:const [Text("Religion"), Spacer(), Text("Add")],
            ),
            trailing:const Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading:const Icon(Icons.smoking_rooms_sharp),
            title: Row(
              children:const [Text("Smoke"), Spacer(), Text("Add")],
            ),
            trailing:const Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading:const Icon(Icons.work_outline_rounded),
            title: Row(
              children:const [Text("Workout"), Spacer(), Text("Add")],
            ),
            trailing:const Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading:const Icon(Icons.account_tree_rounded),
            title: Row(
              children:const [Text("Zodiac"), Spacer(), Text("Add")],
            ),
            trailing:const Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {
              bottom(context);
            },
            leading:const Icon(Icons.location_on_outlined),
            title: Row(
              children:const [Text("Living In"), Spacer(), Text("Add")],
            ),
            trailing:const Icon(Icons.arrow_forward_ios_outlined),
          ),
          Container(
            padding:const EdgeInsets.all(8),
            alignment: Alignment.centerLeft,
            // height:
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      "Languages",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                    const Spacer(),
                    IconButton(onPressed: () {}, icon:const Icon(Icons.add))
                  ],
                ),
                SizedBox(
                  height: 52,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: languages.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin:const EdgeInsets.all(8),
                        padding:const EdgeInsets.all(8),
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.pink.withOpacity(0.05),
                            border: Border.all(color: Colors.pink.shade400),
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          languages[index],
                          style:const TextStyle(fontSize: 15),
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
              margin:const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "Interests",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                      const Spacer(),
                      IconButton(onPressed: () {}, icon:const Icon(Icons.add))
                    ],
                  ),
                  Expanded(
                      child: GridView.builder(
                    itemCount: myInterest.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 4 / 1.2),
                    itemBuilder: (context, index) {
                      return Container(
                        // margin: EdgeInsets.all(8),
                        padding:const EdgeInsets.all(8),
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.pink.withOpacity(0.05),
                            border: Border.all(color: Colors.pink.shade400),
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            const Icon(Icons.military_tech_outlined),
                            Text(
                              myInterest[index],
                              style: const TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      );
                    },
                  ))
                ],
              ))
        ]),
      ),
    );
  }
}
