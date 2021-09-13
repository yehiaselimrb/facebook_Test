import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/models/chats_app.dart';
import 'package:untitled/models/posts_app.dart';
import 'package:untitled/models/side_menu.dart';
import 'package:untitled/models/stories_app.dart';
Color color = Colors.black54;
Widget appbarIcons({
 required Icon icon,
  required double size,
})
{
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: CircleAvatar(
      radius: size,
      backgroundColor: Colors.grey[200],
      child: icon,
    ),
  );
}
Widget storiesItem(StoriesModel store, PostModel model){
  return Row(
        children: [
          Stack(
              children: [
                Container(
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(store.image))),
                ),
                Positioned(top: 10, left: 15, child: CircleAvatar(backgroundImage: NetworkImage(model.profileImage),)),
                Positioned(bottom: 10,left: 10, child: Text(model.name,style: TextStyle(color: Colors.white,fontSize: 16,),)),
              ]),
        ]
  );
}
Widget postsItem(PostModel model, context){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child:  Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(model.profileImage)
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(model.name,style: Theme.of(context).textTheme.bodyText1,),
                      Text(model.time,style: Theme.of(context).textTheme.bodyText2),
                    ],
                  )
                ],
              ),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.ellipsis))
                  ],
                )
           ]
            ),
            SizedBox(height: 10,),
            Text(model.text,style: Theme.of(context).textTheme.bodyText2,maxLines: 3,overflow:TextOverflow.ellipsis,),
            SizedBox(height: 10,),
            if(model.images != null)
               Container(
                   width: double.infinity,
                   height: 200,
                   decoration: BoxDecoration(
                       image: DecorationImage(
                         image:NetworkImage(model.images.toString()),fit: BoxFit.cover,)
                   )
               ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(icon: Icon(Icons.favorite,color: Colors.red,),label: Text(model.like.toString(),style: Theme.of(context).textTheme.bodyText2,),onPressed: (){},),
                  Text('${model.comments.toString()} Comments'),
                ],
              ),
            ),
            Container(width: double.infinity,height: 1,color: Colors.grey[400],),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(onPressed: (){}, icon:Icon(Icons.favorite,color: Colors.grey[400],), label: Text('Like',style: Theme.of(context).textTheme.bodyText2,),),
                  TextButton.icon(onPressed: (){}, icon:Icon(Icons.mode_comment_outlined,color: Colors.grey[400]), label: Text('Comment',style: Theme.of(context).textTheme.bodyText2,)),
                  TextButton.icon(onPressed: (){}, icon:Icon(Icons.share,color: Colors.grey[400]), label: Text('Share',style: Theme.of(context).textTheme.bodyText2,)),
                ],
              ),
            )
          ],
        ),
    );
}
Widget containerSpace(){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5.0),
    child: Container(width: double.infinity,height: 10,color: Colors.grey[300],),
  );
}
Widget appbarWeb(){
  return  Container(
    height: 65,
    decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 4.0,
          )
        ]
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child:
          Row(
              children: [
                Row(
                  children: [
                    appbarIcons(icon: Icon(Icons.arrow_drop_down, color: Colors.black,),
                      size: 16,),
                    appbarIcons(
                        icon: Icon(Icons.notifications, color: Colors.black), size: 16),
                    appbarIcons(
                        icon: Icon(Icons.offline_bolt, color: Colors.black), size: 16),
                    appbarIcons(icon: Icon(Icons.menu, color: Colors.black), size: 16),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Yehia',
                      style: TextStyle(color: Colors.black54),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh6oPIzWAVL6bJTbPZ4N2paZ1xpqti-QRj7g&usqp=CAU'),
                    )
                  ],
                )
              ] ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(icon: Icon(Icons.gamepad), onPressed: (){},iconSize: 30,color: Colors.black12,),
                  IconButton(icon: Icon(Icons.group_work_outlined),onPressed: (){},iconSize: 30,color: Colors.black12),
                  IconButton(icon: Icon(Icons.fireplace_outlined),onPressed: (){},iconSize: 30,color: Colors.black12),
                  IconButton(icon: Icon(Icons.home),onPressed: (){},iconSize: 30,color: Colors.blue)
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: 250,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[100]),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(
                        width: 10,
                      ),
                      Text('search facebook'),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh6oPIzWAVL6bJTbPZ4N2paZ1xpqti-QRj7g&usqp=CAU'),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
Widget sideMenuWeb(SideMenuModel side, context){
  return  Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(side.image.toString()),fit: BoxFit.cover,)
            )
        ),
        SizedBox(width: 10,),
        Text(side.text,style: Theme.of(context).textTheme.headline6,maxLines: 1,),
      ],
    ),
  );
}
Widget chatMenuWeb(ChatModel chat, context){
  return
      Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(chat.profileImage),
          ),
          SizedBox(width: 10,),
          Text(chat.name,style: Theme.of(context).textTheme.headline6,),
        ],
  );
}