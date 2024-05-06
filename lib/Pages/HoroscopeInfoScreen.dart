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

import 'FortuneScreen.dart';

RxInt _selectedIndex = 0.obs;

Future<Iterable<HoroscopeInfo>> getHoroscopeInfo(
    HoroscopeSign horoscopeSign) async {
  Iterable<HoroscopeInfo> horoscopeInfos =
      await HoroscopeController.to.getHoroscopeInfo(horoscopeSign);
  return horoscopeInfos;
}

class HoroscopeInfoScreen extends StatelessWidget {
  HoroscopeSign horoscopeSign;
  HoroscopeInfoScreen({super.key, required this.horoscopeSign});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilderExample(horoscopeSign: horoscopeSign),
    );
  }
}

class FutureBuilderExample extends StatefulWidget {
  HoroscopeSign horoscopeSign;
  FutureBuilderExample({super.key, required this.horoscopeSign});

  @override
  State<FutureBuilderExample> createState() =>
      _FutureBuilderExampleState(horoscopeSign: horoscopeSign);
}

class _FutureBuilderExampleState extends State<FutureBuilderExample> {
  HoroscopeSign horoscopeSign;
  _FutureBuilderExampleState({required this.horoscopeSign});
  late Future<Iterable<HoroscopeInfo>> _calculation =
      getHoroscopeInfo(horoscopeSign);

  @override
  void initState() {
    super.initState();
    _calculation = getHoroscopeInfo(horoscopeSign);
    // Prevent default event handler
    document.onContextMenu.listen((event) => event.preventDefault());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(backgroundColor: context.theme.scaffoldBackgroundColor),
      body: Center(
        child: FutureBuilder<Iterable<HoroscopeInfo>>(
          future: _calculation, // a previously-obtained Future<String> or null
          initialData: <HoroscopeInfo>[],
          builder: (BuildContext context,
              AsyncSnapshot<Iterable<HoroscopeInfo>> snapshot) {
            List<Widget> children;
            Container container;
            if (snapshot.data!.isNotEmpty && snapshot.hasData) {
              return Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 10, right: 10),
                      child: Responsive.isDesktop(context)? Row(
                        children: [  Expanded(flex:60, child: 
                        HoroscopeInfoText(snapshot:snapshot.data!)),
                        
                        Expanded(
                          flex: 40,
                          child: Padding(
                              padding: const EdgeInsets.only(left: 40, right: 40),
                              child: Image.asset(
                                'assets/horoscopeInfo/' +
                                HoroscopeSign
                                    .values[
                                        snapshot.data!.first.horoscopeSign!]
                                    .name +
                                '.png',
                              ),
                            ),
                        )
                         
                        ],
                      ):Column(
                        children: [  Padding(
                            padding: const EdgeInsets.only(left: 40, right: 40),
                            child: Container(
                                child: Image.asset(
                              'assets/horoscopeInfo/' +
                                  HoroscopeSign
                                      .values[
                                          snapshot.data!.first.horoscopeSign!]
                                      .name +
                                  '.png',
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:10,bottom: 40.0,left: 20, right: 20),
                            child: HoroscopeInfoText(snapshot:snapshot.data!),
                          ),
                        ],
                      )
                    ),
                  ),
                ),
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
            } else {
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


