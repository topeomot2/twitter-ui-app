import 'package:flutter/material.dart';

import './utils.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter UI',
      theme: new ThemeData(
          primaryColor: DarkModeBg,
      ),
      home: TwitterHomePage(),
    );
  }
}

class TwitterHomePage extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: Container(
          height: 61.0,
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
              child: CircleAvatar(
                radius: 45.0,
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
            onTap: (){
              _scaffoldKey.currentState.openDrawer();
            },
          ),
        ),
        title: Text("Home",
          style: TextStyle(
            color: AppWhite,
            fontSize: 17.0,
            fontWeight: FontWeight.w500
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.star_border, color: TwitterBlue,),
          )
        ],
      ),
      body: Container(
        color: DarkModeBg,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 4.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex:1,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('assets/masters_of_scale.jpg'),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(left:16.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text('Masters of Scale',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: AppWhite,
                                      fontWeight: FontWeight.w900
                                    ),
                                  ),
                                  Text(' @mastersofscale',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: AppGrey,
                                        fontWeight: FontWeight.w400
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1
                                  ),
                                  Expanded(
                                    child: Text('.4h',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: AppGrey,
                                            fontWeight: FontWeight.w400
                                        ),
                                        maxLines: 1
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: AppGrey,
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right:8.0, bottom: 8.0),
                                child: Text('To achieve cognitive diversity, manage your team @SallieKrawcheck-style: '+
                                  'like a Rubik\'s Cube. Once that\'s locked into place, it will unlock opportunities the'+
                                  'competition will miss.\n\nHear Sallie\'s episode about Checking Your Blindspot on @MastersOfScale : '+
                                  'applepodcasts.com/mastersofscale',
                                  softWrap: true,
                                  style: TextStyle(
                                      color: AppWhite,
                                      fontSize: 14.5,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right:2.0, bottom: 8.0),
                                child: ClipRRect(
                                  child: Image.asset('assets/sallie.png'),
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                              )
                            ],
                            ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:8.0),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 64.0,),
                        Icon(
                          Icons.add_comment,
                          color: AppGrey,
                        ),
                        Text('5', style: TextStyle(
                            color: AppGrey,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400
                        )),
                        SizedBox(width: 20.0,),
                        Icon(
                          Icons.autorenew,
                          color: AppGrey,
                        ),
                        Text('100', style: TextStyle(
                            color: AppGrey,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400
                        )),
                        SizedBox(width: 20.0,),
                        Icon(
                          Icons.favorite_border,
                          color: AppGrey,
                        ),
                        Text('127', style: TextStyle(
                            color: AppGrey,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400
                        )),
                        SizedBox(width: 20.0,),
                        Icon(
                          Icons.share,
                          color: AppGrey,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(color: AppGrey,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:8.0),
                    child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 44.0),
                            child: Icon(Icons.favorite, color: AppGrey, size: 14.0),
                          ),
                          SizedBox(width: 10.0,),
                          Text('bolu femi',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: AppGrey,
                                fontWeight: FontWeight.w400
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 4.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex:1,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('assets/mashables.jpg'),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(left:16.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text('Mashable',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        color: AppWhite,
                                        fontWeight: FontWeight.w900
                                    ),
                                  ),
                                  Text(' @Mashable',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          color: AppGrey,
                                          fontWeight: FontWeight.w400
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1
                                  ),
                                  Expanded(
                                    child: Text('.12h',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: AppGrey,
                                            fontWeight: FontWeight.w400
                                        ),
                                        maxLines: 1
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: AppGrey,
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right:8.0, bottom: 8.0),
                                child: Text('Sarah Connor steals the show in explosive CinemaCon footage'+
                                    ' of \'Terminator: Dark Fate\'',
                                  softWrap: true,
                                  style: TextStyle(
                                      color: AppWhite,
                                      fontSize: 14.5,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right:2.0, bottom: 8.0),
                                child: Card(
                                  color: DarkModeBg,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: AppGrey,
                                        width: 0.25
                                      ),
                                      borderRadius: new BorderRadius.circular(10.0)
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      ClipRRect(
                                        child: Image.asset('assets/terminator.jpg'),
                                        borderRadius: new BorderRadius.circular(10.0),
                                      ),
                                      Divider(color: AppGrey, height: 0.25,),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Sarah Connors steal the show in explosive CinemaCon footage of \'Terminator '+
                                        ' Dark Fate\' mashable.com/article/terminal... via @mashable',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: AppWhite,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w400
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
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:8.0),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 64.0,),
                        Icon(
                          Icons.add_comment,
                          color: AppGrey,
                        ),
                        Text('32', style: TextStyle(
                            color: AppGrey,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400
                        )),
                        SizedBox(width: 20.0,),
                        Icon(
                          Icons.autorenew,
                          color: AppGrey,
                        ),
                        Text('127', style: TextStyle(
                            color: AppGrey,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400
                        )),
                        SizedBox(width: 20.0,),
                        Icon(
                          Icons.favorite_border,
                          color: AppGrey,
                        ),
                        Text('127', style: TextStyle(
                            color: AppGrey,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400
                        )),
                        SizedBox(width: 20.0,),
                        Icon(
                          Icons.share,
                          color: AppGrey,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(color: AppGrey,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:8.0),
                    child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 44.0),
                            child: Icon(Icons.favorite, color: AppGrey, size: 14.0),
                          ),
                          SizedBox(width: 10.0,),
                          Text('abe "gart" haskins',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: AppGrey,
                                fontWeight: FontWeight.w400
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 4.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex:1,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('assets/profile.jpg'),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(left:16.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text('Temitope Omotunde',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        color: AppWhite,
                                        fontWeight: FontWeight.w900
                                    ),
                                  ),
                                  Text(' @topeomot',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          color: AppGrey,
                                          fontWeight: FontWeight.w400
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1
                                  ),
                                  Expanded(
                                    child: Text('.12h',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: AppGrey,
                                            fontWeight: FontWeight.w400
                                        ),
                                        maxLines: 1
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: AppGrey,
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right:8.0, bottom: 8.0),
                                child: Text('I am in love with Flutter - ClipRRect'+
                                    ' (Flutter Widget of the Week) youtu.be/el43jkQkrvs via @YouTube',
                                  softWrap: true,
                                  style: TextStyle(
                                      color: AppWhite,
                                      fontSize: 14.5,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:8.0),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 64.0,),
                        Icon(
                          Icons.add_comment,
                          color: AppGrey,
                        ),
                        Text('32', style: TextStyle(
                            color: AppGrey,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400
                        )),
                        SizedBox(width: 20.0,),
                        Icon(
                          Icons.autorenew,
                          color: AppGrey,
                        ),
                        Text('127', style: TextStyle(
                            color: AppGrey,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400
                        )),
                        SizedBox(width: 20.0,),
                        Icon(
                          Icons.favorite_border,
                          color: AppGrey,
                        ),
                        Text('127', style: TextStyle(
                            color: AppGrey,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400
                        )),
                        SizedBox(width: 20.0,),
                        Icon(
                          Icons.share,
                          color: AppGrey,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(color: AppGrey,),
          ],

        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                  accountName: Text('Temitope Omotunde'),
                  accountEmail: Text('@topeomot'),
                currentAccountPicture: CircleAvatar(
                  radius: 90.0,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Text('422',
                      style: TextStyle(
                        color: AppWhite,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w800
                      ),
                    ),
                    Text(' Following',
                      style: TextStyle(
                        color: AppWhite,
                        fontSize: 17.0
                      )
                    ),
                    SizedBox(width: 10.0),
                    Text('299',
                      style: TextStyle(
                          color: AppWhite,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w800
                      )
                    ),
                    Text(' Followers',
                      style: TextStyle(
                          color: AppWhite,
                          fontSize: 17.0
                      )
                    )
                  ],
                ),
              ),
              Divider(color: AppWhite),
              ListTile(
                title: Text("Profile",
                  style: TextStyle(
                    color: AppWhite,
                    fontSize: 21.0,
                    fontWeight: FontWeight.w600
                  ),
                ),
                leading: Icon(
                    Icons.person_outline,
                    color: AppWhite,
                ),
              ),
              ListTile(
                title: Text("Lists",
                  style: TextStyle(
                      color: AppWhite,
                      fontSize: 21.0,
                      fontWeight: FontWeight.w600
                  ),
                ),
                leading: Icon(
                  Icons.list,
                  color: AppWhite,
                ),
              ),
              ListTile(
                title: Text("Bookmarks",
                  style: TextStyle(
                      color: AppWhite,
                      fontSize: 21.0,
                      fontWeight: FontWeight.w600
                  ),
                ),
                leading: Icon(
                  Icons.bookmark_border,
                  color: AppWhite,
                ),
              ),
              ListTile(
                title: Text("Moments",
                  style: TextStyle(
                      color: AppWhite,
                      fontSize: 21.0,
                      fontWeight: FontWeight.w600
                  ),
                ),
                leading: Icon(
                  Icons.flash_on,
                  color: AppWhite,
                ),
              ),
              Divider(color: AppWhite),
              ListTile(
                title: Text("Twitter Ads",
                  style: TextStyle(
                      color: AppWhite,
                      fontSize: 23.0,
                      fontWeight: FontWeight.w600
                  ),
                ),
                leading: Icon(
                  Icons.launch,
                  color: AppWhite,
                ),
              ),
              Divider(color: AppWhite),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Settings and privacy",
                  style: TextStyle(
                      color: AppWhite,
                      fontSize: 21.0,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Help Centre",
                  style: TextStyle(
                      color: AppWhite,
                      fontSize: 21.0,
                      fontWeight: FontWeight.w600
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
