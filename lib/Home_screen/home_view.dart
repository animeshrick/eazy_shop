import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    var listViewImage =
        'https://www.moredesign.com/wp-content/uploads/2020/03/1-14.jpg';
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          elevation: 0,
          title: Text("Eazy_Shop"),
        ),
        // appBar: PreferredSize(
        //   preferredSize: Size(double.infinity, 100),
        //   child: Container(
        //     decoration: BoxDecoration(boxShadow: [
        //       BoxShadow(color: Colors.black12, spreadRadius: 5, blurRadius: 2)
        //     ]),
        //     width: MediaQuery.of(context).size.width,
        //     height: 100,
        //     child: Container(
        //       decoration: BoxDecoration(
        //           color: Colors.blue[600],
        //           borderRadius: BorderRadius.only(
        //               bottomLeft: Radius.circular(20),
        //               bottomRight: Radius.circular(20))),
        //       child: Container(
        //         margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.start,
        //           crossAxisAlignment: CrossAxisAlignment.center,
        //           children: [
        //             Icon(
        //               Icons.navigate_before,
        //               size: 40,
        //               color: Colors.white,
        //             ),
        //             Text(
        //               "Eazy_Shop",
        //               style: TextStyle(fontSize: 20, color: Colors.white),
        //             ),
        //             Icon(
        //               Icons.navigate_before,
        //               color: Colors.transparent,
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        // bottomNavigationBar: CustomBottomNavigationBar(),
        /*   bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mood),
              label: '',
            ),
          ],
          selectedItemColor: Colors.amber[800],
          unselectedItemColor: Colors.blue,
        ),*/
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                fit: StackFit.loose,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0)),
                      color: Colors.blue,
                    ),
                    height: 100,
                    child: Row(
                      children: [
                        Container(
                            height: _height * .2,
                            width: _width * .6,
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    // fit: BoxFit.contain,
                                    image: new NetworkImage(
                                        "https://www.woolha.com/media/2019/06/buneary.jpg")))),
                        Text('UserName'),
                      ],
                    ),
                  ),
                  Container(
                    height: 500,
                    width: _width * .6,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        suffixIcon: Icon(Icons.search),
                        suffixIconConstraints: BoxConstraints(
                          minHeight: 32,
                          minWidth: 32,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
