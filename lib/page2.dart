import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Page 2",
          style: TextStyle(fontFamily: 'Over There'),
        ),
      ),
      body: Row(          
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            FlatButton(
                //margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 50) ,
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                color: Colors.black54,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Row(
                  
                  children:const [
                    
                    Icon(Icons.arrow_back_ios, color: Colors.white,),
                     Text(
                      'Back',
                      style:TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ))
          ]),
    );
  }
}
