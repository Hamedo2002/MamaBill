import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mama_bill/core/services/service_locator.dart';
import 'package:mama_bill/features/medicine/presentation/controller/medicine/cubit/medicine_cubit.dart';
import 'package:mama_bill/features/medicine/presentation/components/medicine_sections.dart';

class MedicineWidget extends StatelessWidget {
  const MedicineWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MedicineCubit>(
      create: (context) => sl<MedicineCubit>(),
      child: BlocBuilder<MedicineCubit, MedicineState>(
        builder: (context, state) {
          return MedicineSection(
            medicines: state.medicines,
            currentWeekday: state.currentWeekday,
          );
        },
      ),
    );
  }
}
