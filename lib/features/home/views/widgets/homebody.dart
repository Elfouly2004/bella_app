import 'package:bella/features/home/data%20model/Listmodel.dart';
import 'package:bella/features/home/views/widgets/banner%20.dart';
import 'package:bella/features/home/views/widgets/widget%20_home%20_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: CustomBanner(),
          )  ,
          SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(

              crossAxisCount: 2

          ),
              itemCount: foods.length,
              itemBuilder: (c,index) {
                return   HomeFoodWidget(
                  index:index ,
                );
              })

        ],
      ),
    );
  }
}