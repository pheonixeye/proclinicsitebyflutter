import 'package:url_launcher/url_launcher.dart';

const String fb = 'https://www.facebook.com/kzproclinic';
const String inn = 'https://www.instagram.com/proclinicsystem/';
const String yt = 'https://www.youtube.com/channel/UCRNJVK08a5LqD1o9uLDATbw';
const String ytR =
    'https://www.youtube.com/playlist?list=PLxx10GSDAYiv0V1NG0m7zHu-3TRob-Pq_';
const String ytC =
    'https://www.youtube.com/playlist?list=PLxx10GSDAYiskBzBZRQhAomr8lp7wYSnw';

const String li = 'https://www.linkedin.com/in/karim-zaher-proclinic/';
const String ws = 'https://kareemzaher.com/';
const String phone = '+201555905768';

Future launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

final Uri emailLaunchUri = Uri(
  scheme: 'mailto',
  path: 'proclinic@kareemzaher.com',
  // queryParameters: {'subject': 'Inquiring about ProClinic System.'}
);

final Uri phone1 = Uri(scheme: 'tel', path: '+201555905768');
