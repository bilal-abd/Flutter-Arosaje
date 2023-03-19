class Home extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD6FFCC),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
              () => ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.planteList.length,
                itemBuilder: (context, index) {
                  final plante = controller.planteList[index];
                  return Column(
                    children: [
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          const SizedBox(width: 16),
                          CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                NetworkImage(plante.photoProfil ?? ""),
                          ),
                          const SizedBox(width: 16),
                          Text(
                            "${plante.prenomUtilisateur} ${plante.nameUtilisateur}",
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        height: 200,
                        child: Image.network(
                          plante.image ?? "",
                          errorBuilder: (BuildContext context, Object exception,
                              StackTrace? stackTrace) {
                            return Icon(Icons.broken_image, size: 200);
                          },
                          loadingBuilder: (BuildContext context, Widget child,
                              ImageChunkEvent? loadingProgress) {
                            if (loadingProgress == null) {
                              return child;
                            }
                            return Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                    : null,
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        height: 24,
                        child: GestureDetector(
                          child: Icon(Icons.comment),
                          onTap: () {
                            Get.to(() => PostPage(),
                                arguments: {"planteList": plante});
                          },
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
