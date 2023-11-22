import 'package:flutter/material.dart';




List<String> list1 = [
  'Hi',
  'Nghia',
  'Lio',
  'Phee'
];
List<String> list2 = [
  'Hi',
  'Nghia',
  'Lio',
  'Phee',
  'Hi',
  'Nghia',

];
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BodyPage()),
    );
  }
}

class BodyPage extends StatelessWidget {
  const BodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Head(),
          const SizedBox(height: 30,),
          Listbody(
            name1Text: 'Categories',
            name2Text: 'More...',
            numLength: list1.length,
          ),
          const SizedBox(height: 30,),
          Listbody(
            name1Text: 'News',
            name2Text: 'More...',
            numLength: list2.length,
          ),
        ],
      ),
    );
  }
}

class Head extends StatelessWidget {
  
  const Head({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
        Row(
          children: [
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ZendVN',
                    style: TextStyle(fontSize: 20, color: Colors.lightBlue),
                  ),
                  Text('Study Flutter',
                    style: TextStyle(fontSize: 26,),
                  )
                ],
              ),
            ),
            IconButton(
              onPressed: (){}, 
              icon:const Icon(Icons.menu, size: 40,)
            )
          ],
        ),
        const SizedBox(height: 30,),
        Container(
          decoration:const BoxDecoration(
            gradient: LinearGradient(colors:[
              Colors.white70,
              Colors.lightBlue
            ], 
              begin:Alignment.topCenter,
              end: Alignment.bottomCenter
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          height: size.height *1/6,
        ),
      ]),
    );
  }
}

class Listbody extends StatelessWidget {
  String name1Text;
  String name2Text;
  int numLength;
  Listbody({super.key, 
          required this.name1Text, 
          required this.name2Text,
          required this.numLength,
          });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(children: [
        Row(
          children: [
            Expanded(
              child: Text(name1Text,
                style:const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            TextButton(
              onPressed: (){}, 
              child:Text(name2Text, style:const TextStyle(fontSize: 18),)
            )
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            for(int i=0; i<numLength;i++)
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    decoration:const  BoxDecoration(
                      gradient: LinearGradient(colors:[
                        Colors.white70,
                        Colors.lightBlue
                      ], 
                        begin:Alignment.topCenter,
                        end: Alignment.bottomCenter
                       ),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    height: size.height *1/4,
                    width: size.width *1/2.8,
                  ),
                ),
                onTap: (){
                  
                },
              ),
          ],),
        )
      ]),
    );
  }
}