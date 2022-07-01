class Event {
  /*final String imagePath*/final String title, description, location, categoria, punchLine1, punchLine2;
  final List categoryIds, galleryImages;

  Event(
      {//required this.imagePath,
      required this.title,
      required this.description,
      required this.location,
      required this.categoria,
      required this.punchLine1,
      required this.punchLine2,
      required this.categoryIds,
      required this.galleryImages});
}

final localStudyEvent = Event(
   // imagePath: "assets/event_images/caleido.png",
    title: "Edifício Caleidoscópio",
    description: "",
    location: "Lisboa",
    categoria: "3H",
    punchLine1: "Caleidoscópio",
    punchLine2: "Caleidoscópio",
    galleryImages: [],
    categoryIds: [0, 1]);

final NoticiasEvent = Event(
   // imagePath: "assets/event_images/caleido.png",
    title: "Concurso de ideias de negócio da Acredita Portugal",
    description: ". Este programa, conhecido por ser o maior concurso de empreendedorismo do país e o 2º maior a nível mundial, está aberto a todos os empreendedores portugueses, independentemente do nível de maturidade dos seus projetos",
    location: "Lisboa",
    categoria: "5H",
    punchLine1: "Concurso para universitários",
    punchLine2: "The latest fad in foodology, get the inside scoup.",
    categoryIds: [0, 2],
    galleryImages: [""]);

final EntrevistaEvent = Event(
    //imagePath: "im2/assets/event_images/caleido.png",
    title: "À conversa com um aluno de Engenharia Informática",
    description: "À conversa com um aluno de Engenharia Informática",
    location: "Faro",
    categoria: "8h",
    punchLine1: "Music Lovers!",
    punchLine2: "The latest fad in foodology, get the inside scoup.",
    galleryImages: ["assets/event_images/cooking_1.jpeg", "assets/event_images/cooking_2.jpeg", "assets/event_images/cooking_3.jpeg"],
    categoryIds: [0, 1]);

final podcastEvent = Event(
    //imagePath: "assets/event_images/golf_competition.jpeg",
    title: "Podcasts",
    description: "Spotify",
    location: "Lisboa",
    categoria: "1d",
    punchLine1: "",
    punchLine2: "The latest fad in foodology, get the inside scoup.",
    galleryImages: ["assets/event_images/cooking_1.jpeg", "assets/event_images/cooking_2.jpeg", "assets/event_images/cooking_3.jpeg"],
    categoryIds: [0, 3]);

final events = [
  localStudyEvent,
  NoticiasEvent,
  EntrevistaEvent,
  podcastEvent,
];
