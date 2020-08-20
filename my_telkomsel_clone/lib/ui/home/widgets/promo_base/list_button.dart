import 'package:flutter/material.dart';

class ListButton extends StatelessWidget {
  final List<String> buttons;
  final Function(int) onButtonClick;
  final int selectedButton;

  const ListButton({Key key, @required this.buttons, @required this.onButtonClick, @required this.selectedButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(14),
          itemCount: buttons.length,
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 12,
            );
          },
          itemBuilder: (context, index) {
            return Container(
                height: 30,
                child: index == selectedButton
                    ? Material(
                        color: Colors.red.withOpacity(0.2),
                        child: OutlineButton(
                          onPressed: () {

                          },
                          child: Text(
                              buttons[index]),
                          textColor: Colors.black87,
                          borderSide: BorderSide(color: Colors.redAccent,),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                        ),
                      )
                    : OutlineButton(
                        onPressed: () {
                          onButtonClick.call(index);
                        },
                        child:
                            Text(buttons[index], style: TextStyle(fontWeight:FontWeight.normal),),
                        textColor: Colors.black45,
                        borderSide: BorderSide(color: Colors.black45),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      ));
          }),
    );
  }
}
