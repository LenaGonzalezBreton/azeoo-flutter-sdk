import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// API publique du SDK AZEOO.
///
/// Une app hôte (React Native, Android natif, iOS natif…) peut appeler
/// AzeooSdk.userProfileScreen(userId: ...) pour afficher la page profil.
class AzeooSdk {
  static Widget userProfileScreen({required int userId}) {
    return ProviderScope(
      overrides: [
        // Si besoin on override certains providers ici.
        // userIdProvider.overrideWithValue(userId),
      ],
      child: _UserProfileRoot(userId: userId),
    );
  }
}

class _UserProfileRoot extends StatelessWidget {
  final int userId;

  const _UserProfileRoot({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Profil utilisateur")),
        body: Center(
          child: Text(
            "SDK AZEOO - Profil de l'utilisateur #$userId\n\n"
                "Étape 1 : structure OK",
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
