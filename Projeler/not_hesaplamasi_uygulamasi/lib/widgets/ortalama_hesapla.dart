import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:not_hesaplamasi_uygulamasi/constants/sabitler.dart';
import 'package:not_hesaplamasi_uygulamasi/helper/data_helper.dart';
import 'package:not_hesaplamasi_uygulamasi/model/ders.dart';
import 'package:not_hesaplamasi_uygulamasi/widgets/ders_listesi.dart';
import 'package:not_hesaplamasi_uygulamasi/widgets/harf_dropdown_widget.dart';
import 'package:not_hesaplamasi_uygulamasi/widgets/kredi_dropdown_widget.dart';
import 'package:not_hesaplamasi_uygulamasi/widgets/ortalama_goster.dart';

class OrtalamaHesapla extends StatefulWidget {
  const OrtalamaHesapla({super.key});

  @override
  State<OrtalamaHesapla> createState() => _OrtalamaHesaplaState();
}

class _OrtalamaHesaplaState extends State<OrtalamaHesapla> {
  // FORMDAN BİLGİ ALMAK İÇİN KEY OLUŞTURUYORUZ
  final formKey = GlobalKey<FormState>();

  // HARF NOTUMUZ AA İLE BAŞLASIN DİYE BURADA VALUE İÇİN 4 VERİYORUZ
  double secilenHarfDegeri = 4;

  // KREDİ VALUE 1 İLE BAŞLASIN DİYE BURADA DEĞERE 1 VERİYORUZ
  int secilenKrediDegeri = 1;

  // TEXTFORMFIELD DAN DEĞER ALACAĞIMIZ İÇİN BOŞ DEĞER ATIYORUZ
  String girilenDersAdi = "";

  @override
  Widget build(BuildContext context) {
    debugPrint("build çalıştı");
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(Sabitler.baslikText, style: Sabitler.baslikStyle),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // FORMUN ROWU
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  //BURADA FORM YAPMAK İÇİN METOD OLUŞTURDUK
                  child: _buildForm(),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  // DYNAMIC VERİ İÇİN WIDGET OLUŞTURDUK
                  child: OrtalamaGoster(
                    ortalama: DataHelper.ortalamaHesapla(),
                    dersSayisi: DataHelper.tumEklenecekDersler.length,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          // Liste Gelecek
          Expanded(
            child: Container(
              child: DersListesi(
                onElemanCikarildi: (index) {
                  DataHelper.tumEklenecekDersler.removeAt(index);
                  setState(() {});
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  // FORM İÇİN WİDGET OLUŞTURDUK YER KAPLAMASIN DİYE
  Widget _buildForm() {
    return Form(
      key: formKey,
      child: Column(
        children: [
          // TextFormField gelecek
          _buildTextFormField(),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //Harfler için DropDownButton metodu oluşturduk
              HarfDropdownWidget(
                onHarfSecildi: (harfDegeri) {
                  secilenHarfDegeri = harfDegeri;
                },
              ),
              //Krediler için DropDownButton metodu oluşturduk
              KrediDropdownWidget(
                onKrediSecildi: (krediDegeri) {
                  secilenKrediDegeri = krediDegeri;
                },
              ),
              //Listeye eklemek için IconButton oluşturduk
              IconButton(
                onPressed: () {
                  _dersEkleveOrtalamaHesapla();
                },
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Sabitler.anaRenk,
                  size: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // DERS ADI ALMAK İÇİN TEXTFORMFIELD OLUŞTURDUK
  Widget _buildTextFormField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        validator: (s) {
          if (s!.isEmpty) {
            return "Ders adını giriniz!";
          }
        },
        onSaved: (gelenDersAdi) {
          setState(() {
            girilenDersAdi = gelenDersAdi!;
          });
        },
        decoration: InputDecoration(
          hintText: "Ders Giriniz",
          border: OutlineInputBorder(borderRadius: Sabitler.borderRadius),
          filled: true,
          fillColor: Sabitler.anaRenk.shade50,
        ),
      ),
    );
  }

  void _dersEkleveOrtalamaHesapla() {
    setState(() {
      if (formKey.currentState!.validate()) {
        formKey.currentState!.save();
        Ders eklenecekDers = Ders(
          ad: girilenDersAdi,
          harfDegeri: secilenHarfDegeri,
          krediDegeri: secilenKrediDegeri,
        );
        DataHelper.dersEkle(eklenecekDers);
      }
    });
  }
}
