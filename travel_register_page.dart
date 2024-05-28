import 'package:flutter/material.dart';
import '../widgets/CustomTextFormField.dart';



class TravelRegisterationPage extends StatelessWidget {
  final TextEditingController Name = TextEditingController();
  final TextEditingController CountryComingFrom = TextEditingController();
  final TextEditingController PlacesToVisitInEgypt = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                child: ClipPath(
                  clipper: WaveClipper(),
                  child: Container(
                    color: Color.fromARGB(255, 35, 218, 244),
                    height: 450,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          radius: 100,
                          backgroundImage: AssetImage('assets/images/registerImage.webp'),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.grey[200],
                              ),
                              onPressed: () {},
                              label: Text(
                                "Tourist",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 35, 218, 244),
                                ),
                              ),
                              icon: Icon(
                                Icons.person,
                                color: Color.fromARGB(255, 35, 218, 244),
                                size: 25,
                              ),
                            ),
                            SizedBox(width: 20),
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.grey[200],
                              ),
                              onPressed: () {},
                              label: Text(
                                "Guide",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 35, 218, 244),
                                ),
                              ),
                              icon: Icon(
                                Icons.person,
                                color: Color.fromARGB(255, 35, 218, 244),
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  CustomTextFormField(
                    controller: Name,
                    hintText: 'Name',
                    icon: Icons.person,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                  CustomTextFormField(
                    controller: CountryComingFrom,
                    hintText: 'Country Coming From',
                    icon: Icons.flag,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your country';
                      }
                      return null;
                    },
                  ),
                  CustomTextFormField(
                    controller: PlacesToVisitInEgypt,
                    hintText: 'Places to Visit in Egypt',
                    icon: Icons.place,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the places you want to visit';
                      }
                      return null;
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary:  Colors.grey[200]
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {

                    }
                  },
                  child: Text('Submit',style: TextStyle( color: Color.fromARGB(255, 35, 218, 244),fontWeight: FontWeight.bold,fontSize: 25)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    // Define your custom clipping path here
    path.lineTo(0, size.height);
    var firstStart=Offset(size.width/5,size.height);
    var firstEnd=Offset(size.width/2.25, size.height-50.0);
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart=Offset(size.width-(size.width/3.24),size.height-105);
    var secondEnd=Offset(size.width, size.height-10.0);
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}



