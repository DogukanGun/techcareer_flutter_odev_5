import 'package:flutter/material.dart';
import 'Button.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var screenController = TextEditingController();
  String totalValue = "0";
  String tempNumber = "0";
  String printedNumber = "0";
  bool isInt = true;
  bool isMathButtonClicked = false;
  int mathStatus = 0;


  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenHeight = screenInfo.size.height;
    final double screenWidth = screenInfo.size.width;

    void addition(){
      if(isInt){
        totalValue = (int.parse(tempNumber) + int.parse(totalValue)).toString();
      }else{
        totalValue = (double.parse(tempNumber) + double.parse(totalValue)).toString();
      }
      print("total = ${totalValue}");
    }

    void multiplication(){
      if(tempNumber != "0") {
        if(isInt){
          print("int geldi");
          totalValue = (int.parse(tempNumber) * int.parse(totalValue)).toString();
        }else{
          print("double geldi");
          totalValue = (double.parse(tempNumber) * double.parse(totalValue)).toString();
        }
      }
    }

    void substruction(){
      if(isInt){
        totalValue = (int.parse(totalValue) - int.parse(tempNumber)).toString();
      }else{
        totalValue = (double.parse(totalValue) - double.parse(tempNumber)).toString();
      }
    }

    void division(){
      if(tempNumber != "0"){
        if(isInt){
          totalValue = (int.parse(totalValue) / int.parse(tempNumber)).toString();
          if(totalValue.contains(".")){
            isInt = false;
            if(totalValue.length > 4){
              totalValue = totalValue.substring(0,4);
            }
          }
        }else{
          totalValue = (double.parse(totalValue) / double.parse(tempNumber)).toString();
        }
      }
    }

    void makeMathOperation(){
      switch(mathStatus){
        case 1:
          addition();
          break;
        case 2:
          substruction();
          break;
        case 3:
          division();
          break;
        case 4:
          multiplication();
          break;
      }
      tempNumber = "0";
    }

    void startMath(int operationType){
      isMathButtonClicked = true;
      mathStatus = operationType;
      if(totalValue == "0"){
        totalValue = tempNumber;
        printedNumber = tempNumber;
      }else{
        makeMathOperation();
        printedNumber = totalValue;
      }
    }

    void equalMath(){
      startMath(mathStatus);
      printedNumber = totalValue;
    }

    void clear(){
      tempNumber = "0";
      totalValue = "0";
      printedNumber = "0";
    }

    void addNumber(String number){
      if(isMathButtonClicked){
        tempNumber = "0";
        isMathButtonClicked = false;
      }
      if(tempNumber == "0"){
        tempNumber = number;
      }else{
        tempNumber += number;
      }
      printedNumber = tempNumber;
    }

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
                      Text(printedNumber,textAlign: TextAlign.end,style: const TextStyle(fontSize: 50),)
                    ],
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(onTap: (String value){
                    setState((){clear();});
                  }, text: "AC",buttonColor: Colors.grey,buttonWidth: 1.0,),
                  CustomButton(onTap: (String value){
                    print(value);
                  }, text: "+/-",buttonColor: Colors.grey,buttonWidth: 1.0,),
                  CustomButton(onTap: (String value){
                    print(value);
                  }, text: "%",buttonColor: Colors.grey,buttonWidth: 1.0,),
                  CustomButton(onTap: (String value){
                    setState((){startMath(3);});
                  }, text: "/",buttonColor: Colors.orange,buttonWidth: 1.0,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(onTap: (String value){
                    setState((){addNumber("7");});
                  }, text: "7",buttonColor: Colors.black12,buttonWidth: 1.0,),
                  CustomButton(onTap: (String value){
                    setState((){addNumber("8");});
                  }, text: "8",buttonColor: Colors.black12,buttonWidth: 1.0,),
                  CustomButton(onTap: (String value){
                    setState((){addNumber("9");});
                  }, text: "9",buttonColor: Colors.black12,buttonWidth: 1.0,),
                  CustomButton(onTap: (String value){
                    setState((){startMath(4);});
                  }, text: "x",buttonColor: Colors.orange,buttonWidth: 1.0,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(onTap: (String value){
                    setState((){addNumber("4");});
                  }, text: "4",buttonColor: Colors.black12,buttonWidth: 1.0,),
                  CustomButton(onTap: (String value){
                    setState((){addNumber("5");});
                  }, text: "5",buttonColor: Colors.black12,buttonWidth: 1.0,),
                  CustomButton(onTap: (String value){
                    setState((){addNumber("6");});
                  }, text: "6",buttonColor: Colors.black12,buttonWidth: 1.0,),
                  CustomButton(onTap: (String value){
                    setState((){startMath(2);});
                  }, text: "-",buttonColor: Colors.orange,buttonWidth: 1.0,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(onTap: (String value){
                    setState((){addNumber("1");});
                  }, text: "1",buttonColor: Colors.black12,buttonWidth: 1.0,),
                  CustomButton(onTap: (String value){
                    setState((){addNumber("2");});
                  }, text: "2",buttonColor: Colors.black12,buttonWidth: 1.0,),
                  CustomButton(onTap: (String value){
                    setState((){addNumber("3");});
                  }, text: "3",buttonColor: Colors.black12,buttonWidth: 1.0,),
                  CustomButton(onTap: (String value){
                    setState((){startMath(1);});
                  }, text: "+",buttonColor: Colors.orange,buttonWidth: 1.0,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(onTap: (String value){
                    setState((){addNumber("0");});
                  }, text: "0",buttonColor: Colors.black12,buttonWidth: 2.4,),
                  CustomButton(onTap: (String value){
                    setState((){isInt = false;});
                  }, text: ",",buttonColor: Colors.black12,buttonWidth: 1.0,),
                  CustomButton(onTap: (String value){
                    setState((){equalMath();});
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
