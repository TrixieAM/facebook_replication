import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import '../constants.dart';
import '../widgets/customfont.dart';

class NewsfeedCard extends StatelessWidget {
    final String userName;
    final String postContent;

    const NewsfeedCard(
        {super.key,
        required this.userName,
        required this.postContent});

    @override
    Widget build(BuildContext context) {
        return Card(
            margin: EdgeInsets.all(ScreenUtil().setSp(10)),
            child: Padding(
                padding: EdgeInsets.all(ScreenUtil().setSp(10)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        ListTile(
                          leading: const CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                            "https://64.media.tumblr.com/61e54f7d01de4bbc43f6fb7d4f161f5d/4872c208c6cb4493-bf/s640x960/92a2fed559afc854e4cc95d5331a791c5a31c82e.jpg",
                          ),
                        ),

                        
                          title: CustomFont(
                              text: userName,
                              fontSize: ScreenUtil().setSp(12),
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                          ),

                          subtitle: const Text("October 11  •   🌏︎"),
                          trailing: const Icon(Icons.more_horiz),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: ScreenUtil().setSp(5)), // This works correctly
                              CustomFont(
                                text: postContent,
                                fontSize: ScreenUtil().setSp(14),
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),

                        const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                        child: Text("#flutter #dart #programiz", style: TextStyle(color: Colors.blue, fontSize: 20)),
                        ),

                        Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Image.network("https://content.imageresizer.com/images/memes/Sad-cat-tears-meme-7.jpg",
                        width: 800,
                        height: 525,
                        fit: BoxFit.cover,
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.favorite, color: Colors.red, size: 18),
                                Icon(Icons.thumb_up, color: Colors.blue, size: 18),
                                Text("😆"),
                                SizedBox(width: 6),
                                Text("1021"),
                              ],
                            ),
                            Text("325 Comments • 25 Shares")
                          ],
                        ),
                      ),

                      const Divider(),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _actionButton(Icons.thumb_up_alt_outlined, "Like"),
                          _actionButton(Icons.mode_comment_outlined, "Comment"),
                          _actionButton(Icons.share, "Share"),

                        ],
                      ),

                      const Divider(),

                   
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                "https://64.media.tumblr.com/79f727a34433eb005835c381c0d7216f/tumblr_otox3fKZ9Y1s05s0mo4_500.png",
                              ),
                            ),

                            const SizedBox(width: 10),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                child: Row(
                                  children: [
                                    const Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: "Write a comment...",
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),

                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        IconButton(
                                          icon: const Icon(Icons.chat_bubble_outline, color: Colors.grey),
                                          onPressed: () {},
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.emoji_emotions_outlined, color: Colors.grey),
                                          onPressed: () {},
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.camera_alt_outlined, color: Colors.grey),
                                          onPressed: () {},
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.gif, color: Colors.grey),
                                          onPressed: () {},
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.sticky_note_2_outlined, color: Colors.grey),
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                            child: Text("View Comments"),
                            ),
                    ],
                ),
            ),
        );
    }


    Widget _actionButton(IconData icon, String label) {
      return TextButton.icon(
        onPressed: (){},
        icon: Icon(icon, color: Colors.grey[800]),
        label: Text(label, style: TextStyle(color: Colors.grey[800]),),
      );
    }
}
