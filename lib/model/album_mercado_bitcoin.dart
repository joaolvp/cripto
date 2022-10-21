class Album{
  final String sell;

  const Album({
    required this.sell,
});
  factory Album.fromJson(Map<String, dynamic> json){
    return Album(sell: json['sell']);
  }
}