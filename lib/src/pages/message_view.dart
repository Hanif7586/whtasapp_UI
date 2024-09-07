import 'package:flutter/material.dart';
import 'package:whatsapp/src/pages/home.dart';

class MessageView extends StatefulWidget {
  final String name;
  final String image;
  const MessageView({super.key, required this.name, required this.image});

  @override
  State<MessageView> createState() => _MessageViewState();
}

class _MessageViewState extends State<MessageView> {
  List<Map>chatDetails=[
    {
      'message':'hello',
      'is_me':true,
      'time':'07:00PM'
    },
    {
      'message':'hi',
      'is_me':false,
      'time':'07:00PM'
    },
    {
      'message':'kmn acis re ',
      'is_me':true,
      'time':'07:01PM'
    },
    {
      'message':'valo...U',
      'is_me':false,
      'time':'07:02PM'
    },
    {
      'message':'Ai teo...',
      'is_me':true,
      'time':'07:04PM'
    },
    {
      'message':'Koi acis',
      'is_me':false,
      'time':'07:04PM'
    },
    {
      'message':'Dhaka te',
      'is_me':true,
      'time':'07:07PM'
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF6F4),
      appBar: AppBar(
        leading:IconButton(onPressed: (){
         Navigator.pop(context);
        },icon: Icon(Icons.arrow_back,color: Colors.white,),),
        backgroundColor: Color(0xFF075E55),

        title: Expanded(child: ListTile(
          contentPadding: EdgeInsets.all(0),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(widget.image),

          ),
          title: Text(widget.name,style: TextStyle(
              color: Colors.white,fontWeight: FontWeight.bold),),
          subtitle:Text('Last Seen 07:00 PM',style: TextStyle(
              color: Colors.grey ,fontWeight: FontWeight.bold),),
          trailing: Icon(Icons.more_vert,color: Colors.white,),
        )),
        
      ),
      body:Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(15),
              itemCount: chatDetails.length,
              itemBuilder: (context, index) {
                final data=chatDetails[index];
                return data['is_me']==true?Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
            
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
            
                              margin: EdgeInsets.symmetric(vertical: 5),
                              padding: EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              constraints: BoxConstraints(
                                maxWidth: 200,
                              ),
                              decoration: BoxDecoration(
                                  color: Color(0xFF075E55),
                                  borderRadius:BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                    // bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
            
                                  )
            
                              ),
                              child:Center (
                                child: Text(data['message'],style: TextStyle(
                                  color: Colors.white,
                                ),),
            
                              ),
            
                            ),
            
                          ],
                        ),
                        Text(data['time'],style: TextStyle(
                            color: Colors.grey
                        ),),
            
                      ],
                    ),
                  ],
                ):
            
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
            
                          margin: EdgeInsets.symmetric(vertical: 5),
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          constraints: BoxConstraints(
                            maxWidth: 200,
                          ),
                          decoration: BoxDecoration(
                              color: data['is_me']==false?Colors.lightGreen:Color(0xFF075E55),
                              borderRadius:BorderRadius.only(
                                //topRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
            
                              )
            
                          ),
                          child:Center (
                            child: Text(data['message'],style: TextStyle(
                              color: Colors.black,
                            ),),
            
                          ),
            
                        ),
                        Text(data['time'],style: TextStyle(
                            color: Colors.grey
                        ),),
                      ],
                    ),
            
                  ],
                );
              },),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 60,

                    decoration: BoxDecoration(
                         color: Colors.black12,
                      borderRadius: BorderRadius.circular(20),

                    ),
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Center(
                       child: TextField(
                         decoration: InputDecoration(
                           hintText: 'Type a message',
                           border: InputBorder.none,
                           prefixIcon: Icon(Icons.emoji_emotions),
                           suffixIcon: Icon(Icons.link),
                         ),
                       ),
                     ),
                   ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundColor: Color(0xFF075E55),
                    child: Icon(Icons.send,color: Colors.white,),
                  ),
                )

              ],
            ),
          )
        ],
      )
      
      
      
    );
  }
}

