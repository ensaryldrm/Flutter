import 'package:burc_yorum_tasarim/modals/burc.dart';
import 'package:burc_yorum_tasarim/pages/burc_detay.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc gelenBurc;
  const BurcItem({required this.gelenBurc});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(4),
          child: ListTile(
            leading: Image.asset("resimler/${gelenBurc.burcKucukResim}"),
            title: Text(
              gelenBurc.burcAdi,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            subtitle: Text(
              gelenBurc.burcTarih,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.pink),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => BurcDetay(secilenBurc: gelenBurc),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
