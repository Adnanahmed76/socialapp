import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 
  Future<void> _navigateTotext()async{
    await Future.delayed(Duration(seconds: 5));
    final prefs= await SharedPreferences.getInstance();
    bool isFirstTime=prefs.getBool('isFirstTime')?? true;
  
  if(!mounted) return;
  if(isFirstTime){
    await prefs.setBool('isFirstTime', false);

    Navigator.pushReplacementNamed(context, '/signupscreen');
  }
    else{
      bool isLoggedIn =prefs.getBool('isLoggedIn')?? false;
      String? userToken=prefs.getString('userToken');
      if(isLoggedIn && userToken!=null){
        Navigator.pushReplacementNamed(context, '/homescreen');
      }else{
        Navigator.pushReplacementNamed(context, '/loginscreen');
      }
    }
  }

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateTotext();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Splash Screen"),
      ),
      body: Column(
        children: [
          Center(
            child: Text('Splash Screen'),
          )
        ],
      ),
    );
  }
}