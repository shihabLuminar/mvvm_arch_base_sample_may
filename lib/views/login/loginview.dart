import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_arch_base_sample_may/views/login/loginview_viewmodel.dart';
import 'package:stacked/stacked.dart';

class Loginview extends StatelessWidget {
  int passedDAta;
  Loginview({super.key, required this.passedDAta});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      builder: (context, viewModel, child) => Scaffold(
        body: Center(
          child: Text(viewModel.currentCount.toString()),
        ),
      ),
      viewModelBuilder: () => LoginviewViewmodel(currentCount: passedDAta),
    );
  }
}
