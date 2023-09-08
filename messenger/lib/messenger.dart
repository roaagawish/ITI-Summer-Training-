import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row (
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage:
              NetworkImage("https://techguruu.site/wp-content/uploads/2023/07/ab6761610000e5eb7ac3385e1033229ea480dc9d-2.jpeg"),
            ),
            SizedBox(width: 10),
            Text("Chats",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),)
          ],
        ),
        actions: [
          CircleAvatar(
              radius: 16,
              child: Icon(Icons.camera_alt,size: 15,color: Colors.white,)
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CircleAvatar(
                radius: 16,
                child: Icon(Icons.edit,size: 15,color: Colors.white,)
            ),
          ),
        ],
      ),
      body:
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey.shade300,
                ),
                child: Row(
                  children: [
                    Icon(Icons.search , color: Colors.black,),
                    SizedBox(width: 10),
                    Text("Search", style: TextStyle(fontSize: 18,color: Colors.black),)
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) => buildStoryItem() ,
                  itemCount: 10,
                  separatorBuilder: (BuildContext context, int index) => SizedBox(width: 10,),
                  scrollDirection: Axis.horizontal,),
              ),
              SizedBox(height: 20),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) => buildChatItem(),
                itemCount: 20,
                separatorBuilder: (BuildContext context, int index) => SizedBox(height: 10,),
                scrollDirection: Axis.vertical,)
            ],
          ),
        ),
      ),

    );
  }
  Widget buildChatItem() {

    return
      Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage:
                NetworkImage("https://techguruu.site/wp-content/uploads/2023/07/ab6761610000e5eb7ac3385e1033229ea480dc9d-2.jpeg"),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5,right: 5),
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(width: 5),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nourhan Ahmed" , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                Row(
                  children: [
                    Expanded(
                      child: Text("Hello, My name is Nourhan Ahmed Abdel Ghaffer",
                        style: TextStyle(fontSize: 12,color: Colors.black),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Text("08:00 am")
                  ],
                )
              ],
            ),
          )
        ],
      );
  }
  Widget buildStoryItem () {
    return  Container(
        width: 50,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                  backgroundImage:
                  NetworkImage("https://techguruu.site/wp-content/uploads/2023/07/ab6761610000e5eb7ac3385e1033229ea480dc9d-2.jpeg"),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5,right: 5),
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text("Nourhan Ahmed Abdel Ghaffer Nourhan Ahmed Abdel Ghaffer",
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,)
          ],
        )
    );
  }
}

