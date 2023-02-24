import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/home.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final TextEditingController taiKhoanController = TextEditingController();
  final TextEditingController matKhauController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(color: Colors.blue
            // image: DecorationImage(
            //     image: AssetImage("assets/images/bgr_login.jpg"),
            //     fit: BoxFit.fill)
            ),
        child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Card(
                    color: const Color.fromARGB(131, 158, 158, 158),
                    child: TextFormField(
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                      decoration: const InputDecoration(
                        hintStyle:
                            TextStyle(fontSize: 17.0, color: Colors.white),
                        labelStyle:
                            TextStyle(fontSize: 20.0, color: Colors.white),
                        errorStyle: TextStyle(fontSize: 20.0),
                        prefixIcon: Icon(Icons.account_box),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        hintText: 'Nhập tài khoản',
                        labelText: 'Tài khoản',
                      ),
                      controller: taiKhoanController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Chưa nhập tài khoản';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Card(
                    color: const Color.fromARGB(131, 158, 158, 158),
                    child: TextFormField(
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                      decoration: const InputDecoration(
                        hintStyle:
                            TextStyle(fontSize: 17.0, color: Colors.white),
                        labelStyle:
                            TextStyle(fontSize: 20.0, color: Colors.white),
                        errorStyle: TextStyle(fontSize: 20.0),
                        prefixIcon: Icon(Icons.password),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        hintText: 'Nhập mật khẩu',
                        labelText: 'Mật khẩu',
                      ),
                      controller: matKhauController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Chưa nhập mật khẩu';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () async {
                        bool? isValidated = formKey.currentState?.validate();
                        String taiKhoan = taiKhoanController.text;
                        String matKhau = matKhauController.text;

                        if (isValidated == true) {
                          Get.to(() => ScreenHome());
                        }
                      },
                      icon: const Icon(Icons.login),
                      label: const Text("Đăng nhập"),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
