import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player=AudioPlayer()..setReleaseMode(ReleaseMode.loop);

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
title: '自傳app',
debugShowCheckedModeBanner: false,
theme: ThemeData(primarySwatch: Colors.green,),
home: HomePage(),
);
}
}

class HomePage extends StatefulWidget {
const HomePage({super.key});

@override
State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

final tabs=[
Screen1(),
Screen2(),
Screen3(),
Screen4(),
];

int previousIndex=0;
int currentIndex=0;

@override
Widget build(BuildContext context) {
if (currentIndex==0) player.play(AssetSource("maou_bgm_acoustic13.mp3"));
return Scaffold(
appBar: AppBar(
title: Text('C111154351 黃梓翔的自傳'),
titleTextStyle: TextStyle(
fontSize: 24,
fontWeight: FontWeight.bold,
fontFamily: "GenSekiGothic2-R",),
centerTitle: true,
backgroundColor: Colors.blueGrey,
),
body: tabs[currentIndex],
bottomNavigationBar: BottomNavigationBar(
type: BottomNavigationBarType.fixed,
backgroundColor: Colors.blueGrey[600]!,
selectedItemColor: Colors.white,
selectedFontSize: 20,
unselectedItemColor: Colors.black45,
unselectedFontSize: 15,
iconSize: 30,
currentIndex: currentIndex,
items: [
BottomNavigationBarItem(icon: currentIndex==0?Icon(Icons.home,size: 40,):Icon(Icons.home,size: 30,), label: '自我介紹',),
BottomNavigationBarItem(icon: currentIndex==1?Icon(Icons.school,size: 40,):Icon(Icons.school,size: 30,), label: '學習歷程',),
BottomNavigationBarItem(icon: currentIndex==2?Icon(Icons.schedule,size: 40,):Icon(Icons.schedule,size: 30,), label: '學習計畫',),
BottomNavigationBarItem(icon: currentIndex==3?Icon(Icons.engineering,size: 40,):Icon(Icons.engineering,size: 30,), label: '專業方向',),
],
onTap: (index) {
setState(() {
previousIndex=currentIndex;
currentIndex=index;
if (index==0) {
if (previousIndex==currentIndex) player.resume();
player.stop();
player.play(AssetSource("maou_bgm_acoustic13.mp3"));
}
if (index==1) {
if (previousIndex==currentIndex) player.resume();
player.stop();
player.play(AssetSource("maou_bgm_acoustic18.mp3"));
}
if (index==2) {
if (previousIndex==currentIndex) player.resume();
player.stop();
player.play(AssetSource("maou_bgm_acoustic49.mp3"));
}
if (index==3) {
if (previousIndex==currentIndex) player.resume();
player.stop();
player.play(AssetSource("maou_bgm_acoustic50.mp3"));
}
});
},
),

);
}
}

