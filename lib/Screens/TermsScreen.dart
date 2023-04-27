// ignore_for_file: use_build_context_synchronously, deprecated_member_use


import 'package:flutter/material.dart';


class TermsScreen extends StatefulWidget {
  const TermsScreen({super.key});

  @override
  State<TermsScreen> createState() => _SettingsState();
  
}




class _SettingsState extends State<TermsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black, elevation: 0,),
      backgroundColor: Colors.black,
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(50.0),
            child: Text(
          'TERMS AND CONDITIONS\n\nWelcome to BookMe, a mobile application that allows you to reserve seats at AUB Jafet Silent Library, as well as offering other features such as a To-Do List. These Terms and Conditions outline the rules and regulations for the use of the BookMe application.\n\nBy accessing or using the BookMe application, you agree to be bound by these Terms and Conditions. If you do not agree with any part of these Terms and Conditions, then you may not access the application.\n\n1. Use of the Application\n\n1.1. You must be at least 18 years old or have the consent of a parent or legal guardian to use the BookMe application.\n\n1.2. You agree to use the BookMe application only for lawful purposes and in accordance with these Terms and Conditions.\n\n1.3. You agree not to use the BookMe application for any unlawful purpose, including but not limited to, transmitting or uploading any material that contains viruses, Trojan horses, worms, or any other harmful or malicious code. \n\n1.4. You agree not to use the BookMe application to harass, threaten, or abuse other users, or to violate their privacy or intellectual property rights. \n\n1.5. You agree not to use the BookMe application to conduct any commercial activities or solicit any users for commercial purposes.\n\n 2. Reservation of Seats \n\n2.1. The BookMe application allows you to reserve seats at AUB Jafet Silent Library. You agree to use this feature only for personal and non-commercial purposes. \n\n2.2. You agree to follow the rules and regulations of AUB Jafet Silent Library when using the BookMe application to reserve seats. This includes, but is not limited to, arriving on time for your reservation, respecting the quiet environment of the library, and following any other rules or regulations set by the library. \n\n2.3. You agree to cancel your reservation if you are unable to attend, in order to free up the seat for other users. \n\n2.4. The BookMe application is not responsible for any issues that may arise with your reservation, such as a seat being unavailable or technical difficulties. \n\n3. To-Do List\n\n3.1. The BookMe application also offers a To-Do List feature, allowing you to create and manage tasks and reminders. \n\n3.2. You agree to use this feature only for personal and non-commercial purposes. 3.3. The BookMe application is not responsible for any issues that may arise with the To-Do List feature, such as data loss or technical difficulties.\n\n 4. Intellectual Property \n\n4.1. The BookMe application and all its contents, including but not limited to text, graphics, logos, images, and software, are the property of BookMe or its licensors and are protected by copyright, trademark, and other intellectual property laws. \n\n4.2. You agree not to reproduce, modify, distribute, display, perform, or use any of the BookMe applications contents without the prior written consent of BookMe.\n\n5. Termination \n\n5.1. BookMe reserves the right to terminate or suspend your access to the BookMe application, with or without notice, at any time and for any reason. \n\n5.2. You may also terminate your use of the BookMe application at any time.\n\n6. Disclaimer of Warranties. \n\n6.1. The BookMe application is provided "as is" and without warranty of any kind, either express or implied, including, but not limited to, the implied warranties of merchantability and fitness for a particular purpose. \n\n6.2. BookMe does not warrant that the BookMe application will be uninterrupted or error-free, that defects will be corrected, or that the BookMe application or its server is free of viruses',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ],
      )
    );
      
  }
}
