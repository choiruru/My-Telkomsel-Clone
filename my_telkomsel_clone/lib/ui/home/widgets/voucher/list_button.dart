import 'package:flutter/material.dart';
import 'package:my_telkomsel_clone/ui/home/home_view_model.dart';

class ListButton extends StatelessWidget {
  final HomeViewModel viewmodel;

  const ListButton({Key key, @required this.viewmodel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(14),
          itemCount: viewmodel.modelVoucher.buttonData.length,
          separatorBuilder: (context, index){
            return const SizedBox(width: 12,);
          },
          itemBuilder: (context, index){
            print(viewmodel.modelVoucher.selectedButton);
            return Container(
                height: 30,
                child: index == viewmodel.modelVoucher.selectedButton.toInt()?
                Material(
                  color: Colors.red.withOpacity(0.2),
                  child: OutlineButton(
                    onPressed: (){
                      viewmodel.updateSelectedButtonVoucher(index);
                    },
                    child: Text(viewmodel.modelVoucher.buttonData[index].text),
                    textColor: Colors.black87,
                    borderSide: BorderSide(
                        color: Colors.redAccent
                    ),
                  ),
                )
                    :
                OutlineButton(
                  onPressed: (){
                    viewmodel.updateSelectedButtonVoucher(index);
                  },
                  child: Text(viewmodel.modelVoucher.buttonData[index].text),
                  textColor: Colors.black45,
                  borderSide: BorderSide(
                      color: Colors.black45
                  ),
                )
            );
          }),
    );
  }
}
