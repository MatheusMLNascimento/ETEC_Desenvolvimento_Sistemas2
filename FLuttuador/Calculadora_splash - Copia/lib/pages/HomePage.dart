import 'package:flutter/material.dart';
import 'package:calculadora_splash/services/prefs_service.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela Inicial"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                PrefsService.logout();
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/login', (_) => true);
              },
              icon: const Icon(Icons.logout)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountEmail:
                  Text("matheus@gmail.com", style: TextStyle(fontSize: 19)),
              accountName:
                  Text("Matheus Nascimento", style: TextStyle(fontSize: 22)),
              currentAccountPicture: CircleAvatar(
                child: Text("MN"),
              ),
            ),
            ListTile(
              title: const Text('Home', style: TextStyle(fontSize: 18)),
              onTap: () {
                // Não faz nada pois está é a página atual
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Calculadora', style: TextStyle(fontSize: 18)),
              onTap: () {
                Navigator.pushNamed(context, "/calc");
              },
            ),
          ],
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            "https://assets.materialup.com/uploads/bb73a507-7313-489c-b10c-2a97e7e393bb/preview.png",
            width: 220,
            height: 220,
          ),
          const SizedBox(height: 15),
          const Text('Versão 2.0.2023',
              style: TextStyle(fontSize: 30, color: Color(0xff777777)))
        ],
      )),
    );
  }
}
