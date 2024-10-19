import 'package:flutter/material.dart';
import 'package:mvvm_arch_base_sample_may/views/home/homeview_viewmodel.dart';
import 'package:mvvm_arch_base_sample_may/views/login/loginview.dart';
import 'package:stacked/stacked.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeviewViewmodel>.reactive(
      onViewModelReady: (viewModel) {
        print("init state");
      },
      onDispose: (viewModel) {},
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Loginview(passedDAta: viewModel.count),
                      ));
                },
                icon: Icon(
                  Icons.arrow_circle_right_outlined,
                  size: 50,
                ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            viewModel.increment();
          },
        ),
        body: Center(
          child: Text(viewModel.count.toString()),
        ),
      ),
      viewModelBuilder: () => HomeviewViewmodel(),
    );
  }
}
