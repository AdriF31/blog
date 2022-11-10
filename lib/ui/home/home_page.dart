import 'package:blog/ui/article/add/add_article_page.dart';
import 'package:blog/ui/article/update/update_article_page.dart';
import 'package:blog/ui/auth/login/login_page.dart';
import 'package:blog/ui/detail/detail_page.dart';
import 'package:blog/ui/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (c) => Scaffold(
              appBar: AppBar(
                title: const Text('Article'),
                actions: [
                  IconButton(
                      onPressed: () {
                       
                        // Get.offAll(LoginPage());
                        c.logout(
                            c.storage.getCurrentUsername()!, Get.arguments);
                      },
                      icon: const Icon(Icons.logout))
                ],
              ),
              body: c.articleModel != null
                  ? RefreshIndicator(
                      onRefresh: () async {
                        c.getArticle(c.token ?? '');
                      },
                      child: ListView.builder(
                          padding: const EdgeInsets.all(16),
                          itemCount: c.articleModel?.data?.length,
                          itemBuilder: (context, index) => GestureDetector(
                                onLongPress: () async {
                                  c.deleteArticle(
                                      c.articleModel?.data?[index].id ?? 0,
                                      c.token ?? '');
                                  c.getArticle(c.token ?? '');
                                  c.update();
                                },
                                onTap: () {
                                  Get.to(() => const DetailPage(),
                                      arguments: c.articleModel?.data?[index].id
                                          .toString());
                                },
                                child: Card(
                                  child: SizedBox(
                                    height: 100,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.network(
                                            c.articleModel?.data?[index]
                                                    .image ??
                                                '',
                                            width: 100,
                                            height: 200,
                                            fit: BoxFit.fill, errorBuilder:
                                                (context, error, stackTrace) {
                                          return const SizedBox(
                                            width: 100,
                                            child: Center(
                                              child: Text(
                                                'Gambarnya ilang!',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                            ),
                                          );
                                        }, loadingBuilder:
                                                (BuildContext context,
                                                    Widget child,
                                                    ImageChunkEvent?
                                                        loadingProgress) {
                                          if (loadingProgress == null) {
                                            return child;
                                          }
                                          return Lottie.asset(
                                            'assets/pokeball_lottie.json',
                                            width: 50,
                                          );
                                        }),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Flexible(
                                          flex: 5,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              SizedBox(
                                                  width: Get.size.width * 0.6,
                                                  child: Text(
                                                    c.articleModel?.data?[index]
                                                            .title ??
                                                        '',
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                  )),
                                              SizedBox(
                                                  width: Get.size.width * 0.6,
                                                  child: Text(
                                                    c.articleModel?.data?[index]
                                                            .author ??
                                                        '',
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      fontSize: 14,
                                                    ),
                                                  )),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            IconButton(
                                                onPressed: () {
                                                  showDialog(
                                                      context: context,
                                                      builder:
                                                          (context) =>
                                                              AlertDialog(
                                                                content: const Text(
                                                                    'Yakin mau hapus?'),
                                                                actions: [
                                                                  ElevatedButton(
                                                                      onPressed:
                                                                          () async {
                                                                        c.deleteArticle(
                                                                            c.articleModel?.data?[index].id ??
                                                                                0,
                                                                            c.token ??
                                                                                '');
                                                                        c.getArticle(c.token ??
                                                                            '');
                                                                        c.update();
                                                                        Navigator.pop(
                                                                            context);
                                                                      },
                                                                      style: ElevatedButton.styleFrom(
                                                                          backgroundColor: Colors
                                                                              .red),
                                                                      child: const Text(
                                                                          'YA')),
                                                                  ElevatedButton(
                                                                      onPressed: () =>
                                                                          Navigator.pop(
                                                                              context),
                                                                      child: const Text(
                                                                          'TIDAK')),
                                                                ],
                                                                actionsAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                              ));
                                                },
                                                icon: const Icon(Icons.delete)),
                                            IconButton(
                                                onPressed: () {
                                                  Get.to(
                                                      () =>
                                                          const UpdateArticlePage(),
                                                      arguments: c.articleModel
                                                          ?.data?[index].id
                                                          .toString());
                                                },
                                                icon: const Icon(Icons.edit)),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                    )
                  : Center(
                      child: CircularProgressIndicator(),
                    ),
              floatingActionButton: FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () {
                  Get.to(() => const AddArticlePage());
                },
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.endFloat,
            ));
  }
}
