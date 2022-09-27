import 'package:flutter/material.dart';

class NcbLogin extends StatefulWidget {
  const NcbLogin({Key? key}) : super(key: key);

  @override
  State<NcbLogin> createState() => _NcbLoginState();
}

class _NcbLoginState extends State<NcbLogin> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: Container(
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Form(
                            key: _formKey,
                            child: Column(
                              children: <Widget>[
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Username',
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    // icon: Icon(Icons.remove_red_eye)
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
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
                                        foregroundColor: MaterialStateProperty.all(Color(0xFF30A7EF)),
                                        shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30),
                                            side: BorderSide(color: Colors.lightBlue)
                                          )
                                        )
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50,),
            ],
          ),
        ],
      ),
    );
  }
}
