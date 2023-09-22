import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.grey,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: AppBar(
              elevation: 0.3,
              leading: Text(''),
              title: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'Tab bar sample',
                  style: TextStyle(fontSize: 21),
                ),
              ),
            ),
          ),
          body: Column(
            children: [
              Container(
                color: Colors.blue,
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  indicatorWeight: 3,
                  labelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  tabs: [
                    Container(
                      width: 100,
                      child: Tab(
                        child: Row(children: [
                          Text('Tab 1'),
                          SizedBox(
                            width: 5,
                          ),
                        ]),
                      ),
                    ),
                    Container(
                      width: 110,
                      child: Tab(child: Text('Tab 2')),
                    ),
                    Container(
                      width: 110,
                      child: Tab(child: Text('Tab 3')),
                    )
                  ],
                ),
              ),
              Flexible(
                  flex: 1,
                  child: TabBarView(
                    children: [
                      Container(
                        child: Center(
                          child: Text(
                            'TAB 1',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                        ),
                        color: Colors.orange,
                      ),
                      Container(
                        color: Colors.lightGreen,
                        child: Center(
                          child: Text(
                            'TAB 2',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            'TAB 3',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                        ),
                        color: Colors.deepPurple,
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
