import 'package:flutter/foundation.dart';

class Light {
  final String name;
  final String price;
  final String imageUrl;
  final String description;
  final double discountAmt;
  final String ipRating;
  final String bodyColor;
  final String colorTemp;
  final String ledSize;
  Light(
      {required this.ipRating,
      required this.bodyColor,
      required this.colorTemp,
      required this.ledSize,
      required this.name,
      required this.price,
      required this.imageUrl,
      required this.description,
      required this.discountAmt});
}

class LightProvider with ChangeNotifier {
  List<Light> _lights = [
    Light(
      name: 'COB CURIO LIGHTS ',
      price: '2380.00',
      imageUrl:
          'https://images.pexels.com/photos/13988977/pexels-photo-13988977.jpeg?auto=compress&cs=tinysrgb&w=400',
      description:
          ' harum quisquam eius sed odit fugiat iusto fuga praesentiumoptio, eaque rerum! Provident similique accusantium nemo autem. Veritatisobcaecati tenetur iure eius earum ut molestias architecto voluptate aliquamnihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdamrecusandae alias error harum maxime adipisci amet laborum. Perspiciatis ',
      discountAmt: 1190,
      bodyColor: 'White',
      ipRating: '20',
      colorTemp: '3000 - 6500K',
      ledSize: 'COB',
    ),
    Light(
      name: 'FortuneArrt Facade Light',
      price: '7999',
      imageUrl:
          'https://images.pexels.com/photos/403936/pexels-photo-403936.jpeg?auto=compress&cs=tinysrgb&w=400',
      description:
          ' harum quisquam eius sed odit fugiat iusto fuga praesentiumoptio, eaque rerum! Provident similique accusantium nemo autem. Veritatisobcaecati tenetur iure eius earum ut molestias architecto voluptate aliquamnihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdamrecusandae alias error harum maxime adipisci amet laborum. Perspiciatis ',
      discountAmt: 3990.00,
      bodyColor: 'White',
      ipRating: '20',
      colorTemp: '3000 - 6500K',
      ledSize: 'COB',
    ),
    Light(
      name: 'FortuneArrt 60 WATT light',
      price: '3999.00',
      imageUrl:
          'https://images.pexels.com/photos/754265/pexels-photo-754265.jpeg?auto=compress&cs=tinysrgb&w=400',
      description:
          ' harum quisquam eius sed odit fugiat iusto fuga praesentiumoptio, eaque rerum! Provident similique accusantium nemo autem. Veritatisobcaecati tenetur iure eius earum ut molestias architecto voluptate aliquamnihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdamrecusandae alias error harum maxime adipisci amet laborum. Perspiciatis ',
      discountAmt: 1890.00,
      bodyColor: 'White',
      ipRating: '20',
      colorTemp: '3000 - 6500K',
      ledSize: 'COB',
    ),
    Light(
      name: 'Flood Bar Light',
      price: '2380.00',
      imageUrl:
          'https://images.pexels.com/photos/1426620/pexels-photo-1426620.jpeg?auto=compress&cs=tinysrgb&w=400',
      description:
          ' harum quisquam eius sed odit fugiat iusto fuga praesentiumoptio, eaque rerum! Provident similique accusantium nemo autem. Veritatisobcaecati tenetur iure eius earum ut molestias architecto voluptate aliquamnihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdamrecusandae alias error harum maxime adipisci amet laborum. Perspiciatis ',
      discountAmt: 1129.5,
      bodyColor: 'White',
      ipRating: '20',
      colorTemp: '3000 - 6500K',
      ledSize: 'COB',
    ),
    Light(
      name: 'LED Dome Light',
      price: '1500.00',
      imageUrl:
          'https://images.pexels.com/photos/3354673/pexels-photo-3354673.jpeg?auto=compress&cs=tinysrgb&w=400',
      description:
          ' harum quisquam eius sed odit fugiat iusto fuga praesentiumoptio, eaque rerum! Provident similique accusantium nemo autem. Veritatisobcaecati tenetur iure eius earum ut molestias architecto voluptate aliquamnihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdamrecusandae alias error harum maxime adipisci amet laborum. Perspiciatis ',
      discountAmt: 750.00,
      bodyColor: 'White',
      ipRating: '20',
      colorTemp: '3000 - 6500K',
      ledSize: 'COB',
    ),
  ];

  List<Light> get lights {
    return [..._lights];
  }
}