class Screen1 extends StatelessWidget {
Screen1({super.key});

String s1='我的名字是黃梓翔，2004年出生於桃園市，從治平高中電機科畢業後進入高雄科技大學電機工程系。'
'父親的工作是工人，母親則是家庭主婦，家庭經濟小康，氣氛融洽、無話不談。'
'父母從小讓我養成有責任心與努力不懈的精神，家人覺得自身的品格大於一切，要對自己做的事負責且問心無愧，自然而然也灌輸許多正向觀念給我，他們總會尊重我的決定，並給我許多建議，教我對事要有責任心與持之以恆。';
String s2='個人特質\n我是一個喜愛實作和多方嘗試的人，被電機的實作所深深吸引，加上父親的工作是負責廠務維修，從小就培養出我對電機方面濃厚的興趣，因而選擇走上電機這條路，高中在剛接觸到電路板設計時，那種面對新事物的感覺和解出問題的過程，讓我非常的有成就感，高中畢業後考量未來發展配合我有興趣的領域，最終選擇國立高雄科技大學
電機系就讀。';
String s3='未來展望\n未來希望能透過不斷地充實自己的能力與知識，有朝一日進入知名科技廠就業，以發揮大學及研究所所學為台灣的電機盡一份心力，不管將來遇到任何困難，都會時時提醒自己切勿忘記當初投入電機的初心，努力堅持不懈以實現自己的理想。';

@override
Widget build(BuildContext context) {
return Scaffold(
body: Container(
height: double.infinity,
width: double.infinity,
decoration: BoxDecoration(
image: DecorationImage(
image: AssetImage("51.jpg"),fit: BoxFit.cover,)
),
child: SingleChildScrollView(
child: Column(
children: [
//放標題
Padding(
padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
child: Text('關於自己', style: TextStyle(
fontSize: 30,
fontWeight: FontWeight.bold,
fontFamily: "GenSekiGothic2-H",
),
),
),
SizedBox(height: 15,),
//自傳部分
Container(
padding: EdgeInsets.all(20),
margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
decoration: BoxDecoration(
border: Border.all(color: Colors.amber, width:10),
borderRadius: BorderRadius.circular(10),
boxShadow: [
BoxShadow(
color: Colors.amberAccent,
offset: Offset(0, 10),
blurRadius: 10,
blurStyle: BlurStyle.solid,
),
],
),
child: Text('家庭背景', style: TextStyle(fontSize: 30, fontFamily: "GenSekiGothic2-R",),),
),
Container(
padding: EdgeInsets.all(20),
margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
decoration: BoxDecoration(
border: Border(
top: BorderSide(color: Colors.teal[900]!, width:15,),
bottom: BorderSide(color: Colors.teal[900]!, width:15,),
left: BorderSide(color: Colors.teal, width:10,),
right: BorderSide(color: Colors.teal, width:10,),
),
//borderRadius: BorderRadius.circular(10),
boxShadow: [
BoxShadow(color: Colors.white70, offset: Offset(0, 0)),
],
),
child: Text(s1, style: TextStyle(fontSize: 20, fontFamily: "GenSekiGothic2-R",),),
),
Container(
padding: EdgeInsets.all(20),
margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
decoration: BoxDecoration(
border: Border.all(color: Colors.amber, width:10),
borderRadius: BorderRadius.circular(10),
boxShadow: [
BoxShadow(
color: Colors.amberAccent,
offset: Offset(0, 10),
blurRadius: 10,
blurStyle: BlurStyle.solid,
),
],
),
child: Text('個人特質', style: TextStyle(fontSize: 30, fontFamily: "GenSekiGothic2-R",),),
),
Container(
padding: EdgeInsets.all(20),
margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
decoration: BoxDecoration(
border: Border(
top: BorderSide(color: Colors.teal[900]!, width:15,),
bottom: BorderSide(color: Colors.teal[900]!, width:15,),
left: BorderSide(color: Colors.teal, width:10,),
right: BorderSide(color: Colors.teal, width:10,),
),
//borderRadius: BorderRadius.circular(10),
boxShadow: [
BoxShadow(color: Colors.white70, offset: Offset(0,0),),
],
),
child: Text(s2, style: TextStyle(fontSize: 20, fontFamily: "GenSekiGothic2-R",),),
),
Container(
padding: EdgeInsets.all(20),
margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
decoration: BoxDecoration(
border: Border.all(color: Colors.amber, width:10),
borderRadius: BorderRadius.circular(10),
boxShadow: [
BoxShadow(
color: Colors.amberAccent,
offset: Offset(0, 10),
blurRadius: 10,
blurStyle: BlurStyle.solid,
),
],
),
child: Text('未來展望', style: TextStyle(fontSize: 30, fontFamily: "GenSekiGothic2-R",),),
),
Container(
padding: EdgeInsets.all(20),
margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
decoration: BoxDecoration(
border: Border(
top: BorderSide(color: Colors.teal[900]!, width:15,),
bottom: BorderSide(color: Colors.teal[900]!, width:15,),
left: BorderSide(color: Colors.teal, width:10,),
right: BorderSide(color: Colors.teal, width:10,),
),
//borderRadius: BorderRadius.circular(10),
boxShadow: [
BoxShadow(color: Colors.white70, offset: Offset(0,0),),
],
),
child: Text(s3, style: TextStyle(fontSize: 20, fontFamily: "GenSekiGothic2-R",),),
),
              SizedBox(height: 10,),
              Container(
                height: 300,
                width: 250,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.black54, width:2,),
                    bottom: BorderSide(color: Colors.black54, width:2,),
                    left: BorderSide(color: Colors.black26, width:2,),
                    right: BorderSide(color: Colors.black26, width:2,),
                  ),
                  image: DecorationImage(image: AssetImage("assets/c111151116_me.jpg"),fit: BoxFit.fill,),
                  boxShadow: [
                    BoxShadow(color: Colors.black, blurRadius: 10,)
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black54, width:5,),
                  boxShadow: [
                    BoxShadow(color: Colors.white70, )
                  ],
                ),
                child: Text('我的照片',
                  style: TextStyle(fontSize: 20, fontFamily: "GenSekiGothic2-R",),),
              ),
SizedBox(height: 15,),
],
),