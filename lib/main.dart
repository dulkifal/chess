import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await  Future.delayed(const Duration(seconds: 3));
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
@override
Widget build(BuildContext context) {
	return MaterialApp(
	title: 'chess',
	theme: ThemeData(
		primaryColor: Color.fromARGB(253, 59, 17, 0),
    primaryColorLight: Color.fromARGB(225, 197, 153, 0),
    secondaryHeaderColor: Color.fromARGB(255, 233, 192, 11),
		splashColor: Colors.transparent,
		highlightColor: Colors.transparent,
		hoverColor: Colors.transparent,
	),
	debugShowCheckedModeBanner: false,
	home: const HomePage(),
	);
}
}

class HomePage extends StatefulWidget {
const HomePage({Key? key}) : super(key: key);

@override
_HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int pageIndex = 0;

final pages = [
	const Page1(),
	const Page2(),
	const Page3(),
	const Page4(),
];

@override
Widget build(BuildContext context) {
	return Scaffold(
	backgroundColor: const Color(0xffC4DFCB),
	appBar: AppBar(
    titleSpacing: 0,
    automaticallyImplyLeading: false,
    leadingWidth: 100,
		leading: Icon(
		Icons.person_rounded,
		color: Theme.of(context).primaryColor,
		),
    
		title: Text(
		"Coins: 100 Rs",
		style: TextStyle(
			color: Theme.of(context).secondaryHeaderColor,
			fontSize: 25,
			fontWeight: FontWeight.w600,
		),
		),
		centerTitle: true,
		backgroundColor: Colors.white,
	),
	body: pages[pageIndex],
	bottomNavigationBar: buildMyNavBar(context),
	);
}

Container buildMyNavBar(BuildContext context) {
	return Container(
	height: 60,
	decoration: BoxDecoration(
		color: Theme.of(context).primaryColor,
		borderRadius: const BorderRadius.only(
		topLeft: Radius.circular(20),
		topRight: Radius.circular(20),
		),
	),
	child: Row(
		mainAxisAlignment: MainAxisAlignment.spaceAround,
		children: [
		IconButton(
			enableFeedback: false,
			onPressed: () {
			setState(() {
				pageIndex = 0;
			});
			},
			icon: pageIndex == 0
				? const Icon(
					Icons.home_filled,
					color: Colors.white,
					size: 35,
				)
				: const Icon(
					Icons.home_outlined,
					color: Colors.white,
					size: 35,
				),
		),
		IconButton(
			enableFeedback: false,
			onPressed: () {
			setState(() {
				pageIndex = 1;
			});
			},
			icon: pageIndex == 1
				? const Icon(
					Icons.play_circle_filled,
					color: Colors.white,
					size: 35,
				)
				: const Icon(
					Icons.play_circle_outline_sharp,
					color: Colors.white,
					size: 35,
				),
		),
		IconButton(
			enableFeedback: false,
			onPressed: () {
			setState(() {
				pageIndex = 2;
			});
			},
			icon: pageIndex == 2
				? const Icon(
					Icons.settings,
					color: Colors.white,
					size: 35,
				)
				: const Icon(
					Icons.settings_outlined,
					color: Colors.white,
					size: 35,
				),
		),
		IconButton(
			enableFeedback: false,
			onPressed: () {
			setState(() {
				pageIndex = 3;
			});
			},
			icon: pageIndex == 3
				? const Icon(
					Icons.person,
					color: Colors.white,
					size: 35,
				)
				: const Icon(
					Icons.person_outline,
					color: Colors.white,
					size: 35,
				),
		),
		],
	),
	);
}
}

class Page1 extends StatelessWidget {
const Page1({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
	return Container(
	color: const Color(0xffC4DFCB),
	child: Center(
		child: Text(
		"Page Number 1",
		style: TextStyle(
			color: Colors.green[900],
			fontSize: 45,
			fontWeight: FontWeight.w500,
		),
		),
	),
	);
}
}

class Page2 extends StatelessWidget {
const Page2({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
	return Container(
	color: const Color(0xffC4DFCB),
	child: Center(
		child: Text(
		"Page Number 2",
		style: TextStyle(
			color: Colors.green[900],
			fontSize: 45,
			fontWeight: FontWeight.w500,
		),
		),
	),
	);
}
}

class Page3 extends StatelessWidget {
const Page3({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
	return Container(
	color: const Color(0xffC4DFCB),
	child: Center(
		child: Text(
		"Page Number 3",
		style: TextStyle(
			color: Colors.green[900],
			fontSize: 45,
			fontWeight: FontWeight.w500,
		),
		),
	),
	);
}
}

class Page4 extends StatelessWidget {
const Page4({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
	return Container(
	color: const Color(0xffC4DFCB),
	child: Center(
		child: Text(
		"Page Number 4",
		style: TextStyle(
			color: Colors.green[900],
			fontSize: 45,
			fontWeight: FontWeight.w500,
		),
		),
	),
	);
}
}
