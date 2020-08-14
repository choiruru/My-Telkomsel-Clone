import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/ui/home/home_view_model.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/divider.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/slider/item_slider.dart';
import 'package:my_telkomsel_clone/widgets/stateful_wrapper.dart';

class SliderSection extends StatelessWidget {
  final HomeViewModel viewModel;

  const SliderSection({Key key, this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(viewModel.slider == null || viewModel.slider.isEmpty){
      return Container();
    }
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Row(
              children: [
                Text(
                  "Latest from telkomsel",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(),
                ),
                FlatButton(
                  onPressed: (){

                  },
                  textColor: Colors.red,
                  child: Text(
                    "See all",
                    style: TextStyle(
                        fontSize: 12,
                    ),
                  ),
                )
              ],
            ),
          ),
          CarouselSlider.builder(
            itemCount: viewModel.slider.length,
            itemBuilder: (context, index){
              return ItemSlider(data: viewModel.slider[index],);
            },
            options: CarouselOptions(
              aspectRatio: 3,
              enableInfiniteScroll: false,
              autoPlay: false,
              onPageChanged: (index, reason){
                viewModel.updateIndexSlider(index);
              }
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Row(
              children: viewModel.slider.map((e) {
                int index = viewModel.slider.indexOf(e);
                return Container(
                  width: 8,
                  height: 8,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: viewModel.indexSlider == index?
                        Colors.redAccent:
                        Colors.grey
                  ),
                );
              }).toList(),
            ),
          ),
          HomeDivider()
        ],
      ),
    );
  }
}


