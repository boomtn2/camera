import 'package:camera_da/controllers/camera.dart';
import 'package:camera_da/font_text.dart';
import 'package:camera_da/models/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../add_camera/dropdown.dart';

class EditCamera extends StatefulWidget {
  const EditCamera({super.key, required this.camera});
  final Camera camera;
  @override
  State<EditCamera> createState() => _EditCameraState();
}

class _EditCameraState extends State<EditCamera> {
  final TextEditingController name = TextEditingController();
  final TextEditingController model = TextEditingController();
  final TextEditingController port = TextEditingController();
  final TextEditingController address = TextEditingController();
  final formKey = GlobalKey<FormState>();
  var _controller = Get.find<ControllerCamera>();
  String _dropdownValue = "";
  void dropdownCallback(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        _dropdownValue = selectedValue;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    name.text = widget.camera.name;
    model.text = widget.camera.model;
    address.text = widget.camera.cameraAddress;
    port.text = widget.camera.port;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Camera"),
      ),
      body: SingleChildScrollView(
        child: Card(
          color: Colors.grey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(
                  Icons.keyboard_arrow_down,
                ),
                title: Text(
                  "Camera 1",
                  style: textStyteTitle,
                ),
              ),
              Form(
                  key: formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Name:",
                              style: textStyteTitle,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2,
                              child: TextFormField(
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.white),
                                decoration: const InputDecoration(
                                  hintStyle: TextStyle(
                                      fontSize: 17.0, color: Colors.white),
                                  labelStyle: TextStyle(
                                      fontSize: 20.0, color: Colors.white),
                                  errorStyle: TextStyle(fontSize: 20.0),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                controller: name,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Chưa nhập';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Brand:",
                              style: textStyteTitle,
                            ),
                            DropDowCustom(),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Model:",
                              style: textStyteTitle,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2,
                              child: TextFormField(
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.white),
                                decoration: const InputDecoration(
                                  hintStyle: TextStyle(
                                      fontSize: 17.0, color: Colors.white),
                                  labelStyle: TextStyle(
                                      fontSize: 20.0, color: Colors.white),
                                  errorStyle: TextStyle(fontSize: 20.0),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                controller: model,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Chưa nhập';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Camera address:",
                              style: textStyteTitle,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2,
                              child: TextFormField(
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.white),
                                decoration: const InputDecoration(
                                  hintStyle: TextStyle(
                                      fontSize: 17.0, color: Colors.white),
                                  labelStyle: TextStyle(
                                      fontSize: 20.0, color: Colors.white),
                                  errorStyle: TextStyle(fontSize: 20.0),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                controller: address,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Chưa nhập';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Port:",
                              style: textStyteTitle,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2,
                              child: TextFormField(
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.white),
                                decoration: const InputDecoration(
                                  hintStyle: TextStyle(
                                      fontSize: 17.0, color: Colors.white),
                                  labelStyle: TextStyle(
                                      fontSize: 20.0, color: Colors.white),
                                  errorStyle: TextStyle(fontSize: 20.0),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                controller: port,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Chưa nhập';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height,
              )
            ],
          ),
        ),
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.grey),
              ),
              onPressed: () {
                Get.back();
              },
              child: Text("Cancel")),
          SizedBox(
            width: 10,
          ),
          ElevatedButton(
              onPressed: () {
                bool? isValidated = formKey.currentState?.validate();

                if (isValidated == true) {
                  Camera camera = Camera(
                      name: name.text,
                      brand: _dropdownValue,
                      model: model.text,
                      cameraAddress:
                          address.text.toString().replaceAll(' ', ''),
                      port: port.text,
                      listTimeLine: []);

                  _controller.edit(widget.camera, camera);

                  Get.back();
                }
              },
              child: Text("ADD"))
        ],
      ),
    );
  }
}
