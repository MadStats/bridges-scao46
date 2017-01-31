require("tidyverse")
require("hms")
link = "https://www.fhwa.dot.gov/bridge/nbi/2015/delimited/FL15.txt"
d1 = read_csv(link)
colnames(d1)
bridgeID = d1$STRUCTURE_NUMBER_008
year = select(d1, contains("year", ignore.case = T))
fips_code = d1$STATE_CODE_001
deck_cond = d1$DECK_COND_058
supStruc_cond = d1$SUPERSTRUCTURE_COND_059
subStruc_cond = d1$SUBSTRUCTURE_COND_060
d2 = data.frame(bridgeID, year, fips_code, deck_cond, supStruc_cond, subStruc_cond)
d2 = as.tbl(d2)
d2