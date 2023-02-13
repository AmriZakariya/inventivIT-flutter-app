

import 'package:flutter/material.dart';
import 'package:flutter_app/starting_page/model/ItemModel.dart';
import 'package:flutter_app/starting_page/widget/ItemUIWidget.dart';

class StartingPagePC extends StatelessWidget {
  const StartingPagePC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/pc_ui_cleanup.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(flex: 1, child: UiLeftPC()),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.only(left: 90, right: 90),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Text("Votre ShynleI c'est.. ",
                                style:
                                TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "7 Mapes, 2 fiches pour prendre note des rencont res, 1 page pour eclairer le sens, 3 interpretations pour vous alder.. ",
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            getListWidgetPC(),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: TextButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.green),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Expirmer mes reves'.toUpperCase(),
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}


class UiLeftPC extends StatelessWidget {
  const UiLeftPC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 120),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(width: 120,image: AssetImage('images/Image 2.png',)),
          SizedBox(
            height: 80,
          ),
          Text("Pour commencer... ",
              style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18)),
          SizedBox(height: 10,),
          Text(            "Faire votre Shynleï, jouer avec, c'est l'occasion \n"
              "d'écouter vos rêves, de les partager et de prendre \n"
              " confiance dans votre richesse."
              ,
              style:
              TextStyle(color: Colors.white, fontSize: 14,
                  height: 1.5 //You can set your custom height here
              )),
          SizedBox(height: 35,),
          Text("Nom et prénom ",
              style:
              TextStyle(color: Colors.white, fontSize: 16)),
          SizedBox(height: 12,),
          Text("Jeal ",
              style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16)),
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 50, right: 120, bottom: 50),
            height: 2,
            width: double.infinity,
          ),
          Text("Mon intention : ",
              style:
              TextStyle(color: Colors.white, fontSize: 18)),
          SizedBox(height: 12,),
          Text("L'intention, l'objectif de ce Shynlei",
              style:
              TextStyle(color: Colors.white)),
          SizedBox(height: 18,),

          Text("Mon rel ",
              style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18)),
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 25, right: 120, bottom: 25),
            height: 2,
            width: double.infinity,
          ),
        ],
      ),
    );

  }
}


Column getListWidgetPC() {
  List<Widget> list = <Widget>[];
  int listSize = listUiDemo.length;
  for (var index = 0; index < listSize; index += 2) {
    list.add(Row(
      children: [
        ItemUIWidget(listUiDemo[index]),
        if ((index + 2) < listSize) ItemUIWidget(listUiDemo[index + 1]),
      ],
    ));
  }
  return Column(
    children: list,
  );
}
