import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class UserProfilePage extends StatefulWidget {
  UserProfilePage({Key? key}) : super(key: key);

  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  bool _isEditing = false;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _dobController = TextEditingController();
  TextEditingController _genderController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  File? _image; // Store the selected image
  final picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    // Initialize the controller values with dummy data
    _nameController.text = "Bhishan Prasad Sah";
    _emailController.text = "bhishansah@gmail.com";
    _phoneController.text = "+91-9728161275";
    _dobController.text = "09-Jun-1999";
    _genderController.text = "male";
    _addressController.text = "Lahan-7 Siraha, Nepal";
  }

  void _toggleEditing() {
    setState(() {
      _isEditing = !_isEditing;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        backgroundColor: Color(0xFF2502C2),
        elevation: 0,
        centerTitle: true,
        title: Text(
          " My Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
      ),
      backgroundColor: Color(0xFFFFFEFE),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Blue Section
              Container(
                width: 411,
                decoration: BoxDecoration(
                  color: Color(0xFF2502C2),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Back Button
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Stack(
                            children: [
                              GestureDetector(
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(25),
                                      bottomLeft: Radius.circular(8),
                                      topLeft: Radius.circular(25),
                                      topRight: Radius.circular(8),
                                    ),
                                  ),
                                  child: _image != null
                                      ? ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          child: Image.file(
                                            _image!,
                                            fit: BoxFit.cover,
                                          ),
                                        )
                                      : Icon(
                                          Icons.add_a_photo,
                                          color: Color.fromARGB(255, 0, 5, 158),
                                          size: 30,
                                        ),
                                ),
                              ),
                              if (_isEditing)
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white.withOpacity(0.1),
                                    ),
                                    child: Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Profile picture',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const SizedBox(height: 12),
                      ],
                    ),
                  ],
                ),
              ),
              // White Section
              const SizedBox(height: 15),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Personal Details',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          if (!_isEditing)
                            ElevatedButton(
                              onPressed: _toggleEditing,
                              child: Text(
                                'Edit',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                        ],
                      ),
                    ),
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        enabled: _isEditing,
                      ),
                      readOnly: !_isEditing,
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        enabled: _isEditing,
                      ),
                      readOnly: !_isEditing,
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      controller: _phoneController,
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        enabled: _isEditing,
                      ),
                      readOnly: !_isEditing,
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      controller: _dobController,
                      decoration: InputDecoration(
                        labelText: 'Date Of Birth',
                        enabled: _isEditing,
                      ),
                      readOnly: !_isEditing,
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      controller: _genderController,
                      decoration: InputDecoration(
                        labelText: 'Gender',
                        enabled: _isEditing,
                      ),
                      readOnly: !_isEditing,
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      controller: _addressController,
                      decoration: InputDecoration(
                        labelText: 'Address',
                        enabled: _isEditing,
                      ),
                      readOnly: !_isEditing,
                    ),
                    const SizedBox(height: 20),
                    if (_isEditing)
                      ElevatedButton(
                        onPressed: () {
                          // Save changes logic here
                          _toggleEditing();
                        },
                        child: Text(
                          'Save',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 23),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 0,
                  top: 5,
                ),
                child: Container(
                  width: 600,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color(0xFF2502C2),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                  ),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Power By :- flutter',
                          style: TextStyle(
                            color: Color(0xFFB5B4B4),
                            fontSize: 20,
                            letterSpacing: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
