import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../widgets/full_screen_loader.dart';
import '../../widgets/text_button.dart';
import 'geolocation_model.dart';

class Geolocation extends StatefulWidget {
  const Geolocation({super.key});

  @override
  State<Geolocation> createState() => _GeolocationState();
}

class _GeolocationState extends State<Geolocation> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<GeolocationModel>.reactive(
        viewModelBuilder: () => GeolocationModel(),
        onViewModelReady: (model) => model.initialise(context),
        builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            title: const AutoSizeText('Geolocation'),
          ),

          body: fullScreenLoader(
            child: Column(children: [
              Center(child: Text('welcome')),
              CtextButton(onPressed: (){}, text: 'checkin'),
              SizedBox(height: 20,),
              CtextButton(onPressed: (){}, text: 'checkout'),
            ]),
            loader: model.isBusy,
            context: context,
          ),
        ));
  }
}
