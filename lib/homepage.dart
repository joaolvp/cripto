import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'package:http/http.dart' as http;

import 'model/album_mercado_bitcoin.dart';
import 'modelview/bitcoin_get_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Moedinhas', style: TextStyle(color: Color(0xFFFFD700)),),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Obtenha a cotação atualizada das principais Criptomoedas!!!',
              style: TextStyle(fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),),
            const CircleAvatar(
              backgroundColor: Colors.black,
              radius: 120,
              child: CircleAvatar(
                backgroundImage: AssetImage('images/cripto.jpg'),
                radius: 110,
              ),
            ),
            //SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    /*FutureBuilder<Album>(
                      future: futureAlbum,
                      builder: (context, snapshot){
                        if(snapshot.hasData){
                          var dados = {snapshot.data!.sell};
                        } else if (snapshot.hasError){
                          var dados = {snapshot.error};
                        }


                        return const CircularProgressIndicator();
                      },
                    ); */
                    Alert(context: context, title: 'O preço do Bitcoin é:', desc: 'Valor').show();
                  },
                  child: Column(
                    children: [
                      Image.asset('images/bitcoin.png'),
                    ],
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Alert(context: context,
                        title: 'O preço do Ethereum é:',
                        desc: 'Valor').show();
                  },
                  child: Column(
                    children: [
                      Image.asset('images/ethereum.png'),
                    ],
                  ),
                ),

              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Alert(context: context,
                        title: 'O preço do Tether é:',
                        desc: 'Valor').show();
                  },
                  child: Column(
                    children: [
                      Image.asset('images/tether.png'),
                    ],
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Alert(context: context,
                        title: 'O preço do USD Coin é:',
                        desc: 'Valor').show();
                  },
                  child: Column(
                    children: [
                      Image.asset('images/usd_coin.png'),
                    ],
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}


