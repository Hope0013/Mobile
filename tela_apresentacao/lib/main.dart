import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Atividade Tela de Apresentação',
      home: const PerfilPage(),
    );
  }
}

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Color headerPink = const Color(0xFF8C4141);
    final Color backgroundGray = const Color(0xFFE0E0E0);
    final Color boxBrown = const Color(0xFF934242);

    return Scaffold(
      backgroundColor: backgroundGray,
      appBar: AppBar(
        backgroundColor: headerPink,
        elevation: 0,
        scrolledUnderElevation: 0,
        shape: const Border(),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Color(0xFF421717)),
            onPressed: () {
              print("Configurações");
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.zero,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 110,
                  width: double.infinity,
                  color: headerPink,
                ),
                Positioned(
                  top: 0, 
                  left: 60,
                  child: Row(
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        decoration: const BoxDecoration(
                          color: Color(0xFF421717),
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            'Nome do Usuário',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text('Biografia do Usuário'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: boxBrown,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildStatBox("CURTIDAS", "1.000.000", Icons.favorite),
                        _buildStatBox("SEGUIDORES", "1.000.000", Icons.groups),
                        _buildStatBox("POSTS", "1.000", Icons.image),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: boxBrown,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "Siga Para Mais Informações:",
                          style: TextStyle(
                            color: Color(0xFFFFDFD4),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.camera_alt, size: 30),
                              color: const Color(0xFFFFDFD4),
                              onPressed: () => print("Instagram"),
                            ),
                            IconButton(
                              icon: const Icon(Icons.facebook, size: 30),
                              color: const Color(0xFFFFDFD4),
                              onPressed: () => print("Facebook"),
                            ),
                            IconButton(
                              icon: const Icon(Icons.link, size: 30),
                              color: const Color(0xFFFFDFD4),
                              onPressed: () => print("LinkedIn"),
                            ),
                            IconButton(
                              icon: const Icon(Icons.code, size: 30),
                              color: const Color(0xFFFFDFD4),
                              onPressed: () => print("GitHub"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: boxBrown,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildListRow("Habilidades...", const Color(0xFFFFDFD4)),
                        _buildListRow("Empresas...", const Color(0xFFFFDFD4)),
                        _buildListRow("Projetos...", const Color(0xFFFFDFD4)),
                        _buildListRow("Prêmios...", const Color(0xFFFFDFD4)),
                        _buildListRow("Localização...", const Color(0xFFFFDFD4), isLast: true),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: headerPink,
        selectedItemColor: const Color(0xFF421717),
        unselectedItemColor: const Color(0xFF421717),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );
  }

  Widget _buildStatBox(String label, String value, IconData icon) {
    return Container(
      width: 85,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Icon(icon, size: 20),
          Text(
            value,
            style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
          ),
          Text(label, style: const TextStyle(fontSize: 9)),
        ],
      ),
    );
  }

  Widget _buildListRow(String title, Color cor, {bool isLast = false}) {
    return InkWell(
      onTap: () => print("Item '$title' clicado"),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              title,
              style: TextStyle(color: cor, fontWeight: FontWeight.bold),
            ),
          ),
          if (!isLast) Container(height: 1, color: cor.withOpacity(0.2)),
        ],
      ),
    );
  }
}