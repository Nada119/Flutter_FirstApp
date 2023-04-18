import 'package:flutter/material.dart';

void main()
{
  runApp(
    const myApp(),
  );
}


class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "My First App",
            ),
            leading: const BackButton(),
            actions: const [
              Icon(Icons.more_vert),
            ],
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.login),),
                Tab(icon: Icon(Icons.app_registration),),
              ],
            ),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 200,
                        child: Image.network("https://th.bing.com/th/id/R.b667588b7aa776a5ba03db10bb1b28cc?rik=VVYsVX6qJcX45A&pid=ImgRaw&r=0")
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      style: const TextStyle(color: Colors.black),
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: "Email",
                        labelText: "Email",
                        prefixIcon: const Icon(Icons.email),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      style: const TextStyle(color: Colors.black),
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: "Password",
                        labelText: "Password",
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: const Icon(Icons.remove_red_eye),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 15),
                    ),
                      child:const Text("Login",
                      ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don\'t have an account?",
                        style: TextStyle(
                          fontSize: 20
                        ),
                      ),
                      TextButton(onPressed: (){},
                          child: const Text(
                            "Signup",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                            ),
                          ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

        ),
      ),
    );
  }
}
