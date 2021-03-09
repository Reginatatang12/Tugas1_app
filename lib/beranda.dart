import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text("Beranda"),
        ]),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search');
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications_active),
            onPressed: () {
              print('Click Start');
            },
          ),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Regina Tatang"),
              accountEmail: new Text("Regina.tatang@undiksha.ac.id"),
              currentAccountPicture: new GestureDetector(
                onTap: () {},
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(
                      'https://media-exp1.licdn.com/dms/image/C5603AQHn70r8BHk-pg/profile-displayphoto-shrink_200_200/0/1597147556027?e=1620864000&v=beta&t=6AsZDEblUeZpW0CY-6Gw4MtQF_r9lEi6RdeWXWygqHs'),
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/appimages/bg.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            new ListTile(
              title: new Text('Notifications'),
              trailing: new Icon(Icons.notifications_none),
            ),
            new ListTile(
              title: new Text('Wishlist'),
              trailing: new Icon(Icons.bookmark_border),
            ),
            new ListTile(
              title: new Text('Akun'),
              trailing: new Icon(Icons.verified_user),
            ),
            Divider(
              height: 2,
            ),
            new ListTile(
              title: new Text('Setting'),
              trailing: new Icon(Icons.settings),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          Image.asset("assets/appimages/shop.jpg"),
          Container(
            color: Colors.pinkAccent[100],
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rp.500.000',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      'Points 152.000',
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ],
                )),
                Icon(
                  Icons.local_offer,
                  color: Colors.red[500],
                ),
                Text('up to 75%'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Theme.of(context).dividerColor))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.grid_on, color: Colors.pink),
                    Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: Text(
                          'All Category',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.red,
                          ),
                        ))
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.computer_rounded, color: Colors.pink),
                    Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: Text(
                          'Computer',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.red,
                          ),
                        ))
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.shop, color: Colors.pink),
                    Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: Text(
                          'Fashion',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.red,
                          ),
                        ))
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.smartphone_rounded, color: Colors.pink),
                    Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: Text(
                          'Gadget',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.red,
                          ),
                        ))
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: new BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.purple, Colors.pink],
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kebutuhan Sehari hari',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        'Diskon Up to 75%',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                Text('Cek Sekarang Juga!'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
