import 'package:flutter/material.dart';

import '../material/custom_dialog_box.dart';

class Second_Page_Stl extends StatelessWidget {
  final String title, name, price, image, desc;
  const Second_Page_Stl(
      {Key? key,
      required this.title,
      required this.name,
      required this.price,
      required this.image,
      required this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Second_Page_Stf(
      title_v: title,
      name_v: name,
      price_v: price,
      image_v: image,
      desc_v: desc,
    );
  }
}

class Second_Page_Stf extends StatefulWidget {
  final String title_v, name_v, price_v, image_v, desc_v;
  const Second_Page_Stf(
      {Key? key,
      required this.title_v,
      required this.name_v,
      required this.price_v,
      required this.image_v,
      required this.desc_v})
      : super(key: key);

  @override
  State<Second_Page_Stf> createState() => _Second_Page_StfState();
}

class _Second_Page_StfState extends State<Second_Page_Stf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.name_v,
            style: TextStyle(fontSize: 30.0),
          ),
        ),
        body: Column(children: [
          Container(
            child: Image.asset(
              widget.image_v,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Text(
              widget.price_v,
              style: TextStyle(fontSize: 30.0),
            ),
          ),

          // Card(
          // child: InkWell(
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) {
          //           return Custom_Dialog_Box(
          //             title: widget.title_v,
          //             name: widget.name_v,
          //             price: widget.price_v,
          //             image: widget.image_v,
          //             desc: widget.desc_v,
          //           );
          //         },
          //       ),
          //     );
          //   },
          // )
          // ),
        ]
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Custom_Dialog_Box(
                    title: widget.title_v,
                    name: widget.name_v,
                    price: widget.price_v,
                    image: widget.image_v,
                    desc: widget.desc_v,
                  );
                },
              ),
            );
          },
          label: const Text('Buy now'),
          icon: const Icon(Icons.add_shopping_cart),
        )
        );
  }
}
