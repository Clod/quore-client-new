import 'package:auto_route/auto_route.dart';
import 'package:cardio_gut/model/Paciente.dart';
import 'package:flutter/material.dart';

import '../../routes/router.gr.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [
        const ProductsRoute(),
        EditPatientRoute(parametro: Paciente(id: 0, nombre: "", apellido: "", fechaNacimiento: "", documento: "", nacionalidad: "", fechaCreacionFicha: "")),
      ],
      bottomNavigationBuilder: (context, tabsRouter) => BottomNavigationBar(
          onTap: tabsRouter.setActiveIndex,
          currentIndex: tabsRouter.activeIndex,
          items: const [
            BottomNavigationBarItem(
              label: 'Pacientes',
              icon: Icon(
                Icons.people,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Paciente',
              icon: Icon(
                Icons.person,
              ),
            ),
          ]),
    );
  }
}