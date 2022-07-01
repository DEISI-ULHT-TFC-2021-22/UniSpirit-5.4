class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: 'Bem- vindo(a)  á UniSpirit!',
    image: 'assets/images/image1.1_tutorial.png',
    discription: "a primeira rede social exclusiva para estudantes do ensino superior, "
  ),
  UnbordingContent(
    title: 'Meets de Estudo',
    image: 'assets/images/logo5.png',
    discription: "com esta app podes  marcar/agendar  um encontro  entre estudantes universitários que tenham uma mesma cadeira em comum contigo ,e estudarem em conjunto de modo a esclarecer dúvidas ou partilhar apontamentos."

  ),
  UnbordingContent(
    title: 'Noticias',
    image: 'assets/images/logo5.png',
    discription: "como estudante vais poder ter acesso a todas as noticias , eventos , dicas para que a tua vida académica tenha um bom aproveitamento"

  ),
];
