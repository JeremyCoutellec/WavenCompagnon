import 'package:flutter/material.dart';
import 'package:filter_list/filter_list.dart';

import '../models/hero.dart';
import 'hero_show.dart';

class HeroCardList extends StatefulWidget {
  final List<WavenHero> heros;
  WavenHero? showViewHero;

  HeroCardList({super.key, required this.heros, this.showViewHero});

  @override
  State<HeroCardList> createState() => _HeroCardListState();
}

class _HeroCardListState extends State<HeroCardList> {
  List<Object> classHeroSelected = [];
  List<WavenHero> filteredHeros = [];

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;

    void openFilterDialog() async {
      await FilterListDialog.display<Object>(
        context,
        hideSearchField: true,
        hideCloseIcon: true,
        hideSelectedTextCount: true,
        hideHeader: true,
        applyButtonText: 'Filtrer',
        resetButtonText: 'Aucun',
        allButtonText: 'Tous',
        listData: ClassHero.values,
        selectedListData: classHeroSelected,
        controlButtons: [],
        choiceChipBuilder: (context, item, isSelected) {
          String? label;
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
                  label ?? '',
                  style: TextStyle(color: colorText),
                ),
              ));
        },
        choiceChipLabel: (object) {
          return object.toString();
        },
        validateSelectedItem: (list, val) => list!.contains(val),
        onItemSearch: (object, query) {
          String? search;
          if (search is String) {
            return search.toLowerCase().contains(query.toLowerCase());
          }
          return false;
        },
        onApplyButtonClick: (list) {
          setState(() {
            classHeroSelected = List.from(list!);
            if (classHeroSelected.isEmpty) {
              filteredHeros = widget.heros;
            } else {
              filteredHeros = widget.heros.where((hero) {
                var findClassHero = false;
                for (var element in list) {
                  if (hero.classHero == element) findClassHero = true;
                }
                return findClassHero;
              }).toList();
            }
          });
          Navigator.pop(context);
        },
      );
    }

    filteredHeros = classHeroSelected.isEmpty ? widget.heros : filteredHeros;
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                HeroShow(hero: filteredHeros[index]))),
                    child: Card(
                        child: Column(children: <Widget>[
                      AspectRatio(
                          aspectRatio: 1.4,
                          child: Image.asset(filteredHeros[index].logo ?? '')),
                      Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          child: Padding(
                              padding: const EdgeInsets.only(top: 4, bottom: 4),
                              child: Text(filteredHeros[index].name,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  textAlign: TextAlign.center)))
                    ]))),
                itemCount: filteredHeros.length));
  }
}