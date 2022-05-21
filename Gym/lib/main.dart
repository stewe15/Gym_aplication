import 'dart:convert';
import 'dart:developer';
import 'dart:ffi';
import 'global_vatiables.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

List<Person> people = new List<Person>();
Person tom = Person();
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: FirstScreen(),
        ),
      ),
    );
  }
}

class FirstScreen extends StatefulWidget {
  FirstScreen({Key key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    double size2 = MediaQuery.of(context).size.width;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
          height: size,
          width: size2,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue, Colors.purple]),
          ),
          child: Column(
            children: [
              SizedBox(
                height: size * 0.43,
              ),
              (UserName == "")
                  ? Text(
                      "Добро пожаловать в "
                      "Training app",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                      softWrap: true,
                    )
                  : Text(
                      "Добро пожаловать в "
                      "Training app"
                      "$UserName",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                      softWrap: true,
                    ),
              SizedBox(
                height: size * 0.43,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 8),
                    child: Container(
                      height: size * 0.07,
                      width: size2 * 0.94,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black),
                      child: TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(5)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Account()));
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Начать тренировки",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.greenAccent),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )));
  }
}

class Trainings extends StatefulWidget {
  Trainings({Key key}) : super(key: key);

  @override
  State<Trainings> createState() => _TrainingsState();
}

class _TrainingsState extends State<Trainings> {
  _addNull() {
    setState(() => One = 0);
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    double size2 = MediaQuery.of(context).size.width;
    final List<String> entries = <String>[
      'https://catherineasquithgallery.com/uploads/posts/2021-02/1614401528_25-p-sport-temnii-fon-31.jpg',
      'https://phonoteka.org/uploads/posts/2021-05/1620658294_18-phonoteka_org-p-pauerlifting-fon-20.jpg',
      'https://phonoteka.org/uploads/posts/2021-05/1620174903_17-phonoteka_org-p-temnii-fon-sport-17.jpg',
      'https://sun9-45.userapi.com/impg/AwtXpDjsSO0hPBPPuMuCOhkoWkY7xdgECVnemg/sfLmCd_EPMg.jpg?size=338x604&quality=96&sign=3ca917242a915466682f4ed62563c57e&type=album'
    ];
    final List<String> texts = <String>[
      'Тренировка пресса',
      'Подъём штанги',
      'Обруч',
      'Тренировка плеч'
    ];
    final List cheeck = [ScreenOne(), ScreenTwo(), ScreenThree(), ScreenFour()];
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
          height: size,
          width: size2,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue, Colors.purple]),
          ),
          child: Column(
            children: [
              SizedBox(
                height: size * 0.05,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 100),
                    child: Text(
                      "Предложенные трени:",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                      softWrap: true,
                    ),
                  ),
                  SizedBox(
                    height: size * 0.04,
                  ),
                  Container(
                    height: size * 0.65,
                    width: size2 * 0.9,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 400),
                            child: Center(
                              child: TextButton(
                                style: ButtonStyle(
                                    padding:
                                        MaterialStateProperty.all<EdgeInsets>(
                                            EdgeInsets.all(5)),
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.black),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color: Colors.red)))),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => cheeck[index]));
                                },
                                child: Column(
                                  children: [
                                    Text(
                                      "${texts[index]}",
                                      style: TextStyle(
                                          fontSize: 30.0,
                                          color: Colors.greenAccent),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.black,
                              image: DecorationImage(
                                  image: NetworkImage("${entries[index]}"),
                                  fit: BoxFit.cover)),
                          height: size * 0.65,
                          width: size2 * 0.9,
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 20.0,
                      ),
                      itemCount: entries.length,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size * 0.07,
                      width: size2 * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black),
                      child: TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(5)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SetTraining()));
                        },
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Добавить тренировку",
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.greenAccent),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size * 0.03,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 8),
                    child: Container(
                      height: size * 0.07,
                      width: size2 * 0.28,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black),
                      child: TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(5)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Account()));
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.run_circle,
                              color: Colors.white,
                              size: 30,
                            ),
                            Text(
                              "Аккаунт",
                              style: TextStyle(
                                  fontSize: 10.0, color: Colors.greenAccent),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size * 0.07,
                      width: size2 * 0.28,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black),
                      child: TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(5)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Trainings()));
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.access_time,
                              color: Colors.white,
                              size: 30,
                            ),
                            Text(
                              "Начать треню",
                              style: TextStyle(
                                  fontSize: 10.0, color: Colors.greenAccent),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size * 0.07,
                      width: size2 * 0.28,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black),
                      child: TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(5)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrainingsList()));
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.info,
                              color: Colors.white,
                              size: 30,
                            ),
                            Text(
                              "Список трень",
                              style: TextStyle(
                                  fontSize: 10.0, color: Colors.greenAccent),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )));
  }
}

