for i in loadedMods["mtr"].blocks {
  i.explosionResistance = 1200;
  for x in i.getPossibleStates(){
    x.setDestroySpeed(40);
  }
}