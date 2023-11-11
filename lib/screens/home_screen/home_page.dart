import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geolocation/widgets/full_screen_loader.dart';
import 'package:stacked/stacked.dart';
import 'package:workmanager/workmanager.dart';
import '../../widgets/drawer.dart';
import '../../widgets/text_button.dart';
import 'home_view_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<Homeviewmodel>.reactive(
        viewModelBuilder: () => Homeviewmodel(),
        onViewModelReady: (model) => model.initialise(context),
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                title: const AutoSizeText('Home'),
              ),
              drawer: myDrawer(context, (model.full_name ?? ""),
                  (model.user ?? ""), (model.role_profile ?? "")),
              body: fullScreenLoader(
                child: Column(
                  children: [
                    CtextButton(
                      onPressed: () {
                        model.locationInbutton(context);
                        // Schedule a one-off background task named 'backgroundTask'
                        Workmanager().registerPeriodicTask(
                          "backgroundTask",
                          "Background Task",
                          frequency: const Duration(minutes: 15),
                        );

                      },
                      text: 'checkin',
                    ),
                    SizedBox(height: 20),
                    CtextButton(
                      onPressed: () {
                        model.locationOutbutton(context);
                        // Cancel the background task if it's running
                        Workmanager().cancelByUniqueName("backgroundTask");
                        if (kDebugMode) {
                          print('Background task stopped.');
                        }
                      },
                      text: 'checkout',
                    ),
                  ],
                ),
                loader: model.isBusy,
                context: context,
              ),


        ) );
  }
}