class Account extends StatefulWidget {
  Account({Key key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  _addNull() {
    setState(() => UserName = "");
  }

  _addSNull() {
    setState(() => UserSurname = "");
  }

  _addPNull() {
    setState(() => PassWord = "");
  }

  _setImageOneNull() {
    setState(() => ImageOne = "");
  }

  _setZero() {
    setState(() => Zero = 0);
  }

  _setOne() {
    Score = Score + 1;
  }

  _setNickAndPs() {
    nick = 0;
    ps = 0;
  }

  _setNill() {
    AddedUser = "";
    AddedPassWord = "";
  }

  _addHope() {
    hope.add(Run);
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    double size2 = MediaQuery.of(context).size.width;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
          height: size,
          width: size2,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue, Colors.purple]),
          ),
          child: Column(
            children: [
              SizedBox(
                height: size * 0.30,
              ),
              (UserName == "")
                  ? Text(
                      "Вы ещё не вошли в аккаунт  ",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                      softWrap: true,
                    )
                  : Column(
                      children: [
                        Center(
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Colors.black,
                                    image: DecorationImage(
                                        image: NetworkImage("${images[Id]}"),
                                        fit: BoxFit.cover)),
                                height: 100,
                                width: 100,
                              ),
                              Text(
                                "${UserNames[Id]}",
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.white),
                                softWrap: true,
                              ),
                              Text(
                                "Тренировок: ${trainings[Id]}",
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.white),
                                softWrap: true,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
              SizedBox(
                height: size * 0.2,
              ),
              (UserName == "")
                  ? Container(
                      height: size * 0.07,
                      width: size2 * 0.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black),
                      child: TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(5)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Registration()));
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Регистрация",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.greenAccent),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Container(
                      height: size * 0.07,
                      width: size2 * 0.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black),
                      child: TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(5)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))),
                        onPressed: () {
                          _addNull();
                          _addSNull();
                          _addPNull();
                          _setImageOneNull();
                          _setZero();
                          _setNickAndPs();
                          _setOne();
                          _setNill();
                          _addHope();
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Выход",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.greenAccent),
                            ),
                          ],
                        ),
                      ),
                    ),
              SizedBox(
                height: 10,
              ),
              (UserName == "")
                  ? Container(
                      height: size * 0.07,
                      width: size2 * 0.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black),
                      child: TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(5)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Enter()));
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Вход",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.greenAccent),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Container(
                      height: size * 0.07,
                      width: size2 * 0.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black),
                      child: TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(5)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Trainings()));
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "К тренировкам",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.greenAccent),
                            ),
                          ],
                        ),
                      ),
                    )
            ],
          ),
        )));
  }
}

class Registration extends StatefulWidget {
  Registration({Key key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  _setName(String text) {
    setState(() => UserName = text);
  }

  _setSurname(String text) {
    setState(() => UserSurname = text);
  }

  _setId() {
    Id = Id + 1;
  }

  _idNo() {
    Id = 0;
  }

  _setItem() {
    Item = Item + 1;
  }

  _addToUsernames(UserName, UserSurname, ImageOne, Zero, PassWord) {
    UserNames.add(UserName);
    trainings.add(Zero);
    surnames.add(UserSurname);
    images.add(ImageOne);
    passwords.add(PassWord);
    
  }

  _setPassword(String text) {
    setState(() => PassWord = text);
  }

  void setup() {
    if (Score == 1) {
      _idNo();
    } else {
      _setId();
    }
  }

  _findAPerson() {
    for (var i = 0; i <= UserNames.length; i++) {
      if (UserNames[i] == UserName) {
        UserName = "";
        UserSurname = "";
        ImageOne = "";

        PassWord = "";
        textzero = "Такой пользователь уже есть";
        Item = 0;
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Registration()));
        return;
      }
    }
  }

