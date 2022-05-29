import 'package:flutter/material.dart';
import 'Button.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var screenController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenHeight = screenInfo.size.height;
    final double screenWidth = screenInfo.size.width;

    String totalValue = "0";
    String tempNumber = "0";
    return Scaffold(
      appBar: AppBar(title: const Text("Hesap Makinesi"),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 100.0,top: 50),
          child: Column(
            children: [
              SizedBox(
                height: screenHeight/3,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(totalValue,textAlign: TextAlign.end,style: const TextStyle(fontSize: 50),)
                    ],
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(onTap: (String value){
                    print(value);
                  }, text: "AC",buttonColor: Colors.grey,buttonWidth: 1.0,),
                  CustomButton(onTap: (String value){
                    print(value);
                  }, text: "+/-",buttonColor: Colors.grey,buttonWidth: 1.0,),
                  CustomButton(onTap: (String value){
                    print(value);
                  }, text: "%",buttonColor: Colors.grey,buttonWidth: 1.0,),
                  CustomButton(onTap: (String value){
                    print(value);
                  }, text: "/",buttonColor: Colors.orange,buttonWidth: 1.0,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(onTap: (String value){
                    print(value);
                  }, text: "7",buttonColor: Colors.black12,buttonWidth: 1.0,),
                  CustomButton(onTap: (String value){
                    print(value);
                  }, text: "8",buttonColor: Colors.black12,buttonWidth: 1.0,),
                  CustomButton(onTap: (String value){
                    print(value);
                  }, text: "9",buttonColor: Colors.black12,buttonWidth: 1.0,),
                  CustomButton(onTap: (String value){
                    print(value);
                  }, text: "x",buttonColor: Colors.orange,buttonWidth: 1.0,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(onTap: (String value){
                    print(value);
                  }, text: "4",buttonColor: Colors.black12,buttonWidth: 1.0,),
                  CustomButton(onTap: (String value){
                    print(value);
                  }, text: "5",buttonColor: Colors.black12,buttonWidth: 1.0,),
                  CustomButton(onTap: (String value){
                    print(value);
                  }, text: "6",buttonColor: Colors.black12,buttonWidth: 1.0,),
                  CustomButton(onTap: (String value){
                    print(value);
                  }, text: "-",buttonColor: Colors.orange,buttonWidth: 1.0,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(onTap: (String value){
                    print(value);
                  }, text: "1",buttonColor: Colors.black12,buttonWidth: 1.0,),
                  CustomButton(onTap: (String value){
                    print(value);
                  }, text: "2",buttonColor: Colors.black12,buttonWidth: 1.0,),
                  CustomButton(onTap: (String value){
                    print(value);
                  }, text: "3",buttonColor: Colors.black12,buttonWidth: 1.0,),
                  CustomButton(onTap: (String value){
                    print(value);
                  }, text: "+",buttonColor: Colors.orange,buttonWidth: 1.0,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(onTap: (String value){
                    print(value);
                  }, text: "0",buttonColor: Colors.black12,buttonWidth: 2.4,),
                  CustomButton(onTap: (String value){
                    print(value);
                  }, text: ",",buttonColor: Colors.black12,buttonWidth: 1.0,),
                  CustomButton(onTap: (String value){
                    print(value);
                  }, text: "=",buttonColor: Colors.black12,buttonWidth: 1.0,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
