import 'package:flutter/material.dart';

class Register extends StatelessWidget {

  var _formRegister = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EVN Register'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // buildTestForm(context),
                Image.asset("assets/images/evn.png"),
                buildFormEVN(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildFormEVN(BuildContext context) {
    return Container(
      child: Form(
        key: _formRegister,
        child: Column(
          children: [
            //Ten dang nhap
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
              // controller: _pass,
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
            SizedBox(height: 20),
            //Nhap lai mat khau
            TextFormField(
              // controller: _pass,
              obscureText: true,
              validator: (value){
                if(value==null || value.isEmpty)
                  return "Mật khẩu nhập lại không được để trống!";
                else{
                  if(value.length < 5)
                    return "Mật khẩu không đúng";
                }
                return null;
              },
              decoration: InputDecoration(
                  label: Text("Nhập lại mật khẩu", style: TextStyle(
                      color: Colors.red
                  ),),
                  hintText: "Confirm password",
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
                  if (_formRegister.currentState!.validate()) {

                    // Form OK

                  } else {
                    // Form not OK
                  }
                },
                child: const Text("Đăng ký"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