  _setMet1() {
    setState(() => ImageOne =
        'https://diet-diet.ru/wp-content/uploads/2017/05/maxresdefault-44-1024x640.jpg');
  }

  _setMet2() {
    setState(() => ImageOne =
        'https://phonoteka.org/uploads/posts/2021-05/1620658294_18-phonoteka_org-p-pauerlifting-fon-20.jpg');
  }

  _setMet3() {
    setState(() => ImageOne =
        'https://phonoteka.org/uploads/posts/2021-05/1620174903_17-phonoteka_org-p-temnii-fon-sport-17.jpg');
  }

  _setMet4() {
    setState(() => ImageOne =
        'https://sun9-45.userapi.com/impg/AwtXpDjsSO0hPBPPuMuCOhkoWkY7xdgECVnemg/sfLmCd_EPMg.jpg?size=338x604&quality=96&sign=3ca917242a915466682f4ed62563c57e&type=album');
  }

  _setMet5() {
    setState(() => ImageOne =
        'https://img.championat.com/s/1350x900/news/big/o/s/trenirovka-na-biceps-i-triceps_15791820691933631682.jpg');
  }

  _setMet6() {
    setState(() => ImageOne =
        'https://alfagym.ru/wp-content/uploads/0/9/0/090e93790d949f40011835a365608698.jpeg');
  }

  _setMet7() {
    setState(() => ImageOne =
        'https://w-dog.ru/wallpapers/3/7/486134772426510/sport-trenirovka-paren-otzhimaniya-obuchenie-malchik.jpg');
  }

  _setMet8() {
    setState(() => ImageOne =
        'https://static.mk.ru/upload/entities/2018/10/01/articles/facebookPicture/9f/23/58/b1/fd8939639f32f0fdbdf173c89d96ecde.jpg');
  }

  _setMet9() {
    setState(() => ImageOne =
        'https://traveltimes.ru/wp-content/uploads/2021/08/workout-fitness-home.jpg');
  }

