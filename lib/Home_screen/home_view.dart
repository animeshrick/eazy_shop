import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            //fit: StackFit.loose,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                color: Colors.white,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                color: Colors.blue,
              ),
              _appBar(context),
              _headerSection(context),
              _textWidgetBox(context)
            ],
          ),
          ListContainerWidget(),
          ListContainerWidget()
        ],
      ),
    ));
  }

  Positioned _textWidgetBox(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.25,
      child: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 40.0),
          padding: const EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 2.0,
                    spreadRadius: 2.0)
              ]),
          child: TextFormField(
            decoration: InputDecoration(
                focusColor: Colors.grey.shade300,
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.list)),
          ),
        ),
      ),
    );
  }

  Positioned _headerSection(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.12,
      child: Container(
        width: MediaQuery.of(context).size.width * .70,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0)),
        ),
        height: MediaQuery.of(context).size.height * 0.09,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 55.0,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("assets/profile.jpg"),
              ),
            ),
            Expanded(
                child: Column(
              children: [
                Text(
                  'UserName',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }

  Positioned _appBar(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.05,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.arrow_back_ios, color: Colors.white, size: 16.0),
            Text(
              "Eazy Shop",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            Icon(
              Icons.notification_important,
              color: Colors.white,
              size: 16.0,
            ),
          ],
        ),
      ),
    );
  }
}

class ListContainerWidget extends StatelessWidget {
  const ListContainerWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.30,
      //margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                "Recommended",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              Icon(Icons.filter)
            ]),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              child: ListView.builder(
                itemBuilder: (context, int index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 5.0),
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/chair.jpg",
                            fit: BoxFit.contain,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade300,
                                    blurRadius: 2.0,
                                    spreadRadius: 4.0)
                              ]),
                          padding: const EdgeInsets.all(10.0),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Center(
                            child: Text(
                          "Text",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16.0),
                        ))
                      ],
                    ),
                  );
                },
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
