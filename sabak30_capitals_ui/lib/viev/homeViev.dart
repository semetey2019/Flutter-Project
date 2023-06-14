import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sabak30_capitals_ui/constants/app_colors.dart';
import 'package:sabak30_capitals_ui/model/continents.dart';
import 'package:sabak30_capitals_ui/model/suroo_joop.dart';
import 'package:sabak30_capitals_ui/viev/test_viev.dart';

class HomeViev extends StatefulWidget {
  const HomeViev({super.key});

  @override
  State<HomeViev> createState() => _HomeVievState();
}

class _HomeVievState extends State<HomeViev> {
  List<Continents> continents = continentsList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Мамлекеттер борбору',
          style: TextStyle(color: continents[1].color),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: AppColors.blue,
            ),
          ),
          const Icon(
            Icons.more_vert,
            color: AppColors.black,
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          const Divider(
            indent: 15,
            endIndent: 15,
            color: AppColors.dividerColor,
            height: 1,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 25, right: 10),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    crossAxisSpacing: 170,
                    mainAxisExtent: 170),
                itemCount: continents.length,
                itemBuilder: (BuildContext ctx, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TestViev(suroo: surooJoopList),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Text(
                            continents[index].name,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: continents[index].color,
                            ),
                          ),
                          SvgPicture.asset(
                            'assets/continents/${continents[index].image}.svg',
                            width: 100,
                            color: continents[index].color,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
