import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:whatsappstickerapi/whatsappstickerapi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  check() async {
    WhatsappstickerApi.addToJson(
        identiFier: "1",
        name: "Cute Paandoo",
        publisher: "Trending Stickers",
        trayimagefile: "1.png",
        publisheremail: "Chauhantheleader@gmail.com",
        publisherwebsite: "",
        privacypolicywebsite:
            "http://kethod.com/apps/trending-stickers/privacy-policy.html",
        licenseagreementwebsite: "",
        imagedataversion: "1",
        stickerImages: ["1.webp", "2.webp", "3.webp"]);
    return await WhatsappstickerApi.addStickerPackToWhatsApp(
        identifier: "1", name: "Cute Paandoo");
  }

  @override
  void initState() {
    log(check().toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
