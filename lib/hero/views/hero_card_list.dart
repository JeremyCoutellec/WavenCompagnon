import 'package:flutter/material.dart';
import 'package:filter_list/filter_list.dart';

import '../hero_model.dart';
import 'hero_show.dart';

class HeroCardList extends StatefulWidget {
  final List<WavenHero> heros;

  HeroCardList({super.key, required this.heros});

  @override
  State<HeroCardList> createState() => _HeroCardListState();
}

class _HeroCardListState extends State<HeroCardList> {
  List<ClassHero> classHeroesSelected = [];
  List<WavenHero> filteredHeros = [];

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;

    void openFilterDialog() async {
      await FilterListDialog.display<ClassHero>(
        context,
        hideSearchField: true,
        hideCloseIcon: true,
        hideSelectedTextCount: true,
        hideHeader: true,
        applyButtonText: 'Filtrer',
        resetButtonText: 'Aucun',
        allButtonText: 'Tous',
        listData: ClassHero.values,
        selectedListData: classHeroesSelected,
        controlButtons: [],
        choiceChipBuilder: (context, item, isSelected) {
          String? label = WavenHero.getStringOfClass(item);
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
          return WavenHero.getStringOfClass(object);
        },
        validateSelectedItem: (list, val) => list!.contains(val),
        onItemSearch: (object, query) {
          String? search = WavenHero.getStringOfClass(object);
          if (search is String) {
            return search.toLowerCase().contains(query.toLowerCase());
          }
          return false;
        },
        onApplyButtonClick: (list) {
          setState(() {
            print(list);
            classHeroesSelected = List.from(list!);
            if (classHeroesSelected.isEmpty) {
              filteredHeros = widget.heros;
            } else {
              filteredHeros = widget.heros.where((hero) {
                bool findRoles = true;
                for (var element in list) {
                  if (hero.classHero == element) {
                    findRoles = false;
                  }
                }
                return findRoles;
              }).toList();
            }
          });
          Navigator.pop(context);
        },
      );
    }

    filteredHeros = classHeroesSelected.isEmpty ? widget.heros : filteredHeros;
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: openFilterDialog,
          child: const Icon(Icons.filter_list),
        ),
        body: (filteredHeros.isEmpty)
            ? Center(
                child: Text('Aucun hero ne correspond à ces filtres',
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
                              title: Row(
                                children: [
                                  Image.asset(
                                    filteredHeros[index].icon ?? '',
                                    height: 48,
                                  ),
                                  Text(filteredHeros[index].name)
                                ],
                              ),
                              children: [HeroShow(hero: filteredHeros[index])]);
                        }),
                    child: Card(
                        elevation: 4.0,
                        child: Column(children: <Widget>[
                          SizedBox(
                            height: 77.0,
                            child: Ink.image(
                              image:
                                  AssetImage(filteredHeros[index].logo ?? ''),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            alignment: Alignment.centerLeft,
                            child: Text(filteredHeros[index].name,
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                textAlign: TextAlign.center),
                          ),
                        ]))),
                itemCount: filteredHeros.length));
  }
}
