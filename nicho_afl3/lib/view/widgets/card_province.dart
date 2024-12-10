part of 'widgets.dart';

class CardProvince extends StatelessWidget {
  final Province province;
  const CardProvince(this.province, {super.key});

  @override
  Widget build(BuildContext context) {
    Province prov = province;

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [Colors.blue, Color.fromRGBO(25, 118, 210, 1)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.all(16),
          title: Text(
            prov.province.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          subtitle: Text(
            "Province ID: ${prov.provinceId}",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),
          trailing: IconButton(
            icon: Icon(Icons.info_outline, color: Colors.white),
            onPressed: () {

            },
          ),
        ),
      ),
    );
  }
}