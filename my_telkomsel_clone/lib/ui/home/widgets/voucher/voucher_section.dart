import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_telkomsel_clone/data/model_home_voucher.dart';
import 'package:my_telkomsel_clone/ui/home/home_view_model.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/common/divider.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/voucher/list_button.dart';
import 'package:my_telkomsel_clone/ui/home/widgets/voucher/list_promo.dart';

class VoucherSection extends StatelessWidget {
  final HomeViewModel viewmodel;

  const VoucherSection({Key key, @required this.viewmodel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(viewmodel == null || viewmodel.modelVoucher==null){
      return Container();
    }
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(14,14,14,0),
            child: Row(
              children: [
                Icon(MdiIcons.policeBadgeOutline, size: 12,),
                const SizedBox(width: 4,),
                Text(
                  "Find interesting voucher here",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 4,),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Text(
              "Redeem telkomsel POIN and find latest promo",
              style: TextStyle(
                color: Colors.black45,
                fontSize: 11
              ),
            ),
          ),
          ListButton(viewmodel: viewmodel,),
          ListPromo(models: viewmodel.modelVoucher.voucher,),
          HomeDivider(),
        ],
      ),
    );
  }
}
