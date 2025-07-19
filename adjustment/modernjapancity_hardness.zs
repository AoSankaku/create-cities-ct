for i in loadedMods["modernjapancity"].blocks {
  i.explosionResistance = 1200;
  for x in i.getPossibleStates(){
    x.setDestroySpeed(20);
  }
}