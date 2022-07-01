import 'package:flutter/material.dart';




class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[

        Container(
          padding: EdgeInsets.only(

          ),
          height: size.height * 0.3
          ,
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height*0.3 -15,
                decoration: BoxDecoration(color: Colors.purple,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(

                    children: <Widget>[
                      Text(
                      'Explorar',style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
              // Image.asset('assets/images/logo5.png'),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(offset: Offset(0,10),
                          blurRadius: 50,
                          color:Colors.purple.withOpacity(0.23)

                      ),

                    ],
                  ),

                    child: Row(
                      children: <Widget>[
                        Expanded(child: TextField(
                          onChanged: (value){},
                            decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle: TextStyle(
                                color: Colors.purple.withOpacity(0.5),
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              //suffixIcon: ImageIcon( AssetImage('assets/images/icon_explore.png'))
                            ),
                        ),
                        ),
                        ImageIcon( AssetImage('assets/images/icon_explore.png'),)

                      ],

                    )
                ),




              )
            ],
          ),
        )
      ],



    );
  }
}





