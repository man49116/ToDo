import 'package:flutter/material.dart';
import 'package:td_app/constains/color.dart';

class Home  extends StatelessWidget {
  const Home ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: buildAppBar(),
      body: Container(
        child: Container(
          child: Column(
            children: [
              searchBox()
            ],
          ),
        ),
      ),
    );
  }

  Widget searchBox() {
    return Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                    prefixIcon: Icon(
                      Icons.search,
                      color: tdBlack,
                      size: 20,
                    ),
                  prefixIconConstraints: BoxConstraints(
                    maxHeight: 10,
                    minWidth: 25
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: tdGrey)
                ),
              ),
            );
  }

  AppBar buildAppBar() {
    return AppBar(
    backgroundColor: tdGrey
    ,title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.menu, color: tdBlack,),
        Container(
          height: 40,
          width: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset('/jpg/img.png'),
          ),
        )
      ],
    )
    );
  }
}
