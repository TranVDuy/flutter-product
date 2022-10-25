import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project_learning_g1/register.dart';
import 'food_page2.dart';

class LoginPage extends StatelessWidget {

  var _formKey = GlobalKey<FormState>();
  var _formUserName = GlobalKey<FormState>();
  var _formPass = GlobalKey<FormState>();

  final TextEditingController _userName = TextEditingController();
  final TextEditingController _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EVN login'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // buildTestForm(context),
              Image.asset("assets/images/evn.png"),
              buildFormEVN(context)
            ],
          ),
        ),
      ),
    );
  }

  buildTestForm(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  validator: (value){
                    if(value==null || value.isEmpty)
                      return "Vui lòng nhập tên đăng nhập";
                    else{
                      if(value.length < 5)
                        return "Tên đăng nhập phải lớn hơn 5 ký tự";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      label: Text("Tên đăng nhập"),
                      hintText: "Enter your UseName",
                      prefixIcon: Icon(Icons.person)
                  ),
                ),
                ElevatedButton(
                    onPressed: (){
                      if(_formKey.currentState!.validate()){

                      }
                      else{

                      }
                    },
                    child: Text("Okela")
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  buildFormEVN(BuildContext context) {
    return Container(
      child: Form(
        key: _formUserName,
        child: Column(
          children: [
            //Ten dang nhap
            TextFormField(
              controller: _userName,
              validator: (value){
                if(value==null || value.isEmpty)
                  return "Vui lòng nhập tên đăng nhập";
                else{
                  if(value.length < 5)
                    return "Tên đăng nhập phải lớn hơn 5 ký tự";
                }
                return null;
              },
              decoration: InputDecoration(
                  label: Text("Tên đăng nhập", style: TextStyle(
                    color: Colors.red
                  ),),
                  hintText: "Enter your usename",
                  prefixIcon: Icon(Icons.person),
                  focusColor: Colors.red,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                  )
              ),
            ),
            SizedBox(height: 20),
            //Mat khau
            TextFormField(
              controller: _pass,
              obscureText: true,
              validator: (value){
                if(value==null || value.isEmpty)
                  return "Vui lòng nhập mật khẩu";
                else{
                  if(value.length < 5)
                    return "Mật khẩu không đúng";

                }
                return null;
              },
              decoration: InputDecoration(
                  label: Text("Mật khẩu", style: TextStyle(
                    color: Colors.red
                  ),),
                  hintText: "Enter your password",
                  prefixIcon: Icon(Icons.key),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                  )
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    minimumSize: const Size.fromHeight(50),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                    padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                onPressed: () {
                  if (_formUserName.currentState!.validate()) {

                    // Form OK
                    Login(context, _userName.text.toString(), _pass.text.toString());

                  } else {
                    // Form not OK
                  }
                },
                child: const Text("Đăng nhập"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  minimumSize: const Size.fromHeight(50),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
              },
              child: const Text("Đăng ký"),
            ),
          ],
        ),
      ),
    );
  }

  void Login(BuildContext context, String userName, String passWord) async{
      var url = 'https://fakestoreapi.com/auth/login';
      Map data =
      {
        'username': userName,
        'password': passWord,
      };
      // print(userName);
      // print(passWord);
      var response = await http.post(Uri.parse(url), body: data);
      if(response.statusCode == 200){
        Navigator.push(context, MaterialPageRoute(builder: (context) => FoodPage2()));
      }
      else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Đăng nhập thất bại!")));
      }
      // return Future<bool>.value(false);

  }
}


