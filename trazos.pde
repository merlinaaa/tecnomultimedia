void estado1() {
  tint(234, 245-mouseX, 158-mouseY);
  image(trazo4, random1, random3, 500, 500);

  tint(167, mouseX, 79);  //marron
  image(trazo5, random4, 0, 500, 300);

  tint(mouseX%60, mouseY, mouseX/20); //rosado
  image(trazo1, random2, random4, 600, 600); // mancha verde GRANDE
  tint(mouseX, mouseY, 0); //verde clarito
  image(trazo3, random1, 400);

  tint(mouseY, mouseY, mouseX); //
  image(trazo4, random4, random1, 500, 500);

  tint(234, 245-mouseX, 158);
  image(trazo4, random1, random3, 500, 500);

  tint(violeta);
  image(trazo2, -18, random3, 100, 100);
  tint(128, mouseY, 209);
  image(trazo2, 530, 30+random1, 100, 100);
}
