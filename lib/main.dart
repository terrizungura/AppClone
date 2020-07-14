import 'package:AppClone/widgets/chats.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _scrollController = new ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
             // Stack(
               // children: <Widget>[
                          //       CircleAvatar(
                          //   backgroundImage:
                          //       AssetImage('assets/images/obama.jpg'),
                          //   //radius: 50.0,
                          // ),
                                SliverAppBar(
                  actions: <Widget>[
                    Icon(Icons.search),
                    Container(width: 20.0),
                    Icon(Icons.more_vert),
                    Container(width: 20.0)
                  ],
                  pinned: true,
                  floating: true,
                  backgroundColor: Color(0xFF075E54),
                  title: Text(
                    'Tezz',
                  ),
                  bottom: PreferredSize(
                    preferredSize: Size(
                      double.infinity,
                      100,
                    ),
                    child: TabBar(
                        isScrollable: true,
                        indicatorWeight: 5,
                        indicatorColor: Colors.white,
                        controller: _tabController,
                        tabs: [
                          Tab(
                            icon: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/magufuli.jpg'),
                            ),
                          ),
                          Tab(
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/obama.jpg'),
                              radius: 50.0,
                            ),
                          ),
                          Tab(
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/Robert.jpg'),
                            ),
                          ),
                        ]),
                  ),
                ),
                            //  ],//hgyuguyguguguyyfu
             // ),//gdtdghfygfuhgujh
            ];
          },
          body: TabBarView(controller: _tabController, children: [
            Chats(),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/magufuli.jpg'),
            ),
            //Chats(),
            Chats(),
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          items: [
          BottomNavigationBarItem(icon: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/magufuli.jpg'),
                          ),
          title: Text('data')),
          BottomNavigationBarItem(icon: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/obama.jpg'),
                            radius: 50.0,
                          ),
          title: Text('data')),
          BottomNavigationBarItem(icon: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/Robert.jpg'),
                          ),
          title: Text('data')),
        ]),
      ),
    );
  }
}
