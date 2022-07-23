import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppBar',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const MyHomePage(title: ' Welcome to Barbers'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late bool _obscured;

  void _textObscured() {
    setState(() {
      _obscured = !_obscured;
    });
  }


  @override
  void initState() {
    _obscured = true;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF171a21),
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.elliptical(50, 70),
            bottomRight: Radius.elliptical(50, 70),
          ),
        ),
        // shape: const BeveledRectangleBorder(
        //     borderRadius: BorderRadius.all(Radius.elliptical(40, 50))),
        shadowColor: Colors.white,
        elevation: 5,

        // backgroundColor: Colors.pink,
        // foregroundColor: Colors.pink,
        title: Text(widget.title),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_sharp,
                color: Colors.red,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_sharp, color: Colors.black)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              flex: 30,
              child: Stack(
                fit: StackFit.loose,
                children: [
                  // const Image(
                  //   fit: BoxFit.fill,
                  //   image: AssetImage('assets/images/sajj.png'),
                  // ),
                  Container(
                    child: const Image(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/sajj.png'),
                    ),
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  const Positioned(
                      top: 10,
                      left: 10,
                      child: Text(
                        'Welcome to',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      )),
                  Positioned(
                      top: 11,
                      left: 12,
                      child: RichText(
                          text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: 'Barbers',
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                        TextSpan(
                          text: '.',
                          style: TextStyle(
                              color: Color(0XFFFfe6914), fontSize: 100),
                        )
                      ])))
                ],
              )),
          Expanded(
            flex: 70,
            child: Container(
              decoration: const BoxDecoration(
                  color: Color(0XFFF080f1f),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Spacer(
                    flex: 5,
                  ),
                  Expanded(
                    flex: 20,
                    child: Row(
                      children: [
                        const Spacer(
                          flex: 5,
                        ),
                        Expanded(
                            flex: 90,
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Color(0XFFF292f3b),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5))),
                              child: const TextField(
                                keyboardType: TextInputType.emailAddress,
                                textCapitalization:
                                    TextCapitalization.sentences,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                ),
                                textDirection: TextDirection.ltr,
                                decoration: InputDecoration(
                                  labelText: ' Email',
                                  labelStyle: TextStyle(color: Colors.white),
                                ),
                              ),
                            )),
                        const Spacer(
                          flex: 5,
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Expanded(
                    flex: 18,
                    child: Row(
                      children: [
                        const Spacer(
                          flex: 5,
                        ),
                        Expanded(
                            flex: 90,
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Color(0XFFF292f3b),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5))),
                              child: TextFormField(
                                obscureText: _obscured,
                                textCapitalization:
                                    TextCapitalization.sentences,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                ),
                                //  textDirection: TextDirection.ltr,
                                decoration:  InputDecoration(
                                    labelText: 'Password',
                                    labelStyle: TextStyle(color: Colors.white),
                                    // hintText: 'Please Enter Password Here',
                                    // hintStyle: TextStyle(color: Colors.white),
                                    suffixIcon: GestureDetector(
                                      onTap: _textObscured,
                                      child: Icon(
                                        _obscured? Icons.visibility_off_rounded:Icons.visibility_rounded,
                                        color: Colors.white,
                                      ),
                                    )),
                              ),
                            )),
                        const Spacer(
                          flex: 5,
                        )
                      ],
                    ),
                  ),
                  // TextFormField(
                  //   decoration: InputDecoration(labelText: 'Password'),
                  // ),
                  const Spacer(
                    flex: 4,
                  ),
                  Expanded(
                      flex: 15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(
                            flex: 5,
                          ),
                          Expanded(
                            flex: 60,
                            child: Container(
                              height: 80,
                              child: const Center(
                                child: Text('Sign In',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30)),
                              ),
                              decoration: const BoxDecoration(
                                  color: Color(0XFFFfe6b1d),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                          ),
                          const Spacer(
                            flex: 5,
                          ),
                          Expanded(
                            flex: 25,
                            child: Container(
                              height: 80,
                              child: const Icon(
                                Icons.wallpaper_rounded,
                                color: Colors.white,
                                size: 30,
                              ),
                              decoration: const BoxDecoration(
                                  color: Color(0XFFF5243aa),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                          ),
                          const Spacer(flex: 5)
                        ],
                      )),
                  const Spacer(
                    flex: 3,
                  ),
                  Expanded(
                      flex: 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Spacer(
                            flex: 5,
                          ),
                          Expanded(
                            flex: 30,
                            child: Text(
                              'Forget Password',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                          Spacer(
                            flex: 40,
                          ),
                          Expanded(
                            flex: 20,
                            child: Text(
                              'New User:',
                              style: TextStyle(
                                  color: Color(0XFFF7d371a), fontSize: 13),
                            ),
                          ),
                          Spacer(
                            flex: 5,
                          )
                        ],
                      )),
                  const Spacer(
                    flex: 2,
                  ),
                  Expanded(
                      flex: 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            '___________',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                          Text(
                            'Or',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                          Text(
                            '___________',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ],
                      )),
                  const Spacer(
                    flex: 3,
                  ),
                  Expanded(
                      flex: 15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(
                            flex: 5,
                          ),
                          Expanded(
                            flex: 43,
                            child: Container(
                              height: 80,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Image(
                                      width: 30,
                                      image:
                                          AssetImage('assets/images/sa.jpg')),
                                  Text('Google',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20)),
                                ],
                              ),
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                          ),
                          const Spacer(
                            flex: 4,
                          ),
                          Expanded(
                            flex: 43,
                            child: Container(
                              height: 80,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.facebook,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  Text('Facebook',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                ],
                              ),
                              decoration: const BoxDecoration(
                                  color: Color(0XFFF5243aa),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                          ),
                          const Spacer(flex: 5)
                        ],
                      )),
                  const Spacer(
                    flex: 3,
                  )
                ],
              ),
            ),
          )
        ],
      )),
      drawer: Drawer(),
    );
  }
}
