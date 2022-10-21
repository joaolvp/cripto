import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/album_mercado_bitcoin.dart';


Future<Album> fetchAlbum() async {
  final response = await http.get(
      Uri.parse('https://www.mercadobitcoin.net/api/BTC/ticker/')
  );


  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Não foi possível carregar');
  }
}