  _setMet10() {
    setState(() => ImageOne = 'https://i.imgur.com/ktL4yja.jpg');
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    double size2 = MediaQuery.of(context).size.width;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
          height: size,
          width: size2,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue, Colors.purple]),
          ),
          child: Column(
            children: [
              SizedBox(
                height: size * 0.1,
              ),
              Text(
                "Регистрация ",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
                softWrap: true,
              ),
              Text(
                "$textzero",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
                softWrap: true,
              ),
              TextField(
                  style: TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.white),
                      hintText: '___',
                      labelStyle: TextStyle(color: Colors.white),
                      labelText: 'Введите nickname'),
                  onChanged: _setName),
              SizedBox(
                height: 20,
              ),
              TextField(
                  style: TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.white),
                      hintText: '___',
                      labelStyle: TextStyle(color: Colors.white),
                      labelText: 'Введите пароль'),
                  onChanged: _setPassword),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 260),
                child: Column(
                  children: [
                    Text(
                      "Выбирите Аватар ",
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 50,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.black,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://diet-diet.ru/wp-content/uploads/2017/05/maxresdefault-44-1024x640.jpg"),
                                fit: BoxFit.cover)),
                        height: 50,
                        width: 50,
                        child: TextButton(
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(5)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red)))),
                          onPressed: () {
                            _setMet1();
                          },
                          child: Column(
                            children: [
                              Text(
                                "+",
                                style: TextStyle(
                                    fontSize: 30.0, color: Colors.greenAccent),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.black,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://phonoteka.org/uploads/posts/2021-05/1620658294_18-phonoteka_org-p-pauerlifting-fon-20.jpg"),
                                fit: BoxFit.cover)),
                        height: 50,
                        width: 50,
                        child: TextButton(
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(5)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red)))),
                          onPressed: () {
                            _setMet2();
                          },
                          child: Column(
                            children: [
                              Text(
                                "+",
                                style: TextStyle(
                                    fontSize: 30.0, color: Colors.greenAccent),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.black,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://phonoteka.org/uploads/posts/2021-05/1620174903_17-phonoteka_org-p-temnii-fon-sport-17.jpg"),
                                fit: BoxFit.cover)),
                        height: 50,
                        width: 50,
                        child: TextButton(
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(5)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red)))),
                          onPressed: () {
                            _setMet3();
                          },
                          child: Column(
                            children: [
                              Text(
                                "+",
                                style: TextStyle(
                                    fontSize: 30.0, color: Colors.greenAccent),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.black,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://sun9-45.userapi.com/impg/AwtXpDjsSO0hPBPPuMuCOhkoWkY7xdgECVnemg/sfLmCd_EPMg.jpg?size=338x604&quality=96&sign=3ca917242a915466682f4ed62563c57e&type=album"),
                                fit: BoxFit.cover)),
                        height: 50,
                        width: 50,
                        child: TextButton(
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(5)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red)))),
                          onPressed: () {
                            _setMet4();
                          },
                          child: Column(
                            children: [
                              Text(
                                "+",
                                style: TextStyle(
                                    fontSize: 30.0, color: Colors.greenAccent),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.black,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://img.championat.com/s/1350x900/news/big/o/s/trenirovka-na-biceps-i-triceps_15791820691933631682.jpg"),
                                fit: BoxFit.cover)),
                        height: 50,
                        width: 50,
                        child: TextButton(
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(5)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red)))),
                          onPressed: () {
                            _setMet5();
                          },
                          child: Column(
                            children: [
                              Text(
                                "+",
                                style: TextStyle(
                                    fontSize: 30.0, color: Colors.greenAccent),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.black,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://alfagym.ru/wp-content/uploads/0/9/0/090e93790d949f40011835a365608698.jpeg"),
                                fit: BoxFit.cover)),
                        height: 50,
                        width: 50,
                        child: TextButton(
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(5)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red)))),
                          onPressed: () {
                            _setMet6();
                          },
                          child: Column(
                            children: [
                              Text(
                                "+",
                                style: TextStyle(
                                    fontSize: 30.0, color: Colors.greenAccent),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.black,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://w-dog.ru/wallpapers/3/7/486134772426510/sport-trenirovka-paren-otzhimaniya-obuchenie-malchik.jpg"),
                                fit: BoxFit.cover)),
                        height: 50,
                        width: 50,
                        child: TextButton(
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(5)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red)))),
                          onPressed: () {
                            _setMet7();
                          },
                          child: Column(
                            children: [
                              Text(
                                "+",
                                style: TextStyle(
                                    fontSize: 30.0, color: Colors.greenAccent),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.black,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://static.mk.ru/upload/entities/2018/10/01/articles/facebookPicture/9f/23/58/b1/fd8939639f32f0fdbdf173c89d96ecde.jpg"),
                                fit: BoxFit.cover)),
                        height: 50,
                        width: 50,
                        child: TextButton(
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(5)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red)))),
                          onPressed: () {
                            _setMet8();
                          },
                          child: Column(
                            children: [
                              Text(
                                "+",
                                style: TextStyle(
                                    fontSize: 30.0, color: Colors.greenAccent),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.black,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://traveltimes.ru/wp-content/uploads/2021/08/workout-fitness-home.jpg"),
                                fit: BoxFit.cover)),
                        height: 50,
                        width: 50,
                        child: TextButton(
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(5)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red)))),
                          onPressed: () {
                            _setMet9();
                          },
                          child: Column(
                            children: [
                              Text(
                                "+",
                                style: TextStyle(
                                    fontSize: 30.0, color: Colors.greenAccent),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.black,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://i.imgur.com/ktL4yja.jpg"),
                                fit: BoxFit.cover)),
                        height: 50,
                        width: 50,
                        child: TextButton(
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(5)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red)))),
                          onPressed: () {
                            _setMet10();
                          },
                          child: Column(
                            children: [
                              Text(
                                "+",
                                style: TextStyle(
                                    fontSize: 30.0, color: Colors.greenAccent),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: size * 0.07,
                width: size2 * 0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.black),
                child: TextButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(5)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red)))),
                  onPressed: () {
                    _addToUsernames(
                        UserName, PassWord, ImageOne, Zero, PassWord);
                    setup();
                    _setItem();
                    textzero = "";

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Account()));
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Вход",
                        style: TextStyle(
                            fontSize: 20.0, color: Colors.greenAccent),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size * 0.1,
              ),
            ],
          ),
        )));
    ;
  }
}

class Person {
  String name;
  String surname;
  String password;
  String imageTheFirst;

  Person({
    this.name,
    this.surname,
    this.password,
    this.imageTheFirst,
  });
}

class Enter extends StatefulWidget {
  Enter({Key key}) : super(key: key);

  @override
  State<Enter> createState() => _EnterState();
}

