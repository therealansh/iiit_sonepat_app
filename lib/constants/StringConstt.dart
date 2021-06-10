const String DIRECTOR_MSG =
    "Being the Director of an ‘Institution of National Importance’it is a matter of pride as well as responsibility. Now, as the baton has passed on to me, I realize that it is for me to lay a roadmap that would take this institution to even greater heights. Having come from a research background and having seen, at close quarters, what meaningful research output can do for the growth and prestige of the country, I am convinced that research has to be a thrust area for our institutions of higher learning. I would strive to provide that thrust in this institution. If we succeed in enthusing our faculty, staff and students towards this end, our institute would become a cradle of creative and innovative ideas that can help develop new technologies, which, in turn, would transform our country. As a young institute, IIIT Sonepat has a unique opportunity to make a difference not only to Indian IT industry and the academic research community, but also the people of the entire region of Haryana. With this environment and rapidly improving connectivity to the IT capital New Delhi and the business city Gurugram, IIIT Sonepat is strategically positioned to develop into one of the best institutes of national importance in the country, under able and caring mentorship by NIT-Kurukshetra. In the coming years, with the support of its eminent Chairperson and Governing Body, the Institute will make every effort to construct and move to its spacious permanent campus located in a pristine setting near Sonepat. IIIT Sonepat is keen to push an effective research agenda and enhance its academic offerings by adding postgraduate and research programmes as well as more specializations of current relevance in undergraduate studies. Postgraduate studies and research will be a key factor for improving our visibility to the world. I also seek support of all stake holders in steering the institute to a great future. We have lots of work to do as multiple fronts. We have to create quality infrastructure, develop labs for academic and research activities, enhance research potential, expand the academic programs. We have to achieve all these in the fast changing education system. Let's all work together to achieve these goals.";
String greetingMessage() {
  var timeNow = DateTime.now().hour;

  if (timeNow <= 12) {
    return 'Good Morning';
  } else if ((timeNow > 12) && (timeNow <= 16)) {
    return 'Good Afternoon';
  } else {
    return 'Good Evening';
  }
}
String greeting = greetingMessage();