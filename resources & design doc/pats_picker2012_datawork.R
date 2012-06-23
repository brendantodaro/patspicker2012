pr <- read.table('D:/pats_roster2012.txt')
pr2 <- pr[,c(2,1,3)]

#print out with lastname, firstname, position, selected, class=

#<li id="Tom_Brady" class="ui-state-default" position="QB">Tom Brady</li>

pr2 <- pr2[order(pr2[,3]),]


#for(i in seq(1:length(pr2[,1]))){
for(i in seq(1:length(pr2[,1]))){
  firstname <- as.character(pr2[i,1])
  lastname <- as.character(pr2[i,2])
  position <- as.character(pr2[i,3])

  cat('<li id="',firstname, "_", lastname,'" class', '="', 'ui-state-default" ','position="',position, '">', firstname," ",lastname,'</li>','\n',sep="")
  
  
}
