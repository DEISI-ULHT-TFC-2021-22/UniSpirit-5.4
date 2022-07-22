class Event {
  /*final String imagePath*/
  final String title, description, location, categoria, punchLine1, punchLine2;
  final List categoryIds;

  Event(
      {//required this.imagePath,
      required this.title,
      required this.description,
      required this.location,
      required this.categoria,
      required this.punchLine1,
      required this.punchLine2,
      required this.categoryIds,

      });
}


final localStudyEvent = Event(
   //imagePath: "assets/meets/caleido.png",
    title: "Edifício Caleidoscópio",
    description: "O Caleidoscópio, dispõe de uma sala de estudo com 175 lugares, uma área de exposições de 140m2 e"
        "um Anfiteatro com capacidade de 72 lugares, rede wi-fi Eduroam bem como equipamentos de impressão.",
    location: "Lisboa",
    categoria: "3H",
    punchLine1: "| Local De Estudo",
    punchLine2: "Caleidoscópio",
    //galleryImages: [],
    categoryIds: [0, 1],

);

final NoticiasEvent = Event(

    title: "Concurso de ideias de negócio da Acredita Portugal",
    description: "Este programa, conhecido por ser o maior concurso de empreendedorismo do país e o 2º maior a nível mundial, está aberto a todos os empreendedores portugueses, independentemente do nível de maturidade dos seus projetos",
    location: "Lisboa",
    categoria: "5H",
    punchLine1: "Concurso para universitários",
    punchLine2: "| Ideias",
    categoryIds: [0, 2],
    );

final EntrevistaEvent = Event(

    title: "À conversa com um aluno de Engenharia Informática",
    description: "À conversa com um aluno de Engenharia Informática"
        "Engenharia Informática é um curso muito abrangente dado que temos variadíssimas saídas profissionais, como o desenvolvimento de software e de sistemas de informação multimédia, a produção de modelos e animações 3D para a indústria de entretenimento e do audiovisual, o desenvolvimento de aplicações para suporte ao ensino à distância e ao comércio eletrónico, o desenvolvimento, instalação, configuração e administração de redes e consultoria na área das tecnologias de informação.",
    location: "Faro",
    categoria: "8h",
    punchLine1: "À conversa",
    punchLine2: "",
    categoryIds: [0, 1], );

final podcastEvent = Event(

    title: "Podcasts - Erasmus",
    description: "Spotify",
    location: "Lisboa",
    categoria: "Podcasts",
    punchLine1: "",
    punchLine2: "",



categoryIds: [],); final events = [
  localStudyEvent,
  NoticiasEvent,
  EntrevistaEvent,
  podcastEvent,
];