class _EnterState extends State<Enter> {
  _setName(String text) {
    setState(() => AddedUser = text);
  }

  _setPassword(String text) {
    setState(() => AddedPassWord = text);
  }

  _setNick() {
    UserName = UserNames[Id];
    ImageOne = images[Id];
    Zero = trainings[Id];
    PassWord = passwords[Id];
    Run = hope[Id];
  }

  _check() {
    if (int.parse(AddedUser) > UserNames.length) {
      error = "Такого пользователя нет";
      sex = false;
    } else {
      sex = true;
      _setNick();
    }
  }

  _setNill() {
    AddedUser = "";
    AddedPassWord = "";
  }

  _findAPerson() {
    for (var i = 0; i <= UserNames.length; i++) {
      if (UserNames[i] == AddedUser) {
        Id = i;
        _setNick();
        return;
      } else {
        UserName = "Такого пользователя нет";
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    double size2 = MediaQuery.of(context).size.width;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
          height: size,
          width: size2,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue, Colors.purple]),
          ),
          child: Column(
            children: [
              SizedBox(
                height: size * 0.1,
              ),
              Text(
                "Вход",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
                softWrap: true,
              ),
              TextField(
                  style: TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.white),
                      hintText: '___',
                      labelStyle: TextStyle(color: Colors.white),
                      labelText: 'Введите никнейм'),
                  onChanged: _setName),
              TextField(
                  style: TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.white),
                      hintText: '___',
                      labelStyle: TextStyle(color: Colors.white),
                      labelText: 'Введите пароль'),
                  onChanged: _setPassword),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: size * 0.07,
                width: size2 * 0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.black),
                child: TextButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(5)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red)))),
                  onPressed: () {
                    _findAPerson();

                    if (sex = true) {
                      sex = false;
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Account()));
                    } else {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Enter()));
                    }
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Войти",
                        style: TextStyle(
                            fontSize: 20.0, color: Colors.greenAccent),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size * 0.1,
              ),
            ],
          ),
        )));
  }
}

class SetTraining extends StatefulWidget {
  SetTraining({Key key}) : super(key: key);

  @override
  State<SetTraining> createState() => _SetTrainingState();
}

class _SetTrainingState extends State<SetTraining> {
  String hrCounter = '00';
  String minCounter = '00';
  String secCounter = '00';

  _setExs(String text) {
    setState(() => Task = text);
  }

  _setTime(var one) {
    setState(() => Temp2 = one);
  }

  _addCount() {
    setState(() => Count = Count + 1);
  }

  _addZero() {
    setState(() => Zero = Zero + 1);
  }

  _addText2() {
    setState(() => Task = Task);
  }

  _addTimw() {
    setState(() => Temp2 = Temp2);
  }

  _addFirst() {
    trainings[Id] = Zero;
  }

