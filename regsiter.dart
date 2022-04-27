import 'package:flutter/material.dart';

class MyRagister extends StatefulWidget {
  const MyRagister({ Key? key }) : super(key: key);

  @override
  State<MyRagister> createState() => _MyRagisterState();
}

class _MyRagisterState extends State<MyRagister> {
  @override
  Widget build(BuildContext context) {
     return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
         image: AssetImage('assets/register.png'),
         fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: 35, top:  30
              ),
              child: Text(
                'Create\nAccount' ,
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 33,
                   ),
                   ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.28, right: 35, left: 35,),
                child: Column(
                  children: [

                    TextField(
                      decoration: InputDecoration( 
                        hintText: 'Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                     TextField(
                      decoration: InputDecoration( 
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                     TextField(
                       obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Pasword',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.white,
                          fontSize: 27,
                          fontWeight: FontWeight.w700,
                        ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: IconButton(
                            color: Colors.white,
                            onPressed: ( ) {},
                            icon: Icon(Icons.arrow_forward),
                           ),
                        )
                      ],
                    ),
                     SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'register');
                          },
                         child: Text('Sign Up', 
                         style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                        ),
                        ),
                         TextButton(onPressed: () {}, child: Text('Forgot Password', style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                        ),
                        ),
                      ],
                    )
                  ]
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
      
    
  
