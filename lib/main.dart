import 'package:flutter/material.dart';
import 'package:youtube_app/video_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text(
            'Youtube App',
            textAlign: TextAlign.start,
          ),
          actions: [
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.search),
                onPressed: (){
                  // todo
                },
              ),
            ),
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: (){
                  //todo
                },
              ),
            )
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.network(
                        'https://yt3.ggpht.com/ytc/AAUvwngs0KKWPUL5lMpa-5Tf2UYX935veus3gp8FmZF1ng=s176-c-k-c0x00ffffff-no-rj',
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      children: <Widget>[
                        const Text(
                          'ANNnewsCH111111',
                        ),
                        FlatButton(
                          child: Row(
                            children: [
                              Icon(Icons.video_call,
                                color: Colors.red,
                              ),
                              Text('resist'),
                            ],
                          ),
                          onPressed: (){
                            //todo
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () async{
                        // todo 画面遷移
                        await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VideoDetailPage()),
                        );
                      },
                      contentPadding: EdgeInsets.all(8),
                      leading: Image.network(
                        'https://i.ytimg.com/vi/bz28s3jdkCU/hqdefault.jpg?sqp=-oaymwEjCNACELwBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE=&rs=AOn4CLBzIAfrMSpt3IJXlb6nnW_Ed7YLNA',
                      ),
                      title: Column(
                        children: [
                          Text(
                            'ANNnews List',
                            style: TextStyle(fontSize: 20),
                          ),
                          Row(
                            children: [
                              Text('267views',
                                style: TextStyle(fontSize: 13),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                '5days ago',
                                style: TextStyle(fontSize: 13),
                              )
                            ],
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}