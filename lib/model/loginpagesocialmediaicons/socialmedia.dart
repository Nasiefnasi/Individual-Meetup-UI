// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class SocialmediaIMG extends StatelessWidget {
  const SocialmediaIMG({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaqury = MediaQuery.of(context).size;
    return SizedBox(
        height: mediaqury.height * .04,
        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaPRDXwcRE6t1ugM-lDvewfAxfWo-ksKSBMw&usqp=CAU",fit: BoxFit.cover,),);
  }
}
