import 'package:flutter/material.dart';
import 'package:fortuneteller/Models/Enums/FortuneType.dart';
import 'package:fortuneteller/Models/TellerInfos.dart';
import 'package:fortuneteller/controllers/FortuneController.dart';
import 'package:fortuneteller/res/constants.dart';
import 'package:fortuneteller/widgets/NavDrawer.dart';
import 'package:fortuneteller/Pages/NavigationScreen.dart';
import 'package:fortuneteller/widgets/TellerInfoCard.dart';
import 'package:fortuneteller/widgets/rounded_button.dart';
import 'package:get/get.dart';



import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fortuneteller/Models/Enums/HoroscopeSign.dart';
import 'package:fortuneteller/Models/HoroscopeInfo.dart';
import 'package:fortuneteller/controllers/HoroscopeController.dart';
import 'package:fortuneteller/res/constants.dart';
import 'package:fortuneteller/view%20model/responsive.dart';
import 'package:fortuneteller/widgets/HoroscopeInfoText.dart';
import 'package:fortuneteller/widgets/NavDrawer.dart';
import 'package:fortuneteller/Pages/NavigationScreen.dart';
import 'package:get/get.dart';


RxBool error = false.obs;

Future<Iterable<TellerInfo>> getFortuneTellerInfos(
    FortuneType fortuneType) async {
  Iterable<TellerInfo> horoscopeInfos =
      await FortuneController.to.getFortuneTellerInfos(fortuneType);
      if(horoscopeInfos.isEmpty){
        error.value=true;
      }
  return horoscopeInfos;
}

class SelectingTellerScreen extends StatelessWidget {
  FortuneType fortuneType;
  SelectingTellerScreen({super.key, required this.fortuneType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilderExample(fortuneType: fortuneType),
    );
  }
}

class FutureBuilderExample extends StatefulWidget {
  FortuneType fortuneType;
  FutureBuilderExample({super.key, required this.fortuneType});

  @override
  State<FutureBuilderExample> createState() =>
      _FutureBuilderExampleState(fortuneType: fortuneType);
}

class _FutureBuilderExampleState extends State<FutureBuilderExample> {
  FortuneType fortuneType;
  _FutureBuilderExampleState({required this.fortuneType});
  late Future<Iterable<TellerInfo>> _calculation =
      getFortuneTellerInfos(fortuneType);

  @override
  void initState() {
    super.initState();
    _calculation = getFortuneTellerInfos(fortuneType);
    // Prevent default event handler
    document.onContextMenu.listen((event) => event.preventDefault());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(backgroundColor: context.theme.scaffoldBackgroundColor),
      body: Center(
        child: FutureBuilder<Iterable<TellerInfo>>(
          future: _calculation, // a previously-obtained Future<String> or null
          initialData: <TellerInfo>[],
          builder: (BuildContext context,
              AsyncSnapshot<Iterable<TellerInfo>> snapshot) {
            List<Widget> children;
            Container container;
            if (snapshot.data!.isNotEmpty && snapshot.hasError) {
              return Column(
                children: [
                  Container(child: const Text("Fal Bakanlar"),),
                  Center(
                    child:  ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
        return  TellerInfoCard(tellerInfo: snapshot.data!.elementAt(0),fortuneType: fortuneType,)  ;
        }),
                  ),
                ],
              );
            } else if (snapshot.hasError) {
              container = Container(
                child: Column(children: <Widget>[
                  const Icon(
                    Icons.error_outline,
                    color: Colors.red,
                    size: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text('Error: ${snapshot.error}'),
                  ),
                ]),
              );
            } else if(error.value) {
              container = Container(
                child: EmptyTeller()
              );
            }
            else {
              container = Container(
                child: Column(
                  children: const <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: CircularProgressIndicator(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text('Awaiting result...'),
                    ),
                  ],
                ),
              );
            }
            return Center(child: container);
          },
        ),
      ),
    );
  }
}

class EmptyTeller extends StatelessWidget {
  const EmptyTeller({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: const Text('Kimseyi Bulamadık'),
        content:  SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Şuan bu kategoride bakan bir falcı bulamadık. "Tamam"a basarak geri gidebilirsin.'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Tamam'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
  }
}


