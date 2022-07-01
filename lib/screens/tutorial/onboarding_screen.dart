import 'package:flutter/material.dart';
class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(  child:Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(


          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height:50,
            ),
            Text("Bem- vindo(a)  á UniSpirit",style: TextStyle(
              color: Colors.black,
              fontSize: 27,
              fontWeight: FontWeight.w700,
            ),),
            Text("App UniSpirit",style:TextStyle(
              color: Colors.black,fontSize: 27,fontWeight: FontWeight.w700
            )),
            SizedBox(
              height: 50,
            ),
           Padding(
             padding: EdgeInsets.only(left: 15,right: 15),
             child:  Image.asset('assets/images/universitario.png'),),

            Expanded(child: Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                  boxShadow: [BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    spreadRadius: 2
                  )],
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),topLeft: Radius.circular(16)
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 Padding(
                     padding: EdgeInsets.only(left: 15,right: 15),
                     child:
                 Text("a primeira rede social exclusiva para estudantes do ensino superior",
                   textAlign: TextAlign.center,
                   style: TextStyle(
                       fontSize: 20,
                       fontWeight: FontWeight.w600
                   ),)),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 15,right: 15),
                      child:
                      Text("a primeira rede social exclusiva para estudantes do ensino superior",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                        ),)),

                Padding(padding: EdgeInsets.only(
                  left: 15,
                  right:15,



                ),
                child:   MaterialButton(
                  minWidth: double.infinity,
                  color: Colors.white,
                  elevation: 2,
                  onPressed: (){},child: Text("Continuar",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff274560),
                      fontWeight: FontWeight.w500
                  ),),
                )),
                ],
              ),
            ))


          ],
        ),
      ),
      
      
      
      
      
      
    ));
  }
}
