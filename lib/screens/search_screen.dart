import 'package:flutter/material.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9DA99),
      body: ListView(
        children:[
          Column(
          children: [
            SizedBox(
              height:50,
            ),
            Text('Search',style: TextStyle(fontSize: 30,color: Color(0xff3E9199)),),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(

                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xff76ABA4),
                  border: InputBorder.none,



                  hintText: "Search Here..",
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(
                    Icons.search,
                    color:  Colors.white,
                    size: 23,
                  ),
                  suffixIcon: Icon(
                    Icons.close,
                    color:  Colors.white,
                    size: 23,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    borderSide: BorderSide(width: 1, color: Color(0xff76ABA4)),
                  ),
                ),
              ),
            ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 700,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff76ABA4),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30)),
          ),
          child: Column(
            children: [
              SizedBox(
              height: 40,
          ),
              Image.asset('images/search.png',height: 360,width: 360,),

              SizedBox(
                height: 50,
              ),
                    Text('No results yet',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xffF9DA99))),
              SizedBox(
                height: 8,
              ),
              Text('use search , to find results',style: TextStyle(fontSize: 18,color: Color(0xffF9DA99),
              decoration: TextDecoration.underline
              )
              ),
            ],
          )
        )

          ],

        ),
    ]
      ),
    );
  }
}
