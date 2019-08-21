import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final Produtos=['Computadora','teclado','pantalla','maus'];
  final Precios=['300\$','340\$','120\$','600\$'];
  final UrlProduct=['https://images.pexels.com/photos/92904/pexels-photo-92904.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                     'https://image.freepik.com/vector-gratis/portatil-aislado-vector-vector-ilustracion-gadget-computadora-moderna-laptop-telefono-inteligente_123447-7.jpg',
                     'https://image.freepik.com/vector-gratis/apple-wireless-keyboard_23-2147729494.jpg',
                     'https://image.freepik.com/foto-gratis/maqueta-moue-3d_52664-359.jpg',
                     ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar( 
                 backgroundColor: Colors.redAccent,
                 leading: Builder(
                    builder: (BuildContext context) {
                      return IconButton(
                        icon: const Icon(Icons.menu),
                        onPressed: () {
                           print("acciones a ralizar");
                           },
                        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                      );
                    },),

                 title: new Text("lista de articulos"),
                 actions: <Widget>[
                   IconButton(icon: new Icon(Icons.access_alarms),color: Colors.redAccent,),
                   IconButton(icon: new Icon(Icons.access_alarms),color: Colors.redAccent,),
                 ],
               ),
///final appbar
              body: Center(
              child: Center(
                child: ListView(
                  children: _listProduct(),
                ),
              ),
         ),
    );
  }

List<Widget>_listProduct(){
var  widgets = Produtos.map((articulo){
    return ListTile(  
      leading: Icon(Icons.card_giftcard),
      title: Text(articulo),
      subtitle: Text(Precios.elementAt(Produtos.indexOf(articulo))),
      trailing: Icon(Icons.check),
      onTap: (){
        print(articulo);

      },
    );
  }).toList();
  return widgets;
} 
}