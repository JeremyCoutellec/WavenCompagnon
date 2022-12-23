import 'package:flutter/material.dart';
import 'package:filter_list/filter_list.dart';
import 'package:waven_compagnon/stuff/caract_model.dart';

import '../stuff_model.dart';
import 'stuff_show.dart';

class StuffCardList extends StatefulWidget {
  final List<WavenStuff> stuffs;

  StuffCardList({super.key, required this.stuffs});

  @override
  State<StuffCardList> createState() => _StuffCardListState();
}

class _StuffCardListState extends State<StuffCardList> {
  List<CaractType> typeStuffSelected = [];
  List<WavenStuff> filteredStuffs = [];

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;

    void openFilterDialog() async {
      var caractTypes = WavenCaract.getSortedTypes();
      await FilterListDialog.display<CaractType>(
        context,
        hideSearchField: true,
        hideCloseIcon: true,
        hideSelectedTextCount: true,
        hideHeader: true,
        applyButtonText: 'Filtrer',
        resetButtonText: 'Aucun',
        allButtonText: 'Tous',
        listData: caractTypes,
        selectedListData: typeStuffSelected,
        controlButtons: [],
        choiceChipBuilder: (context, item, isSelected) {
          String? label = WavenCaract.getStringOfType(item);
          Color color = Colors.grey[200]!;
          Color colorText = Colors.black;

          if (isSelected is bool && isSelected) {
            color = Theme.of(context).primaryColor;
            colorText = Colors.white;
          }

          return Padding(
              padding: const EdgeInsets.only(right: 4, left: 4),
              child: Chip(
                backgroundColor: color,
                label: Text(
                  label,
                  style: TextStyle(color: colorText),
                ),
              ));
        },
        choiceChipLabel: (object) {
          return WavenCaract.getStringOfType(object);
        },
        validateSelectedItem: (list, val) => list!.contains(val),
        onItemSearch: (object, query) {
          String? search = WavenCaract.getStringOfType(object);
          if (search is String) {
            return search.toLowerCase().contains(query.toLowerCase());
          }
          return false;
        },
        onApplyButtonClick: (list) {
          setState(() {
            typeStuffSelected = List.from(list!);
            if (typeStuffSelected.isEmpty) {
              filteredStuffs = widget.stuffs;
            } else {
              filteredStuffs = widget.stuffs.where((stuff) {
                bool findCaract = false;
                for (var element in list) {
                  var result = stuff.caracts.where((caract) =>
                      WavenCaract.getTypeOfCaract(caract.caract) == element);
                  if (result.isNotEmpty) {
                    findCaract = true;
                  }
                }
                return findCaract;
              }).toList();
            }
          });
          Navigator.pop(context);
        },
      );
    }

    filteredStuffs = typeStuffSelected.isEmpty ? widget.stuffs : filteredStuffs;
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: openFilterDialog,
          child: const Icon(Icons.filter_list),
        ),
        body: (filteredStuffs.isEmpty)
            ? Center(
                child: Text('Aucun stuff ne correspond à ces filtres',
                    style: TextStyle(color: Theme.of(context).primaryColor)))
            : GridView.builder(
                padding: const EdgeInsets.only(left: 20, right: 20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        orientation == Orientation.landscape ? 6 : 3),
                itemBuilder: (context, index) => InkWell(
                    onTap: () => showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return SimpleDialog(
                              title: Text(filteredStuffs[index].name),
                              children: [
                                StuffShow(stuff: filteredStuffs[index])
                              ]);
                        }),
                    child: Card(
                        elevation: 4.0,
                        child: Column(children: <Widget>[
                          SizedBox(
                            height: 77.0,
                            child: Ink.image(
                              image:
                                  AssetImage(filteredStuffs[index].icon ?? ''),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child: Text(filteredStuffs[index].name,
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                textAlign: TextAlign.center),
                          ),
                        ]))),
                itemCount: filteredStuffs.length));
  }
}
