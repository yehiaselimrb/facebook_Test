import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/bloc/cubit/cubit.states.dart';
import 'package:untitled/bloc/cubit/cubit_app.dart';
import 'package:untitled/shared/components/component.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context ) => AppCubit(),
      child:  BlocConsumer<AppCubit, AppStates>(
        listener: (context, state)=>{},
        builder: (context, state){
    var cubit = AppCubit.getCubit(context);
          return DefaultTabController(
        length: 6,
        initialIndex: 0,
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                "facebook",
                style: Theme.of(context).textTheme.headline5,
              ),
              actions: [
                appbarIcons(
                    icon: Icon(
                  Icons.search,
                  color: color,
                  size: 24,
                ),
                  size: 16
                ),
                appbarIcons(
                  icon: Icon(
                    CupertinoIcons.bolt_horizontal_circle_fill,
                    color: color,
                    size: 20,
                  ),
                  size: 16
                ),
              ],
              bottom: TabBar(
                tabs: [
                  Tab(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.home,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                  ),
                  Tab(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.group_work_outlined,
                        color: color,
                        size: 30,
                      ),
                    ),
                  ),
                  Tab(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shop_outlined,
                        color: color,
                        size: 30,
                      ),
                    ),
                  ),
                  Tab(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.square_grid_2x2,
                        color: color,
                        size: 30,
                      ),
                    ),
                  ),
                  Tab(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_none,
                        color: color,
                        size: 30,
                      ),
                    ),
                  ),
                  Tab(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu,
                        color: color,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            body:
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child:  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage("https://pic.i7lm.com/wp-content/uploads/2020/01/1440-11.jpg"),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.grey[100]),
                                padding: EdgeInsets.all(10),
                                width: 400,
                                height: 40,
                                child: Text(
                                  "What's on your mind?",
                                  style: Theme.of(context).textTheme.bodyText2
                                ),
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: double.infinity,
                            height: 1,
                            color: Colors.grey[300],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.live_tv_sharp,
                                    color: Colors.red,
                                  ),
                                  label: Text(
                                    "Live",
                                    style: Theme.of(context).textTheme.bodyText2,
                                  )),
                              Container(
                                height: 25,
                                width: 1,
                                color: Colors.grey,
                              ),
                              TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.photo_library,
                                    color: Colors.green,
                                  ),
                                  label: Text(
                                    'Photo',
                                    style: Theme.of(context).textTheme.bodyText2),
                                  ),
                              Container(
                                height: 25,
                                width: 1,
                                color: Colors.grey,
                              ),
                              TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.video_call_rounded,
                                    color: Colors.deepPurpleAccent,
                                    size: 30,
                                  ),
                                  label: Text(
                                    'Room',
                                    style: Theme.of(context).textTheme.bodyText2),
                                  ),
                            ],
                          )
                        ]),
                      ),
                      containerSpace(),
                      Container(
                        height: 250,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: cubit.Stories.length,
                            separatorBuilder: (context, index) => SizedBox(width: 10,),
                            itemBuilder: (context, index) => storiesItem(cubit.Stories[index],cubit.posts[index]),
                        ),
                      ),
                      containerSpace(),
                      Container(
                        height: 500,
                        child: ListView.separated(
                            itemBuilder:(context, index) => postsItem(cubit.posts[index], context),
                            separatorBuilder: (context, index) => containerSpace(),
                            itemCount: cubit.posts.length
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
    );
    },

      ),
    );
  }
}
