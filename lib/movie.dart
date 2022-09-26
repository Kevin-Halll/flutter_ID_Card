import 'package:flutter/material.dart';

class Movie extends StatelessWidget {
  const Movie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Icon(Icons.menu),
        backgroundColor: const Color(0xFF03172F),
        elevation: 0.0,
      ),
      backgroundColor: const Color(0xFF311D54),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 600.0,
            child: Expanded(
                child: Image.network(
              'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTv0xykcftQCSo8e6O-0jnKKWv-MbcMqv31CXlf5b3leZ-H0Foy',
              fit: BoxFit.cover,
            )),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.amberAccent,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amberAccent,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amberAccent,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amberAccent,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amberAccent,
                    ),
                  ],
                ),
                Row(
                  children: const <Widget>[
                    Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'SHARE',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: <Widget>[
              const Text(
                'The Man From Toronto',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: Text(
                  "The world's deadliest assassin and New York's biggest screw-up are mistaken for each other at an Airbnb rental.",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.normal),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: const [
                        Icon(
                          Icons.arrow_back_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Back',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    ElevatedButton(onPressed: (){
                      String name = 'Kevin';
                      print(name);
                    },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.deepPurple)
                        ),
                        child: Row(
                      children: const [
                        Icon(Icons.edit, color: Colors.white, size: 15,),
                        SizedBox(width: 5,),
                        Text('Edit', style: TextStyle(color: Colors.white),)
                      ],
                    ))
                    // ElevatedButton(
                    //   onPressed: null,
                    //   child: TextButton(
                    //     style: ButtonStyle(
                    //         foregroundColor:
                    //         MaterialStateProperty.all<Color>(Colors.blue),
                    //         backgroundColor:
                    //         MaterialStateProperty.all(Colors.amberAccent)),
                    //     onPressed: () {},
                    //     child: Row(
                    //       children: [
                    //         Icon(Icons.edit, size: 15,),
                    //         Text('Edit', style: TextStyle(color: Colors.white),)
                    //       ],
                    //     ),
                    //   ),
                    // ),


                    // const ElevatedButton(onPressed: null, child: Text('edit'))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
