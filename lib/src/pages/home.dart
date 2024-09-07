import 'package:flutter/material.dart';
import 'package:whatsapp/src/pages/message_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
List<Map>chatList=[
  {
    'name':'Tabbasum Marsia',
    'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTThrOYSSR7l8PgwmY0uNYyLCQjRb29ykwnaQ&s',
    'last_msg':'Dhaka Te',
    'time':'12:11 PM',
    'count':'0'
  },
  {
    'name':'Sabiha Iffat Luna',
    'image':'https://5.imimg.com/data5/SELLER/Default/2023/10/355151256/TX/CY/LS/140611278/designer-grils-frock-500x500.jpg',
    'last_msg':'Gorar dim',
    'time':'12:11 PM',
    'count':'2'
  },
  {
    'name':'Rafi Islam',
    'image':'https://t4.ftcdn.net/jpg/03/26/98/51/360_F_326985142_1aaKcEjMQW6ULp6oI9MYuv8lN9f8sFmj.jpg',
    'last_msg':'Jibon joubon ses',
    'time':'12:00 PM',
    'count':'0'
  },
  {
    'name':'Rakib Islam',
    'image':'https://t4.ftcdn.net/jpg/02/26/26/25/360_F_226262532_gDT7P0IevExmYvxgBKDAQWOJXmtjSdgz.jpg',
    'last_msg':'Tui koi re',
    'time':'10:00 PM',
    'count':'2'
  },
  {
    'name':'Midul Islam',
    'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2zU4AGv5LhiDV3SNBUyP-91_kBoZwnnC4TA&s',
    'last_msg':'Tor gf ar name ki re',
    'time':'12:10 PM',
    'count':'3'
  },
  {
    'name':'Masud',
    'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX59X4AsaTImTe34JDCkF5s2q4UEvldw-A3A&s',
    'last_msg':'koi re',
    'time':'12:18 PM',
    'count':'2'
  },
  {
    'name':'Liton',
    'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXHZTQs8ojYjldwZDeEM73Fk6h4BOOXGRL1A&s',
    'last_msg':'Kal asci',
    'time':'12:11 PM',
    'count':'0'
  },
  {
    'name':'Niloy Islam',
    'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQW6Amch32RuIr3oNNPtHGQa2xGrKuapl-SeA&s',
    'last_msg':'are na',
    'time':'12:11 PM',
    'count':'4'
  },
  {
    'name':'Tabbasum Marsia',
    'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTThrOYSSR7l8PgwmY0uNYyLCQjRb29ykwnaQ&s',
    'last_msg':'Love you',
    'time':'12:11 PM',
    'count':'1'
  },
  {
    'name':'Sabiha Iffat Luna',
    'image':'https://5.imimg.com/data5/SELLER/Default/2023/10/355151256/TX/CY/LS/140611278/designer-grils-frock-500x500.jpg',
    'last_msg':'Gorar dim',
    'time':'12:11 PM',
    'count':'3'
  },
  {
    'name':'Rafi Islam',
    'image':'https://t4.ftcdn.net/jpg/03/26/98/51/360_F_326985142_1aaKcEjMQW6ULp6oI9MYuv8lN9f8sFmj.jpg',
    'last_msg':'Jibon joubon ses',
    'time':'12:00 PM',
    'count':'1'
  },
  {
    'name':'Rakib Islam',
    'image':'https://t4.ftcdn.net/jpg/02/26/26/25/360_F_226262532_gDT7P0IevExmYvxgBKDAQWOJXmtjSdgz.jpg',
    'last_msg':'Tui koi re',
    'time':'10:00 PM',
    'count':'2'
  },
  {
    'name':'Midul Islam',
    'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2zU4AGv5LhiDV3SNBUyP-91_kBoZwnnC4TA&s',
    'last_msg':'Tor gf ar name ki re',
    'time':'12:10 PM',
    'count':'0'
  },
  {
    'name':'Masud',
    'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX59X4AsaTImTe34JDCkF5s2q4UEvldw-A3A&s',
    'last_msg':'koi re',
    'time':'12:18 PM',
    'count':'2'
  },
  {
    'name':'Liton',
    'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXHZTQs8ojYjldwZDeEM73Fk6h4BOOXGRL1A&s',
    'last_msg':'Kal asci',
    'time':'12:11 PM',
    'count':'3'
  },
  {
    'name':'Niloy Islam',
    'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQW6Amch32RuIr3oNNPtHGQa2xGrKuapl-SeA&s',
    'last_msg':'are na',
    'time':'12:11 PM',
    'count':'4'
  },

];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF075E55),
          title: Text(
            "WhatsApp",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search), color: Colors.white),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert), color: Colors.white),
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.white.withOpacity(.5),
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt_rounded, color: Colors.white),
              ),
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALLS',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Camera Tab")),
            ListView.builder(
              itemCount: chatList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) =>
                       MessageView(
                         name:chatList[index]['name'],
                         image:chatList[index]['image'],

                       ),));
                  },
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      chatList[index]['image'],
                    ),
                  ),
                  title: Text(
                    chatList[index]['name'],
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                    chatList[index]['last_msg'],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  trailing: Column(
                    children: [
                      Text(
                        chatList[index]['time'],
                        style: TextStyle(
                          color: int.parse(chatList[index]['count']) == 0 ? Colors.black : Color(0xFF10CE62),
                        ),
                      ),
                      int.parse(chatList[index]['count']) == 0
                          ? SizedBox()
                          : Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: Color(0xFF10CE62),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            chatList[index]['count'],
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            Center(child: Text("Chats Tab")),

            Center(child: Text("Status Tab")),
            Text("hanif"),// Content for Status tab
            Center(child: Text("Calls Tab")),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF075E55),
          onPressed: () {},
          child: Icon(Icons.message, color: Colors.white),
        ),
      ),
    );
  }
}
