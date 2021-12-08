// ignore_for_file: prefer_const_constructors

import 'package:contactapp/contact_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contact app',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List mycontacts = listofcontacts;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          "My Contacts",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundImage: AssetImage("images/woman.jpg"),
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: mycontacts.length,
          itemBuilder: (BuildContext context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (index == 0)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search by name or number",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ))),
                  ),
                if (index == 0)
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Recents", style: TextStyle(fontSize: 25)),
                  ),
                if (index == 2)
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Contacts",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ContactPage(mycontact: mycontacts[index],)));
                  },
                  child:  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("${mycontacts[index]["image"]}")
                    ,),
                    title: Text(
                      mycontacts[index]["name"],
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(
                      mycontacts[index]["phone"]
                    ),
                    trailing: Icon(Icons.more_horiz),
                  ),
                ),
                const Divider(
                  height: 4,
                  color: Colors.grey,
                ),
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          size: 50,
        ),
      ),
    );
  }
}




List listofcontacts =[
  {
    "name":"Cobo",
    "location":"wa poly",
    "email": "lambert1@gmail.com",
    "phone": "0508096500",
    "Group":"family",
    "image":"https://picsum.photos/200/300?random=765"
  },
  {
    "name":"Motuo6",
    "location":"wa Zongo",
    "email": "motuo6@gmail.com",
    "phone": "0543339984",
    "Group":"family",
    "image":"https://picsum.photos/200/300?random=413"
  },
  {
    "name":"Gaeten",
    "location":"Konta",
    "email": "Geaten1@gmail.com",
    "phone": "0508041151",
    "Group":"family",
    "image":"https://picsum.photos/200/300?random=10"
  },
  {
    "name":"Haadi",
    "location":"Bole",
    "email": "Haadi24@gmail.com",
    "phone": "0508096500",
    "Group":"family",
    "image":"https://picsum.photos/200/300?random=70"
  },
  {
    "name":"niamatu",
    "location":"jejerayiri",
    "email": "ibrahimniamatu@gmail.com",
    "phone": "0508096500",
    "Group":"family",
    "image":"https://picsum.photos/200/300?random=42"
  },
  {
    "name":"Ramzia",
    "location":"wa Kpaguri",
    "email": "ramzy4@gmail.com",
    "phone": "0508096500",
    "Group":"family",
    "image":"https://picsum.photos/200/300?random=67"
  },
  {
    "name":"salma",
    "location":"Gando",
    "email": "lambert1@gmail.com",
    "phone": "0508096500",
    "Group":"family",
    "image":"https://picsum.photos/200/300?random=14"
  },
  {
    "name":"Safiya",
    "location":"wa tech",
    "email": "lambert1@gmail.com",
    "phone": "0508096500",
    "Group":"family",
    "image":"https://picsum.photos/200/300?random=38"
  },
  {
    "name":"Simon",
    "location":"kperihi",
    "email": "lambert1@gmail.com",
    "phone": "0508096500",
    "Group":"family",
    "image":"https://picsum.photos/200/300?random=46"
  },
  {
    "name":"Cobo",
    "location":"wa poly",
    "email": "lambert1@gmail.com",
    "phone": "0508096500",
    "Group":"family",
    "image":"https://picsum.photos/200/300?random=369"
  },
  {
    "name":"Gideon",
    "location":"wa lowcost",
    "email": "lambert1@gmail.com",
    "phone": "0508096500",
    "Group":"family",
    "image":"https://picsum.photos/200/300?random=17"
  },
  {
    "name":"sin",
    "location":"wa poly",
    "email": "lambert1@gmail.com",
    "phone": "0508096500",
    "Group":"family",
    "image":"https://picsum.photos/200/300?random=123"
  },
  {
    "name":"chris",
    "location":"wa poly",
    "email": "lambert1@gmail.com",
    "phone": "0508096500",
    "Group":"family",
    "image":"https://picsum.photos/200/300?random=44"
  },
  {
    "name":"Cosmass",
    "location":"wa poly",
    "email": "lambert1@gmail.com",
    "phone": "0508096500",
    "Group":"family",
    "image":"https://picsum.photos/200/300?random=72"
  },
  {
    "name":"Awudu",
    "location":"Tendamba",
    "email": "lambert1@gmail.com",
    "phone": "0508096500",
    "Group":"family",
    "image":"https://picsum.photos/200/300?random=25"
  },
  {
    "name":"Cobo",
    "location":"wa poly",
    "email": "lambert1@gmail.com",
    "phone": "0508096500",
    "Group":"family",
    "image":"https://picsum.photos/200/300?random=486"
  },
  {
    "name":"Cobo",
    "location":"wa poly",
    "email": "lambert1@gmail.com",
    "phone": "0508096500",
    "Group":"family",
    "image":"https://picsum.photos/200/300?random=53"
  },
  {
    "name":"Cobo",
    "location":"wa poly",
    "email": "lambert1@gmail.com",
    "phone": "0508096500",
    "Group":"family",
    "image":"https://picsum.photos/200/300?random=759"
  },
  {
    "name":"Cobo",
    "location":"wa poly",
    "email": "lambert1@gmail.com",
    "phone": "0508096500",
    "Group":"family",
    "image":"https://picsum.photos/200/300?random=458"
  },
  {
    "name":"Cobo",
    "location":"wa poly",
    "email": "lambert1@gmail.com",
    "phone": "0508096500",
    "Group":"family",
    "image":"https://picsum.photos/200/300?random=69"
  },
  {
    "name":"Cobo",
    "location":"wa poly",
    "email": "lambert1@gmail.com",
    "phone": "0508096500",
    "Group":"family",
    "image":"https://picsum.photos/200/300?random=58"
  },
  {
    "name":"Cobo",
    "location":"wa poly",
    "email": "lambert1@gmail.com",
    "phone": "0508096500",
    "Group":"family",
    "image":"https://picsum.photos/200/300?random=75"
  },
  {
    "name":"Cobo",
    "location":"wa poly",
    "email": "lambert1@gmail.com",
    "phone": "0508096500",
    "Group":"family",
    "image":"https://picsum.photos/200/300?random=5"
  },
];

