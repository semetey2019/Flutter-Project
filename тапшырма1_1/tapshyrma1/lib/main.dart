import 'package:flutter/material.dart';
//тузуп аткан проектибиздин баары импорттоп иштетип берет импортсуз проект иштебейт
void main() {
  //воид эч нерсе кайтарбайт.муну мн негизги ф.яны иштетебиз
  //меин негизги ф.я негизги ф.я экенин кашаны ачып жабабыз ж.а фигурный каша денеси 
  runApp(const MyApp());
}
//ранап тиркеменин башталышы. ф.я баштоо. ал ичине виджет алат
class MyApp extends StatelessWidget {
  //мейапп класс же виджет аталышы.мунун ордуна озубуз ат койсок болот
  //класс мейап ал муруас алат
  //эхденс мурас алуу
  const MyApp({super.key});
  //конст абалды озгортпойбуз ушул бойдон калсын десек берилет
  //конструктор класса
  @override
  //оверрайд эки оверрайд болот. бироосу атасы и баласы
  //атасы жонокой эле ишти жасайт баласы аны озгортуп кооздоп бышыктайт
  Widget build(BuildContext context) {
    //виджет билд озуно виджет алат. сурот иконкаларды кое алабыз
    //билд куруу деген. ал озуно виджет алат
    return MaterialApp(
      //ретурн кайтаруу.материал апты кайтарат
      //материал апп материалдык дизайны бар жаны флаттер колдонмосун тузот
      debugShowCheckedModeBanner: false,
      //экрандагы дебаг деген жазууну жок кылат.фелс жалган
      title: 'Flutter Demo',
      //титл стрим техт жазуу учун колдонобуз
      theme: ThemeData(
        //зем бул материал апка тиешелуу свойства
        
        primarySwatch: Colors.blue,
        //примерисватч-бул земдатанын бир классы.бул материалдын тусу
        //материалдык приложенияда колдонулган ар кандай оттенки теньдерди берет
        //земдата 2 класстан турат.примериколор ж.а примерисватч

      ),
      home: const MyHomePage(),
      //хоум уй материал аптын свойствасы
      //му хоумпейж виджет же класс
    );
  }
}

class MyHomePage extends StatefulWidget {
  //
  const MyHomePage({super.key, });
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      //скаффолд бул экран.
      backgroundColor: Colors.white,
      appBar: AppBar( 
        //тиркеменин эн устунку болугу. текттин аты жазылышы мумкун. 
        //биздин тиркемеде тапшырма 1 деген соз турат
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Center(
          child: const Text("Тапшырма 1", style: TextStyle(color: Colors.black),
          ),
        ),
      elevation: 0,
      ),
      body: Padding(
        //эки контейнердин ортосуна аралык беруу
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            //жазган текстибизди ортого алып келет
            children: [
              Container(
                width: double.infinity,
                height: 30,
              child: Center(child: Text("Сан: $index", style:
                 const TextStyle(fontSize: 20))),
           decoration: BoxDecoration(
            color: Colors.grey,
          borderRadius: BorderRadiusDirectional.circular(8)),
          //контейнердин бурчтарын кесип берет.фигурасын озгортот

              ), 
       const SizedBox(height: 20,),
       Row(
        //ров бул контейнерлер жанаша жайгаштыруу
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            setState(() {
              //сетстейт-абалды озгортуу
              index--;
            });
}, 
          child: const Icon(Icons.remove)),
          const SizedBox(width: 20,),
          //сайзетбох мн эки контейнер ортосуна аралык беребиз
          ElevatedButton(onPressed: (){
            //онпресет-кыймыл беруу
            setState(() {
              index++;
            });
          }, child: const Icon(Icons.add))
          //айкон плюс минустарды беребиз
        ],
       )
            ],
          ),
        ),
      ),
    );
  }
}
        
       
    
    
