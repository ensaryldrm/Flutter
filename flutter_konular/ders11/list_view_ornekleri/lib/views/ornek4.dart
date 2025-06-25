import 'package:flutter/material.dart';
import 'package:list_view_ornekleri/modals/user.dart';
import 'package:list_view_ornekleri/views/appBar.dart';
import 'package:list_view_ornekleri/views/ornek4_detay_sayfa.dart';

// MAIN
class Ornek4 extends StatefulWidget {
  const Ornek4({super.key});

  @override
  State<Ornek4> createState() => _Ornek4State();
}

class _Ornek4State extends State<Ornek4> {
  String myAppBarBaslik = "Örnek4: ";
  Color myAppBarRenk = Color.fromARGB(250, 10, 140, 180);

  @override
  Widget build(BuildContext context) {
    String mainUrl = "images";
    User u1 = User(
      name: "Ensar Yıldırım",
      imgURL: "$mainUrl/2.png",
      tel: 5355823800,
    );

    User u2 = User(
      name: "Aslı Pekdemir",
      imgURL: "$mainUrl/1.png",
      tel: 5355823800,
    );

    User u3 = User(
      name: "Selin Demiratar",
      imgURL: "$mainUrl/3.png",
      tel: 5355823800,
    );

    User u4 = User(
      name: "Osman Gümüş",
      imgURL: "$mainUrl/8.png",
      tel: 5355823800,
    );

    User u5 = User(
      name: "Şermin Uygar",
      imgURL: "$mainUrl/4.png",
      tel: 5355823800,
    );
    List<User> kisiList = [u1, u2, u3, u4, u5];

    return Scaffold(
      appBar: myAppBar(myAppBarBaslik, myAppBarRenk),
      body: KisiCard(users: kisiList),
    );
  }
}

// KİŞİLERİ EKLEDİĞİMİZ YER
class KisiCard extends StatefulWidget {
  final List<User> users;

  const KisiCard({required this.users});

  @override
  State<KisiCard> createState() => _KisiCardState();
}

class _KisiCardState extends State<KisiCard> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return UserCard(user: widget.users[index]);
      },
    );
  }
}

class UserCard extends StatefulWidget {
  final User user;
  const UserCard({required this.user});

  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (builder) => Ornek4DetaySayfa(user: widget.user),
            ),
          );
        },
        shape: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 0.5),
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Color.fromARGB(40, 70, 200, 100),
        leading: CircleAvatar(backgroundImage: AssetImage(widget.user.imgURL)),
        title: Text(widget.user.name),
        subtitle: Text("0${widget.user.tel.toString()}"),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