  _setData() {
    DateTime now = new DateTime.now();
    DateTime date = new DateTime(
        now.year, now.month, now.day, now.hour, now.minute, now.second);
    String data_time = date.toString();
    Run.add(data_time);
  }

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    DateTime now = new DateTime.now();
    DateTime date = new DateTime(now.year, now.month, now.day, now.hour,
        now.minute, now.second, now.millisecond);
    String data_time = date.toString();
    DataTime = data_time;
    double size = MediaQuery.of(context).size.height;
    double size2 = MediaQuery.of(context).size.width;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
          height: size,
          width: size2,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue, Colors.purple]),
          ),
          child: Column(
            children: [
              SizedBox(
                height: size * 0.11,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60, left: 70),
                child: Column(
                  children: [
                    Text(
                      "Время начала:  ",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                      softWrap: true,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          data_time,
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Text(
                        "Время  трени:",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                        softWrap: true,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                        controller: _controller,
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: false),
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.white),
                            hintText: '00:00:00',
                            labelStyle: TextStyle(color: Colors.white),
                            labelText: 'Введите время(секнды)'),
                        onChanged: _setTime),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 110),
                      child: Column(
                        children: [
                          Text(
                            "Упражнение",
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                            softWrap: true,
                          ),
                          TextField(
                              style: TextStyle(fontSize: 15),
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(color: Colors.white),
                                  hintText: '___',
                                  labelStyle: TextStyle(color: Colors.white),
                                  labelText: 'Введите упражнение'),
                              onChanged: _setExs),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Статус:"
                            "не выполнено",
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                            softWrap: true,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: size * 0.07,
                      width: size2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black),
                      child: TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(5)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))),
                        onPressed: () {
                          _addCount();
                          _addZero();
                          _addFirst();
                          _setData();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StartTraining()));
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 9,
                            ),
                            Text(
                              "Начать треню",
                              style: TextStyle(
                                fontSize: 17.0,
                                color: Colors.greenAccent,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}

class StartTraining extends StatefulWidget {
  StartTraining({Key key}) : super(key: key);

  @override
  State<StartTraining> createState() => _StartTrainingState();
}

class _StartTrainingState extends State<StartTraining> {
  int _counter = int.parse(Temp2);
  Timer _timer;

  void _startTimer() {
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    double size2 = MediaQuery.of(context).size.width;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
          height: size,
          width: size2,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue, Colors.purple]),
          ),
          child: Column(
            children: [
              SizedBox(
                height: size * 0.20,
              ),
              Text(
                "Время трени:",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
                softWrap: true,
              ),
              SizedBox(
                height: 20,
              ),
              (_counter > 0)
                  ? Text(
                      "$_counter секунд",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                      softWrap: true,
                    )
                  : Text(
                      "Выполнено",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 48,
                      ),
                    ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Упражнение:",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
                softWrap: true,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "$Task",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
                softWrap: true,
              ),
              SizedBox(
                height: 20,
              ),
              (_counter > 0)
                  ? Text("")
                  : Container(
                      height: size * 0.07,
                      width: size2 * 0.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black),
                      child: TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(5)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrainingsList()));
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Список тренировок",
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.greenAccent),
                            ),
                          ],
                        ),
                      ),
                    ),
              SizedBox(
                height: size * 0.35,
              ),
              (_counter == int.parse(Temp2))
                  ? Container(
                      height: size * 0.07,
                      width: size2 * 0.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black),
                      child: TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(5)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))),
                        onPressed: () => _startTimer(),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Начать упражнение",
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.greenAccent),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Text(
                      "",
                      style:
                          TextStyle(fontSize: 16.0, color: Colors.greenAccent),
                    ),
            ],
          ),
        )));
  }
}

class TrainingsList extends StatefulWidget {
  TrainingsList({Key key}) : super(key: key);

  @override
  State<TrainingsList> createState() => _TrainingsListState();
}

class _TrainingsListState extends State<TrainingsList> {
  @override
  Widget build(BuildContext context) {
    List _data = new List<String>();
    List _new = new List<String>();
    for (var i = 1; i <= Zero; i++) {
      Count = i;
      _data.add('$Count-я Треня');
    }

    double size = MediaQuery.of(context).size.height;
    double size2 = MediaQuery.of(context).size.width;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
          height: size,
          width: size2,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue, Colors.purple]),
          ),
          child: Column(
            children: [
              SizedBox(
                height: size * 0.1,
              ),
              Text(
                "Список тренировок:",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
                softWrap: true,
              ),
              Container(
                  height: size * 0.65,
                  width: size2 * 0.9,
                  child: new Expanded(
                    child: Container(
                      child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [Colors.black, Colors.purple]),
                                borderRadius: BorderRadius.circular(18.0)),
                            height: 50,
                            width: 50,
                            child: ListTile(
                                title: Text(
                              '${_data[index]},${Run[index]} - дата',
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.greenAccent),
                            )),
                          );
                        },
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 20.0,
                        ),
                        itemCount: _data.length,
                      ),
                    ),
                  )),
              SizedBox(
                height: size * 0.1,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 8),
                    child: Container(
                      height: size * 0.07,
                      width: size2 * 0.28,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black),
                      child: TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(5)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Account()));
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.run_circle,
                              color: Colors.white,
                              size: 30,
                            ),
                            Text(
                              "Аккаунт",
                              style: TextStyle(
                                  fontSize: 10.0, color: Colors.greenAccent),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size * 0.07,
                      width: size2 * 0.28,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black),
                      child: TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(5)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Trainings()));
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.access_time,
                              color: Colors.white,
                              size: 30,
                            ),
                            Text(
                              "Начать треню",
                              style: TextStyle(
                                  fontSize: 10.0, color: Colors.greenAccent),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size * 0.07,
                      width: size2 * 0.28,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black),
                      child: TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(5)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrainingsList()));
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.info,
                              color: Colors.white,
                              size: 30,
                            ),
                            Text(
                              "Список трень",
                              style: TextStyle(
                                  fontSize: 10.0, color: Colors.greenAccent),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )));
  }
}

