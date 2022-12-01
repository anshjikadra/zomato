import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zomato/model.dart';

class homepage extends StatelessWidget {


  final model m = Get.put(model());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Zomato",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red,
      ),
      body:Column(
        children: [
          ListView.separated(
            shrinkWrap: true,
            itemCount: m.menu.length,
            separatorBuilder: (context, index) => Divider(),
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("${m.menu[index]}\n${m.price[index]}"),
                  Checkbox(
                    value: m.check[index],
                    onChanged: (value) {
                      m.check[index]= value!;
                      print(m.check);
                    },
                  ),

                ],
              );
            },
          ),
          SizedBox(height: 20,),
          Text("Total=${m.sum}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

        ],
      )
    );
  }
}
