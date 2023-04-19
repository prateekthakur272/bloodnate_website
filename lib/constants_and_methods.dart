import 'package:flutter/material.dart';

String tagLine = 'Be a hero, donate blood, Bloodnate makes it simple.';

AppBar appBar({required String title}) {
  return AppBar(
    title: Text(title),
    backgroundColor: Colors.transparent,
    foregroundColor: Colors.white,
  );
}

bool isMobile(BuildContext context) {
  return MediaQuery.of(context).size.width < 480;
}

bool isTablet(BuildContext context) {
  return MediaQuery.of(context).size.width < 800;
}

bool isDesktop(BuildContext context) {
  return MediaQuery.of(context).size.width > 800;
}

String desc =
    'Bloodnate is an idea of digitalising all blood banks of india, bloodnate would act as an interface between all the blood centers and blood banks to make blood donation and blood searching easy, quick and on finger tips';

String intro =
    'Bloodnate is a mobile application designed to help people find required blood components from blood banks. The app provides a convenient way for users to check the availability of blood components, such as whole blood, platelets, plasma, and other blood products, through their smartphones';
String working =
    'To use Bloodnate, users need to create an account by providing their personal details and blood group. Once they have registered, they can search for blood components by selecting their required blood group and the type of blood component they need. The app then displays a list of nearby blood banks with the availability status of the requested blood component.';
String canDo =
    'The app also allows users to view the contact information of the blood bank, including its address, phone number, and website, so they can contact the blood bank directly to make arrangements for donation or collection. Additionally, the app offers features such as blood donation reminders and the ability to share donation details on social media to encourage more people to donate blood.';
String why =
    'Bloodnate aims to help people find the blood components they need quickly and efficiently, while also promoting blood donation and raising awareness about the importance of maintaining an adequate blood supply in blood banks.';
String findBlood =
    'Bloodnate has a "Find Blood" feature that allows users to search for a required blood component, such as whole blood, platelets, plasma, or other blood products, and then displays a list of nearby blood centers where the component is available. This feature can save time and effort for people who urgently need blood components by providing a convenient and easy-to-use platform to search for available blood centers in their vicinity.\n\nJust choose blood group and component and results are on the screen within a few seconds';
String donateBlood =
    "Bloodnate's 'Donate Blood' feature encourages users to donate blood to help maintain an adequate blood supply in blood banks. The feature provides information about blood donation, including eligibility criteria, the donation process, and the benefits of donating blood.\n\nTo use the 'Donate Blood' feature, users first need to register on the app and provide their blood group and other personal details. The app then displays information about blood donation, including the eligibility criteria and any restrictions based on the user's medical history.";

Widget get watermark {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: const [
      Text('Developped and maintained by'),
      Text(
        'Prateek Thakur',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      )
    ],
  );
}
