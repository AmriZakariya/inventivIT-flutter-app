import 'package:flutter/material.dart';
import 'package:flutter_app/starting_page/model/ItemModel.dart';
import 'package:flutter_app/starting_page/widget/ItemUIWidget.dart';

class StartingPageMobile extends StatelessWidget {
  const StartingPageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  getListWidgetMobile(),
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
          );
        },
      ),
    );
  }
}

Column getListWidgetMobile() {
  List<Widget> list = <Widget>[];
  int listSize = listUiDemo.length;
  for (var index = 0; index < listSize; index++) {
    list.add(ItemUIWidget(listUiDemo[index]));
  }
  return Column(
    children: list,
  );
}
