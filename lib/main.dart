import 'package:flutter/material.dart';
import 'package:flutter_task_app/features/home/doamin/entities/categories_info_entity.dart';
import 'package:flutter_task_app/features/home/presentation/views/home_screen.dart';
import 'package:flutter_task_app/helpers/networking/urls.dart';
import 'package:flutter_task_app/helpers/routes/app_routers.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



void main() async{
   await Hive.initFlutter();
  Hive.registerAdapter(CategoriesInfoEntityAdapter());
  
await  Hive.openBox<CategoriesInfoEntity>(Urls.hiveBox);
 await ScreenUtil.ensureScreenSize();
  runApp(const ZarafaApp());
}

class ZarafaApp extends StatelessWidget {
  const ZarafaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
        designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      
      child: MaterialApp(
         debugShowCheckedModeBanner: false,
       theme: ThemeData(
          
        ),
        title: 'Zarafa ',
         initialRoute: HomeScreen.routeName,
        onGenerateRoute: AppRouters.onGenerateRoute,
      ),
    );
  }
}

