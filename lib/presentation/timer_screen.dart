import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timer_app_bloc/bloc/timer/timer_bloc.dart';
import 'package:timer_app_bloc/data/ticker.dart';

import 'package:timer_app_bloc/presentation/widgets/actions_widgets.dart';
import 'package:timer_app_bloc/presentation/widgets/timer_text_widget.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
          create: (context) => TimerBloc(ticker: const Ticker()),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [TimerText(), ActionsButtonWidget()],
            ),
          ),
        ));
  }
}