class ScreenOne extends StatefulWidget {
  ScreenOne({Key key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  int _counter = 30;
  Timer _timer;

  void _startTimer() {
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  _addCount() {
    setState(() => Count = Count + 1);
  }

  _addZero() {
    setState(() => Zero = Zero + 1);
  }

  _addFirst() {
    trainings[Id] = Zero;
  }

  _setData() {
    DateTime now = new DateTime.now();
    DateTime date = new DateTime(
        now.year, now.month, now.day, now.hour, now.minute, now.second);
    String data_time = date.toString();
    Run.add(data_time);
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    double size2 = MediaQuery.of(context).size.width;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
          height: size,
          width: size2,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue, Colors.purple]),
          ),
          child: Column(
            children: [
              SizedBox(
                height: size * 0.20,
              ),
              Text(
                "Время трени:",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
                softWrap: true,
              ),
              SizedBox(
                height: 20,
              ),
              (_counter > 0)
                  ? Text(
                      "$_counter секунд",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                      softWrap: true,
                    )
                  : Text(
                      "Выполнено",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 48,
                      ),
                    ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Упражнение:",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
                softWrap: true,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Тренировка пресса",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
                softWrap: true,
              ),
              SizedBox(
                height: 20,
              ),
              (_counter > 0)
                  ? Text("")
                  : Container(
                      height: size * 0.07,
                      width: size2 * 0.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black),
                      child: TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(5)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))),
                        onPressed: () {
                          _addCount();
                          _addZero();
                          _addFirst();
                          _setData();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrainingsList()));
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Список тренировок",
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.greenAccent),
                            ),
                          ],
                        ),
                      ),
                    ),
              SizedBox(
                height: size * 0.35,
              ),
              (_counter == 30)
                  ? Container(
                      height: size * 0.07,
                      width: size2 * 0.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black),
                      child: TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(5)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))),
                        onPressed: () => _startTimer(),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Начать упражнение",
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.greenAccent),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Text(
                      "",
                      style:
                          TextStyle(fontSize: 16.0, color: Colors.greenAccent),
                    ),
            ],
          ),
        )));
  }
}

class ScreenTwo extends StatefulWidget {
  ScreenTwo({Key key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  int _counter = 120;
  Timer _timer;

  void _startTimer() {
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  _setData() {
    DateTime now = new DateTime.now();
    DateTime date = new DateTime(
        now.year, now.month, now.day, now.hour, now.minute, now.second);
    String data_time = date.toString();
    Run.add(data_time);
  }

  _addCount() {
    setState(() => Count = Count + 1);
  }

  _addZero() {
    setState(() => Zero = Zero + 1);
  }

  _addFirst() {
    trainings[Id] = Zero;
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    double size2 = MediaQuery.of(context).size.width;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
          height: size,
          width: size2,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue, Colors.purple]),
          ),
          child: Column(
            children: [
              SizedBox(
                height: size * 0.20,
              ),
              Text(
                "Время трени:",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
                softWrap: true,
              ),
              SizedBox(
                height: 20,
              ),
              (_counter > 0)
                  ? Text(
                      "$_counter секунд",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                      softWrap: true,
                    )
                  : Text(
                      "Выполнено",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 48,
                      ),
                    ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Упражнение:",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
                softWrap: true,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Подъём Штанги",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
                softWrap: true,
              ),
              SizedBox(
                height: 20,
              ),
              (_counter > 0)
                  ? Text("")
                  : Container(
                      height: size * 0.07,
                      width: size2 * 0.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black),
                      child: TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(5)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))),
                        onPressed: () {
                          _addCount();
                          _addZero();
                          _addFirst();
                          _setData();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrainingsList()));
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Список тренировок",
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.greenAccent),
                            ),
                          ],
                        ),
                      ),
                    ),
              SizedBox(
                height: size * 0.35,
              ),
              (_counter == 120)
                  ? Container(
                      height: size * 0.07,
                      width: size2 * 0.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black),
                      child: TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(5)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))),
                        onPressed: () => _startTimer(),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Начать упражнение",
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.greenAccent),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Text(
                      "",
                      style:
                          TextStyle(fontSize: 16.0, color: Colors.greenAccent),
                    ),
            ],
          ),
        )));
  }
}

