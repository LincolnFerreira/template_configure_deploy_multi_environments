import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:template_configure_deploy_multi_environments/prod_firebase_options.dart';

import 'flavors.dart';

import 'main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.prod;
  String file = ".env.${F.name}";
  print(file);

  await dotenv.load(fileName: ".env.prod");
  await Firebase.initializeApp(
      name: "prod", options: ProdFirebaseOptions.currentPlatform);

  // Acessa o nome do projeto do Firebase
  String? projectId = Firebase.app().options.projectId;
  print("Firebase Project ID: $projectId");
  await runner.main();
}
