import 'package:flutter/material.dart';
import 'package:not_hesaplamasi_uygulamasi/constants/sabitler.dart';
import 'package:not_hesaplamasi_uygulamasi/helper/data_helper.dart';

class KrediDropdownWidget extends StatefulWidget {
  final Function onKrediSecildi;
  const KrediDropdownWidget({required this.onKrediSecildi, super.key});

  @override
  State<KrediDropdownWidget> createState() => _KrediDropdownWidgetState();
}

class _KrediDropdownWidgetState extends State<KrediDropdownWidget> {
  int secilenKrediDegeri = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Sabitler.dropDownPadding,
      decoration: BoxDecoration(
        color: Sabitler.anaRenk.shade50,
        borderRadius: Sabitler.borderRadius,
      ),
      child: DropdownButton(
        value: secilenKrediDegeri,
        underline: SizedBox(),
        items: DataHelper.tumDerslerinKredileri(),
        onChanged: (deger) {
          setState(() {
            secilenKrediDegeri = deger!;
            widget.onKrediSecildi(deger);
          });
        },
      ),
    );
  }
}