class ScreenThree extends StatefulWidget {
  ScreenThree({Key key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  int _counter = 50;
  Timer _timer;

  void _startTimer() {
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  _addCount() {
    setState(() => Count = Count + 1);
  }

  _addZero() {
    setState(() => Zero = Zero + 1);
  }

  _addFirst() {
    trainings[Id] = Zero;
  }

  _setData() {
    DateTime now = new DateTime.now();
    DateTime date = new DateTime(
        now.year, now.month, now.day, now.hour, now.minute, now.second);
    String data_time = date.toString();
    Run.add(data_time);
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    double size2 = MediaQuery.of(context).size.width;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
          height: size,
          width: size2,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue, Colors.purple]),
          ),
          child: Column(
            children: [
              SizedBox(
                height: size * 0.20,
              ),
              Text(
                "Время трени:",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
                softWrap: true,
              ),
              SizedBox(
                height: 20,
              ),
              (_counter > 0)
                  ? Text(
                      "$_counter секунд",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                      softWrap: true,
                    )
                  : Text(
                      "Выполнено",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 48,
                      ),
                    ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Упражнение:",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
                softWrap: true,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Вращение обруча",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
                softWrap: true,
              ),
              SizedBox(
                height: 20,
              ),
              (_counter > 0)
                  ? Text("")
                  : Container(
                      height: size * 0.07,
                      width: size2 * 0.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black),
                      child: TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(5)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))),
                        onPressed: () {
                          _addCount();
                          _addZero();
                          _addFirst();
                          _setData();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrainingsList()));
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Список тренировок",
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.greenAccent),
                            ),
                          ],
                        ),
                      ),
                    ),
              SizedBox(
                height: size * 0.35,
              ),
              (_counter == 50)
                  ? Container(
                      height: size * 0.07,
                      width: size2 * 0.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black),
                      child: TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(5)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))),
                        onPressed: () => _startTimer(),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Начать упражнение",
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.greenAccent),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Text(
                      "",
                      style:
                          TextStyle(fontSize: 16.0, color: Colors.greenAccent),
                    ),
            ],
          ),
        )));
  }
}

class ScreenFour extends StatefulWidget {
  ScreenFour({Key key}) : super(key: key);

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  int _counter = 120;
  Timer _timer;

  void _startTimer() {
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  _addCount() {
    setState(() => Count = Count + 1);
  }

  _addZero() {
    setState(() => Zero = Zero + 1);
  }

  _addFirst() {
    trainings[Id] = Zero;
  }

  _setData() {
    DateTime now = new DateTime.now();
    DateTime date = new DateTime(
        now.year, now.month, now.day, now.hour, now.minute, now.second);
    String data_time = date.toString();
    Run.add(data_time);
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    double size2 = MediaQuery.of(context).size.width;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
          height: size,
          width: size2,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue, Colors.purple]),
          ),
          child: Column(
            children: [
              SizedBox(
                height: size * 0.20,
              ),
              Text(
                "Время трени:",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
                softWrap: true,
              ),
              SizedBox(
                height: 20,
              ),
              (_counter > 0)
                  ? Text(
                      "$_counter секунд",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                      softWrap: true,
                    )
                  : Text(
                      "Выполнено",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 48,
                      ),
                    ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Упражнение:",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
                softWrap: true,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Тренировка плеч",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
                softWrap: true,
              ),
              SizedBox(
                height: 20,
              ),
              (_counter > 0)
                  ? Text("")
                  : Container(
                      height: size * 0.07,
                      width: size2 * 0.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black),
                      child: TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(5)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))),
                        onPressed: () {
                          _addCount();
                          _addZero();
                          _addFirst();
                          _setData();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrainingsList()));
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Список тренировок",
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.greenAccent),
                            ),
                          ],
                        ),
                      ),
                    ),
              SizedBox(
                height: size * 0.35,
              ),
              (_counter == 120)
                  ? Container(
                      height: size * 0.07,
                      width: size2 * 0.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black),
                      child: TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(5)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))),
                        onPressed: () => _startTimer(),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Начать упражнение",
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.greenAccent),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Text(
                      "",
                      style:
                          TextStyle(fontSize: 16.0, color: Colors.greenAccent),
                    ),
            ],
          ),
        )));
  }
}
