import 'package:flutter/material.dart';
import 'package:mendmate_worker/workerLogin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const Workerlogin(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                "Hello WORKER!",
                style: TextStyle(fontSize: 28),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Welcome Back,you Have Been Missed For Long Time",
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 120,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Container(color: Color(0xFFF6F7F9),
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.mail),
                    hintText: 'Email address',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Container(color:Color((0xFFF6F7F9)),
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.visibility_off),
                    hintText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                    style: TextStyle(color: Color(0xFF3D56A2)),
                    'Forgot Password ?')),
            Center(
                child: SizedBox(
                    height: 110,
                    width: 1000,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 20),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF3D56A2),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          onPressed: () {},
                          child: Text(
                            'LOGIN',
                            style: TextStyle(color: Colors.white),
                          )),
                    ))),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90),
              child: Container(
                  child: Row(children: [
                Text("Don't have an account?"),
                TextButton(onPressed: () {}, child: Text(style: TextStyle(color: Color(0xFF3D56A2)),'Signup'))
              ])),
            ),SizedBox(height: 45,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [Expanded(child: Divider(thickness: 1,)),SizedBox(width: 10,),
                  Expanded(child: Text('or Continue with')),Expanded(child: Divider(thickness: 1,))
                ],
              ),
            ),
            Center(child: Image.asset(width:30,'assets/google_logo.png'))
          ],
        ),
      ),
    );
  }
}
