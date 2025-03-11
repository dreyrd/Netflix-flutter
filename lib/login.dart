import 'package:flutter/material.dart';
import 'list.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
  String usuario_cadastrado = 'admin';
  String senha_cadastrada = 'admin';
  String verificador = '';
  
  bool Logar(){
    if(_user.text == usuario_cadastrado && _password.text == senha_cadastrada){
      _user.clear();
      _password.clear();

      Navigator.push(context, MaterialPageRoute(builder: (context) => ListPage()));
      return true;
    }
    else{
      setState(() {
        verificador = 'Credenciais inválidas';
      });

      return false;
    }
  }

  TextEditingController _user = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.network(
            'https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/227_Netflix_logo-512.png',
            fit: BoxFit.contain,
            width: 50,
            height: 50,
          ),
        centerTitle: true,
        backgroundColor: Color(0xFF292f33),
      ),

      body: Center(
        child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SizedBox(
                width: 300,
                child:
                  TextField(
                  style: TextStyle(color: Color(0xFFf5f5f1)),
                  decoration: InputDecoration(
                    hintText: 'Login',
                    border: OutlineInputBorder(),

                  ),
                  controller: _user,

                  )
              ),

              SizedBox(height: 16),

              SizedBox(
                width: 300,
                child:
                  TextField(
                  style: TextStyle(color: Color(0xFFf5f5f1)),
                  decoration: InputDecoration(
                    hintText: 'Senha',
                    border: OutlineInputBorder(),
                  ),
                  controller: _password,
                  obscureText: true,
                  )
              ),

              SizedBox(height: 16),

              ElevatedButton(onPressed: (){
                Logar();
              }, child: Text("Logar")),

              Text(
                verificador,
                style: TextStyle(color: Color(0xFFf5f5f1)),
              )

            ],

          )
      ),

      backgroundColor: Color(0xFF221f1f),
      // foregroundColor: Colors.white,

    );
  }
}
