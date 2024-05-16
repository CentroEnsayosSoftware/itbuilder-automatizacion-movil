import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:ticket_fold/ticket.dart';
import 'package:ticket_fold/main.dart';

void main() {

  patrolTest('DemoITBuilders', 
  (PatrolIntegrationTester $) async {

        WidgetsFlutterBinding.ensureInitialized();
        runApp(App());
        await $.pumpWidgetAndSettle(App());
        expect($('BOARDING PASSES'), findsOneWidget);
        expect($(Ticket), findsExactly(4));
        await $(Ticket).at(0).tap();
        await $('Edmonton').waitUntilVisible();
        await $('Los Angeles').waitUntilVisible();
        await $('50').waitUntilVisible();
        await $('3').waitUntilVisible();
        await $('12A').waitUntilVisible();
        await $('Economy').waitUntilVisible();
        await $('AC237').waitUntilVisible();
        await $('OCT 17, 23:45').waitUntilVisible();
        await $('OCT 18, 2:15').waitUntilVisible();
        await $(Ticket).at(0).tap();
        await $.scrollUntilVisible(finder: $(Ticket).at(3)).tap();
        await $('Calgary').waitUntilVisible();
        await $('Ottawa').waitUntilVisible();
        await $('22').waitUntilVisible();
        await $('1').waitUntilVisible();
        await $('17C').waitUntilVisible();
        await $('Economy').waitUntilVisible();
        await $('AC237').waitUntilVisible();
        await $('OCT 17, 23:45').waitUntilVisible();
        await $('OCT 18, 2:15').waitUntilVisible();
        await $(Ticket).at(2).tap();
  });
}