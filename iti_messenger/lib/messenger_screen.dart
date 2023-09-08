import 'package:flutter/material.dart';

class MessengerScreen extends StatefulWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  State<MessengerScreen> createState() => _MessengerScreenState();
}

class _MessengerScreenState extends State<MessengerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row (
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey,
              backgroundImage:
              NetworkImage("https://wallpapers.com/images/hd/labrador-retriever-picture-oq5i3d8kv0hxuis7.webp"),
            ),
            SizedBox(width: 10),
            Text("Chats",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),)
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 17,
            backgroundColor: Colors.grey,
              child: Icon(Icons.camera_alt,size: 16,color: Colors.white,)
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CircleAvatar(
                radius: 17,
                backgroundColor: Colors.grey,
                child: Icon(Icons.edit,size: 16,color: Colors.white,)
            ),
          ),
        ],
      ),
      body:
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey.shade400,
                ),
                child: Row(
                children: [
                  Icon(Icons.search , color: Colors.black54,),
                  SizedBox(width: 10),
                  Text("Search", style: TextStyle(fontSize: 18,color: Colors.black54),)
                ],
            ),
              ),
            SizedBox(height: 20),
            Container(
              height: 100,
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) => buildChatImage(),
                itemCount: 10,
                scrollDirection: Axis.horizontal,),
            ),
              SizedBox(height: 20),
           ListView.builder(
             shrinkWrap: true,
             physics: NeverScrollableScrollPhysics(),
             itemBuilder: (BuildContext context, int index) => buildChatItem(),
             itemCount: 20,
              scrollDirection: Axis.vertical,)
            ],
          ),
        ),
      ),

    );
  }
  Widget buildChatItem() {

    return  Column(
      children: [
        Row(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                  backgroundImage:
                  NetworkImage("https://wallpapers.com/images/hd/labrador-retriever-picture-oq5i3d8kv0hxuis7.webp"),
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
                  Row(
                    children: [
                      Text("Roaa Ayman" , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
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
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text("Please, call me ! It's an important problem ",
                          style: TextStyle(fontSize: 12,color: Colors.black54),),
                      ),
                      Text("08:00 am")
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 10),
      ],
    );
  }
  Widget buildChatImage () {
    return  Row(
      children: [
        Container(
          width: 70,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    backgroundImage:
                    NetworkImage("https://wallpapers.com/images/hd/labrador-retriever-picture-oq5i3d8kv0hxuis7.webp"),
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
              Text("Roaa Ayman Roaa Ayman Roaa Ayman",
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,)
            ],
          ),
        ),
        SizedBox(width: 5),
      ],
    );
  }
}

