import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  final List<Map<String, dynamic>> messages = [
    {"text": "Hello, how are you?", "isMe": false},
    {"text": "I'm fine, thanks! You?", "isMe": true},
    {"text": "Doing great!", "isMe": false},
  ];

  void sendMessage() {
    if (_messageController.text.trim().isEmpty) return;
    setState(() {
      messages.add({"text": _messageController.text, "isMe": true});
      _messageController.clear();
    });
    FocusScope.of(context).unfocus();
  }

  Widget chatBubble(String text, bool isMe) {
    return ChatBubble(
      clipper: ChatBubbleClipper5(
          type: isMe ? BubbleType.sendBubble : BubbleType.receiverBubble),
      alignment: isMe ? Alignment.topRight : Alignment.topLeft,
      margin: EdgeInsets.symmetric(
        vertical: 5,
      ),
      backGroundColor: isMe ? Color(0xff3D56A2) : Colors.white,
      child: Text(
        text,
        style: TextStyle(color: isMe ? Colors.white : Colors.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/chatbox.jpg'))),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final msg = messages[index];
                    return chatBubble(msg["text"], msg["isMe"]);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  height: 60,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(8),
                      color: Colors.white,
                      border:
                          Border(top: BorderSide(color: Colors.grey[300]!))),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _messageController,
                          decoration: InputDecoration(
                              hintStyle: GoogleFonts.workSans(
                                  color: Color(0xff6C757D),
                                  fontWeight: FontWeight.w500),
                              hintText: "Write a message...",
                              border: InputBorder.none),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(5),
                          color: Color(0xff3D56A2),
                        ),
                        height: 40,
                        width: 40,
                        child: IconButton(
                          onPressed: sendMessage,
                          icon: Transform.rotate(
                            angle: 3.14 / .56,
                            child: SvgPicture.asset(
                                color: Colors.white,
                                height: 18,
                                'assets/paper-plane-top.svg'),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
