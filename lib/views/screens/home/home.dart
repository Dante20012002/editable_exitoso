import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:editable/views/screens/home/home_view_model.dart';
import 'package:editable/views/widgets/my_custom_text_form_field.dart';

import '../../styles/general_styles.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  HomeViewModel _homeVM = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: Color.fromARGB(255, 128, 6, 6),
        ),
        Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 40),
              child: Container(
                width: 240,
                height: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.black,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.network(
                    'https://www.hubspot.com/hubfs/media/lenguajesprogramacion.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25),
              child: Text(
                'Santiago PG',
                style: styleTextTitle(context, 30),
              ),
            ),
            Form(
              child: Column(
                children: [
                  // TextFormField(
                  //   decoration: InputDecoration(
                  //     hintText: 'Email',
                  //     border: const OutlineInputBorder(
                  //       borderRadius: BorderRadius.all(Radius.circular(19))
                  //     )
                  //   ),
                  // ),
                  // TextFormField(
                  //   obscureText: true,
                  //   decoration: InputDecoration(
                  //       hintText: 'Contraseña',
                  //       border: const OutlineInputBorder(
                  //           borderRadius: BorderRadius.all(Radius.circular(19))
                  //       )
                  //   ),
                  // ),
                  myCustomTextFormField(
                      controller: _homeVM.getEmailController(),
                      hintText: 'Email',
                      onChanged: (value) {
                        setState(() {
                          _homeVM.validateEmail();
                        });
                      }
                  ),
                  const SizedBox(height: 10,),
                  _homeVM.getIsValidEmail() ? const SizedBox(height: 10,) : Text('error'),
                  const SizedBox(height: 10,),
                  myCustomTextFormField(
                      controller: _homeVM.getPasswordController(),
                      hintText: 'Contraseña', obscureText: true
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    ));
  }
}
