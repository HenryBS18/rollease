part of 'widgets.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7388,
                height: 132,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/Logo Utama.png",
                      width: 132,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi Henry",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Profile"),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.payment),
                title: const Text("Payment"),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.history),
                title: const Text("Riding History"),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.airplane_ticket),
                title: const Text("Promos"),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.assignment_turned_in),
                title: const Text("Terms & Conditions"),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Settings"),
                onTap: () {},
              ),
              const Divider(),
            ],
          )
        ],
      ),
    );
  }
}