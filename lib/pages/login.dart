import 'package:estore_marketing/pages/homepage.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? _phone;

  String? _password;

  bool _obscureText = true;

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
        centerTitle: true,
      ),
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Divider(),
              SizedBox(height: 100,width: 300,child: Image.asset('assets/images/mainlogo.jpeg', fit: BoxFit.fill)),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  onSaved: (val) {
                    _phone = val;
                  },
                  decoration: const InputDecoration(
                    labelText: "Phone Number",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone),
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  onSaved: (val){
                    _password =val;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Enter Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment:  MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: (){
                    print("Recover Password Code");
                  }, child: const Text(
                      "Forget Password?"
                  ))
                ],
              ),
              Divider(),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: LinearGradient(colors: [Color(0xFF0277BD), Color(0xFF2E7d32)]),
                ),
                child: MaterialButton(
                  onPressed: _login,
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(4),child: Divider(color: Colors.black,height: 30)),
              Row(
                mainAxisAlignment:  MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an Account?",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                    ),

                  ),
                  TextButton(onPressed: (){
                    print("Redirect to Register Page");
                  }, child: const Text(
                      "Register Account"
                  ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _login() async {
    final _form = _formkey.currentState;

    if (_form!.validate()) {
      _form.save();

      print("Phone Number is : " + _phone!);
      print("Password is : " + _password!);

      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
    }
  }
}
