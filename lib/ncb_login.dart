import 'package:flutter/material.dart';
import 'clipPaths.dart';

class NcbLogin extends StatefulWidget {
  const NcbLogin({Key? key}) : super(key: key);

  @override
  State<NcbLogin> createState() => _NcbLoginState();
}

class _NcbLoginState extends State<NcbLogin> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _password_Hidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image(
            image: const AssetImage(
              'assets/ja60ncb.png',
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          //////// ELLIPSE IMAGE  ////////
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Image.asset('assets/ellipse.png'),
              ),
            ],
          ),
          //////// FOOTER LINKS ///////
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Activat Your Card  ',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    Column(
                      children: [
                        // Icon(Icons.currency_exchange_sharp, color: Colors.amber,),
                        Container(
                            decoration: BoxDecoration(
                                border: Border(
                              // top: BorderSide(color: Color(0xFFFFFFFF)),
                              left: BorderSide(color: Color(0xFFFFFFFF)),
                              right: BorderSide(color: Color(0xFFFFFFFF)),
                              // bottom: BorderSide(),
                            )),
                            child: Text(
                              '  Quick Send  ',
                              style: TextStyle(color: Colors.amberAccent, fontSize: 12),
                            )),
                      ],
                    ),
                    Text(
                      '  More...',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Transform.rotate(
              //   angle: 120,
              //   child: Container(
              //     margin: EdgeInsets.fromLTRB(100, 400, 0, 0),
              //     width: 55,
              //     height: 50,
              //     color: Colors.amber,
              //   ),
              // ),
              Center(
                child: Container(
                  width: 345,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white,
                            Color.fromRGBO(255, 255, 255, 0.95),
                          ])
                      // color: Color.fromRGBO(255, 255, 255, 0.91)
                      ),

                  ////////// SIGN IN FORM  ////////////////////
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Form(
                            key: _formKey,
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 5,),
                                TextField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(0),
                                    labelText: 'Username',
                                    labelStyle: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                //////  PASSWORD INPUT FIELD  ////////
                                TextField(
                                  obscureText: _password_Hidden,
                                  decoration: InputDecoration(
                                      // filled: true,
                                      // fillColor: Colors.white,
                                      contentPadding: EdgeInsets.all(0.0),
                                      labelText: 'Password',
                                      labelStyle: TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                      suffixIcon: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              _password_Hidden =
                                                  !_password_Hidden;
                                            });
                                          },
                                          icon: Icon(
                                            _password_Hidden
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                            color: Colors.grey[300],
                                          ))),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.check_box,
                                          color: Color(0xFF0A335A),
                                        ),
                                        Text(
                                          'Remember Me',
                                          style: TextStyle(
                                              color: Color(0xFF0A335A)),
                                        )
                                      ],
                                    ),
                                    Text(
                                      'Forgot Password?',
                                      style: TextStyle(
                                          color: Color(0xFF0A335A),
                                          decoration: TextDecoration.underline),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          Text('FINGERPRINT LOGIN'),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Icon(Icons.fingerprint)
                                        ],
                                      ),
                                      style: ButtonStyle(
                                          foregroundColor:
                                              MaterialStateProperty.all(
                                                  Color(0xFF0A335A)),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Color(0xFFFFDD23)),
                                          padding: MaterialStateProperty.all(
                                              EdgeInsets.fromLTRB(
                                                  20, 10, 20, 10)),
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            // side: BorderSide(color: Colors.red)
                                          ))),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text('SIGN UP'),
                                      style: ButtonStyle(
                                          padding: MaterialStateProperty.all(
                                              EdgeInsets.fromLTRB(
                                                  20, 10, 20, 10)),
                                          foregroundColor:
                                              MaterialStateProperty.all(
                                                  Color(0xFF30A7EF)),
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  side: BorderSide(
                                                      color:
                                                          Colors.lightBlue)))),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
