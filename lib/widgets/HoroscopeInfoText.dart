import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fortuneteller/Models/Enums/HoroscopeSign.dart';
import 'package:fortuneteller/Models/HoroscopeInfo.dart';

class HoroscopeInfoText extends StatelessWidget {
  HoroscopeInfoText({Key? key, required this.snapshot}) : super(key: key);
  Iterable<HoroscopeInfo> snapshot;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(              snapshot
                  .firstWhere(
                      (element) => element.messageHeader == "Burç Adı")
                  .messageBody!,
        style: Theme.of(context).textTheme.headlineLarge,),
        Row(
          children: [
            Text(
              "Yönetici Gezegeni : ",
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              snapshot
                  .firstWhere(
                      (element) => element.messageHeader == "Yönetici Gezegeni")
                  .messageBody!,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "Elementi : ",
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              snapshot
                  .firstWhere((element) => element.messageHeader == "Elementi")
                  .messageBody!,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
         Row(
          children: [
            Text(
              "Renk : ",
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              snapshot
                  .firstWhere((element) => element.messageHeader == "Renk")
                  .messageBody!,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "Uğurlu Günü : ",
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              snapshot
                  .firstWhere(
                      (element) => element.messageHeader == "Uğurlu Günü")
                  .messageBody!,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "Anlaştığı Burçlar : ",
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              snapshot
                  .firstWhere(
                      (element) => element.messageHeader == "Anlaştığı Burçlar")
                  .messageBody!,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "Anlaşamadığı Burçlar : ",
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              snapshot
                  .firstWhere((element) =>
                      element.messageHeader == "Anlaşamadığı Burçlar")
                  .messageBody!,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 10),
              child: Text(
                "Olumlu Yönleri",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Text(
              snapshot
                  .firstWhere(
                      (element) => element.messageHeader == "Olumlu Yönleri")
                  .messageBody!,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 10),
              child: Text(
                "Olumsuz Yönleri",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Text(
              snapshot
                  .firstWhere(
                      (element) => element.messageHeader == "Olumsuz Yönleri")
                  .messageBody!,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 10),
              child: Text(
                snapshot
                    .firstWhere((element) =>
                        element.messageHeader!.contains("Kadın Özellikleri"))
                    .messageHeader!,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Text(
              snapshot
                  .firstWhere((element) =>
                      element.messageHeader!.contains("Kadın Özellikleri"))
                  .messageBody!,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 10),
              child: Text(
                snapshot
                    .firstWhere((element) =>
                        element.messageHeader!.contains("Erkeği Özellikleri"))
                    .messageHeader!,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Text(
              snapshot
                  .firstWhere((element) =>
                      element.messageHeader!.contains("Erkeği Özellikleri"))
                  .messageBody!,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ],
    );
  }
}
