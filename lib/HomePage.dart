import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_web_howl/howl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // var howl = new Howl(
  //   autoPlay: true,
  //   src: ["https://www.youtube.com/watch?v=yNN96wrmEN8"],
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/fundo.jpg'),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
              child: Card(
                color: Colors.transparent,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  color: Colors.black.withOpacity(0.5),
                  width: MediaQuery.of(context).size.width / 1.3,
                  height: MediaQuery.of(context).size.width / 2.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              getWeekDay(),
                              style: TextStyle(fontFamily: "Rubik", color: Colors.white, fontSize: 22, fontStyle: FontStyle.italic),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Icon(
                              Icons.wifi,
                              size: 22,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(25),
                            child: Icon(
                              Icons.share,
                              size: 22,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 10, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 160,
                              backgroundColor: Colors.transparent,
                              backgroundImage: NetworkImage("https://i.imgur.com/ZwtlzhU.jpg"),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 30),
                                  child: Text(
                                    "Slown Down",
                                    style: TextStyle(fontFamily: "Rubik-Bold", color: Colors.white, fontSize: 28),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width / 2.5,
                                  child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam a dolor vehicula, egestas felis quis, fermentum felis. Nunc imperdiet ullamcorper enim sit amet semper. Aenean ornare fermentum tortor, et efficitur metus. Nullam dictum turpis vitae ante iaculis, ac tempor mauris vestibulum. Vestibulum at libero hendrerit, commodo risus ut, auctor purus. Vivamus accumsan sed urna et porttitor. Maecenas eget placerat neque. Donec faucibus faucibus dui vitae gravida. Etiam in risus sed felis interdum fringilla. Quisque et lacinia dui. Aenean vitae facilisis magna, eu efficitur libero. ",
                                    style: TextStyle(fontFamily: "Rubik-Light", color: Colors.white, fontSize: 18, height: 1.5),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(100, 40, 0, 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.equalizer,
                              color: Colors.white,
                              size: 28,
                            ),
                            Text(
                              "  Popular News",
                              style: TextStyle(fontFamily: "Rubik-Bold", color: Colors.white, fontSize: 26),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 20,
                                  ),
                                  child: Text(
                                    "Só quero",
                                    style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'Rubik-Medium'),
                                  ),
                                ),
                              ),
                              radius: 80,
                              backgroundColor: Colors.transparent,
                              backgroundImage: NetworkImage("https://i.imgur.com/uAArAI3.jpg")),
                          CircleAvatar(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 20,
                                  ),
                                  child: Text(
                                    "Amanhã",
                                    style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'Rubik-Medium'),
                                  ),
                                ),
                              ),
                              radius: 80,
                              backgroundColor: Colors.transparent,
                              backgroundImage: NetworkImage("https://i.imgur.com/xqTKNej.jpg")),
                          CircleAvatar(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 20,
                                ),
                                child: Text(
                                  "Paz II",
                                  style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'Rubik-Medium'),
                                ),
                              ),
                            ),
                            radius: 80,
                            backgroundColor: Colors.transparent,
                            backgroundImage: NetworkImage("https://i.imgur.com/56AruJk.jpg"),
                          ),
                          CircleAvatar(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 20,
                                ),
                                child: Text(
                                  "Parabéns",
                                  style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'Rubik-Medium'),
                                ),
                              ),
                            ),
                            radius: 80,
                            backgroundColor: Colors.transparent,
                            backgroundImage: NetworkImage("https://i.imgur.com/QhCtL5Z.jpg"),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                color: Colors.black.withOpacity(0.5),
                width: 60,
                height: MediaQuery.of(context).size.width / 2.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Color(0xff44066E).withOpacity(0.4),
                        child: Icon(
                          Icons.music_note,
                          color: Colors.white,
                          size: 38,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Color(0xff333333).withOpacity(0.3),
                        child: Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.white,
                          size: 38,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Color(0xff333333).withOpacity(0.3),
                        child: Icon(
                          FontAwesomeIcons.youtube,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Color(0xff333333).withOpacity(0.3),
                        child: Icon(
                          FontAwesomeIcons.solidComment,
                          color: Colors.white,
                          size: 38,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  getWeekDay() {
    int weekday = DateTime.now().weekday;

    switch (weekday) {
      case 1:
        return "Mon.  ${DateTime.now().hour}:${DateTime.now().minute}";
        break;
      case 2:
        return "Tue.  ${DateTime.now().hour}:${DateTime.now().minute}";
        break;
      case 3:
        return "Wed.  ${DateTime.now().hour}:${DateTime.now().minute}";
        break;
      case 4:
        return "Thu.  ${DateTime.now().hour}:${DateTime.now().minute}";
        break;
      case 5:
        return "Fri.  ${DateTime.now().hour}:${DateTime.now().minute}";
        break;
      case 6:
        return "Sat.  ${DateTime.now().hour}:${DateTime.now().minute}";
        break;
      case 7:
        return "Sun.  ${DateTime.now().hour}:${DateTime.now().minute}";
        break;
    }
  }
}
