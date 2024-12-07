class MatematikRepostory {
  int toplamaYap(sayi1, sayi2) {
    int Sayi1 = int.parse(sayi1.text);
    int Sayi2 = int.parse(sayi2.text);
    int toplam = Sayi1 + Sayi2;
    return toplam;
  }

  int carpmaYap(sayi1, sayi2) {
    int Sayi1 = int.parse(sayi1.text);
    int Sayi2 = int.parse(sayi2.text);
    int carpim = Sayi1 * Sayi2;
    return carpim;
  }
}
