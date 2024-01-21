import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_blue_ray/features/task/presentation/provider/provider_category.dart';
import 'package:task_blue_ray/features/task/presentation/widgets/appbar_widget.dart';
import 'package:task_blue_ray/features/task/presentation/widgets/cover_image_widget.dart';
import 'package:task_blue_ray/features/task/presentation/widgets/widget_contanier.dart';

class ScreenTask extends StatefulWidget {
  const ScreenTask({super.key});

  @override
  State<ScreenTask> createState() => _ScreenTaskState();
}

class _ScreenTaskState extends State<ScreenTask> {
  @override
  void didChangeDependencies() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ProviderCategory>(context, listen: false).callFakeApi();
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const AppBarWidget(),
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "assets/images/SPRK_default_preset_name_iphone_x_xs_11_pro - 13.png"),
                fit: BoxFit.fill),
          ),
          child: Consumer<ProviderCategory>(
            builder: (context, value, child) {
              if (value.state == States.loading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (value.state == States.error) {
                return const Center(
                  child: Text("Error Connection"),
                );
              } else if (value.state == States.success) {
                return Column(
                  children: [
                    const SizedBox(height: 22),
                    WidgetText(text: value.model!.body),
                    const SizedBox(height: 15),
                    CoverImageWidget(imageUrl: value.model!.coverImages),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        value.model!.images.length,
                        (index) => CoverImageWidget(
                          height: 65,
                          width: 75,
                          imageUrl: value.model!.images[index],
                        ),
                      ),
                    ),
                  ],
                );
              }
              return const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}

// image: AssetImage(
                    //   'assets/images/SPRK_default_preset_name_iphone_x_xs_11_pro - 13.png',
                    // ),
