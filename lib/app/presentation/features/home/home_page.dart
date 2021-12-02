import 'package:flutter/material.dart';
import 'package:take_your_umbrella/app/presentation/shared/components/information_row_component.dart';
import 'package:take_your_umbrella/app/presentation/shared/theme/app_typography.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 33, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Digite o nome da cidade que deseja buscar',
                style: AppTypography.textLarge,
              ),
            ),
            const SizedBox(
              height: 38,
            ),
            const TextField(
              decoration: InputDecoration(
                  isDense: true, // Added this
                  contentPadding: EdgeInsets.all(5),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  hintText: "Ex: Palmas, TO",
                  fillColor: Colors.white),
            ),
            const SizedBox(
              height: 14,
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFFFE9800)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () {},
              child: Text(
                'Buscar',
                style: AppTypography.textMedium,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Center(
                child: Text(
              "Ou",
              style: AppTypography.textLarge,
            )),
            const SizedBox(
              height: 14,
            ),
            Center(
                child: Text(
              "Localizar sua região",
              style: AppTypography.textLarge,
            )),
            Center(
              child: SizedBox(
                width: 130,
                height: 130,
                child: IconButton(
                  color: Color(0xFFFE9800),
                  icon: const Icon(
                    Icons.navigation_rounded,
                    size: 130,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            const InformationRow(),
          ],
        ),
      ),
    );
  }
}
