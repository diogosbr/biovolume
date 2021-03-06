biovol= function(tab)
{
  res=as.data.frame(matrix(ncol=3,nrow=dim(tab)[1]))
  colnames(res)=c("Species","V","A")
  res[,1]=tab[,2]
  
  attach(tab)

  for(i in 1:dim(tab)[1])
  {
    if(tab[i,1]=="1-H")
    { 
      #volume
      V=(pi/6)*(a[i]^3)
      #area
      A=pi*(a[i]^2)
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="2-H")
    { 
      #volume
      V=(pi/6)*(b[i]^2)*(a[i])
      #area
      A=(((pi*b[i])/2)*(b[i]+(((a[i]^2)/(sqrt((a[i]^2)-(b[i]^2))))*
                                sin(sqrt((a[i]^2)-(b[i]^2))/a[i])^(-1))))
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="3-H")
    { 
      #volume
      V=(pi/6)*a[i]*b[i]*c[i]
      #area
      A=(pi/4)*(b[i]+c[i])* (((b[i]+c[i])/2)+(2*a[i]^2)/(sqrt((4*(a[i]^2))-((b[i]+c[i])^2)))*
                               (sin((sqrt((4*(a[i]^2))-((b[i]+c[i])^2)))/(2*a[i]))^(-1)))
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="4-H")
    { 
      #volume 
      V=(pi/4)*(a[i]^2)*c[i]
      #area
      A=pi*a[i]*((a[i]/2)+c[i])
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="5-H")
    { 
      #volume
      V=pi*(b[i]^2)*((a[i]/4)-(b[i]/12))
      #area
      A=pi*a[i]*b[i]
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="6-H")
    { 
      #volume
      V=(pi/4)*(b[i]^2)*(a[i]-(b[i]/3))
      #area
      A=pi*b[i]*(a[i]-((4-sqrt(3))/4)*b[i])
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="7-H")
    { 
      #volume
      V=(pi/12)*a[i]*(b[i]^2)
      #area
      A=(pi/4)*b[i]*(b[i]+sqrt(4*(a[i]^2)+(b[i]^2)))
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="8-H")
    { 
      #volume
      V=(pi/12)*a[i]*b[i]^2
      #area
      A=(pi/2)*b[i]*sqrt((a[i]^2)*(b[i]^2))
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="9-H")
    { 
      #volume
      V=(pi/4)*a[i]*(b[i]^2)
      #area
      A=(pi/2)*(b[i]^2)*(b[i]+sqrt((2*(a[i]^2)-(a[i]*b[i])+(b[i]^2))/2))
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="10-H")
    { 
      #volume
      V=a[i]*b[i]*c[i]
      #area
      A=2*a[i]*b[i]+2*b[i]*c[i]+2*a[i]*c[i]
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="11-H")
    { 
      #volume
      V=(pi/4)*a[i]*b[i]*c[i]
      #area
      A=(pi/2)*(a[i]*b[i]+b[i]*c[i]+a[i]*c[i])
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="12-H")
    { 
      #volume
      V=(pi/4)*a[i]*b[i]*c[i]
      #area
      A=(pi/2)*(a[i]*b[i]+b[i]*c[i]+a[i]*c[i])
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="13-H")
    { 
      #volume
      V=(1/2)*a[i]*b[i]*c[i]
      #area
      A=a[i]*b[i]+(sqrt((a[i]^2)+(b[i]^2))/4)*c[i]
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="14-H")
    { 
      #volume
      V=(pi/4)*a[i]*b[i]*c[i]
      #area
      A=(pi/4)*(a[i]*b[i]+b[i]*c[i]+a[i]*c[i])+(a[i]*c[i])
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="15-H")
    { 
      #volume
      V=(pi/4)*a[i]*b[i]*c[i]
      #area
      A=(pi/4)*(a[i]*b[i]+b[i]*c[i]+a[i]*c[i])+(a[i]*c[i])
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="16-H")
    { 
      #volume
      V=(pi/6)*a[i]*(b[i]^2)
      #area
      A=(pi/2)*b[i]*sqrt((a[i]^2)+(b[i]^2))
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="17-H")
    { 
      #volume
      V=(2/3)*a[i]*(c[i]^2)*sin(b[i]/(2*c[i]))
      #area
      A=(pi/2)*a[i]*c[i]+(b[i]*(
        c[i]+(((a[i]^2)/(2*sqrt((a[i]^2)-(4*(c[i]^2)))))*
            (sin((sqrt(((a[i]^2)-(4*(c[i]^2)))/(a[i])))/(a[i]))^(-1)))))
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="18-H")
    { 
      #volume
      V=(sqrt(3)/4)*c[i]*(a[i]^2)
      #area
      A=3*a[i]*c[i]+(sqrt(3)/2)*(a[i]^2)
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="19-H")
    { 
      #volume
      V=(1/6)*(a[i]^2)*c[i]
      #area
      A=(1/2)*(a[i]^2)+a[i]*sqrt((a[i]^2)+8*(c[i]^2))
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="20-H")
    { 
      #volume
      V=(pi/4)*a[i]*b[i]*c[i]
      #area
      A=(pi/2)*(a[i]*b[i]+b[i]*c[i]+a[i]*c[i])
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="21-H")
    { 
      #volume
      V=((a[i]*b[i])/4)*(a[i]+((pi/4)-1)*b[i])*asin(c[i]/(2*a[i]))
      #area
      A=(b[i]/2)*((2*a[i])+(pi*a[i]*asin(c[i]/(2*a[i])))+(((pi/2)-2)*b[i]))
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="22-SL")
    { 
      #volume
      V=((pi/3)*(a1[i]+a2[i])*(b1[i]^2))+
        ((pi/4)*(a2[i]+b2[i])*(b2[i]^2))+
        ((pi/12)*a2[i]*b1[i]*b2[i])
      #area
      A=(pi*a1[i]*b1[i])+
        ((pi/4)*b1[i]^2)+
        ((pi/2*b2[i]^2))+
        ((pi/2*b2[i]^2)*sqrt((a1[i]/b1[i])^2)+(1/4))-
        ((pi/2)*b1[i]*sqrt(((((a1[i]*b2[i])/b1[i])-a1[i])^2)+((b1[i]^2)/4)))
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="23-SL")
    { 
      #volume
      V=((pi/4)*a1[i]*b1[i]*c[i])+((pi/3)*a2[i]*b2[i]^2)
      #area
      A=((pi/2)*a1[i]*b1[i])+
        ((pi/2)*b1[i]*c[i])+
        ((pi/2)*a1[i]*c[i])+
        (pi*b2[i]*(sqrt((4*a2[i]^2)+(b2[i]^2))-b2[i]))
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="24-SL")
    { 
      #volume
      V=(pi/4)*a[i]*b[i]*c[i]
      #area
      A=(pi/2)*(a[i]*b[i]+b[i]*c[i]+a[i]*c[i])
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="25-SL")
    { 
      #volume
      V=((pi/4)*a2[i]*(b2[i]^2))+
        ((pi/12)*(a3[i]+a4[i])*b2[i]^2)+
        ((pi/6)*a1[i]*b1[i]*b2[i])
      #area
      A=((pi/4)*(b1[i]+b2[i])*(((b1[i]+b2[i])/2)+((a1[i])^2/sqrt((a1[i]^2)-((b1[i]+b2[i])/2)^2))*(sin(sqrt((a1[i]^2)-((b1[i]+b2[i])/2))/a1[i])^(-1))))+
        ((pi/2)*b2[i]*((2*a2[i]^2)+(sqrt(a3[i]^2+((b2[i]^2)/4)))+(sqrt(a4[i]^2+(b2[i]^2)/4))-(b2[i])))
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="26-SL")
    { 
      #volume
      V=(pi/12)*a[i]^3
      #area
      A=((3*pi)/4)*a[i]^2
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="27-SL")
    { 
      #volume
      V=((pi/4)*a2[i]*(b2[i]^2))+
        ((pi/2)*a3[i]*(b3[i]^2))+
        ((pi/12)*a1[i]*((b1[i]^2)+b1[i]*b2[i]+b2[i]^2))
      #area
      A=((pi/2)*(b1[i]+b2[i])*sqrt((a1[i]^2)+((b1[i]-b2[i])/2)^2))+
        ((pi/4)*((b1[i]^2)+(b2[i]^2)))+
        (2*pi*(a2[i]*b2[i]+a3[i]*b3[i]))
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="28-H")
    { 
      #volume
      V=(pi/4)*(b[i]^2)*a[i]
      #area
      A=pi*b[i]*((b[i]/2)+a[i])
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="29-H")
    { 
      #volume
      V=(pi/4)*a[i]*b[i]*c[i]
      #area
      A=(pi/2)*(a[i]*b[i]+b[i]*c[i]+a[i]*c[i])
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="30-H")
    { 
      #volume
      V=(sqrt(3)/4)*a[i]*b[i]^2
      #area
      A=3*a[i]*b[i]+((sqrt(3)/2)*b[i]^2)
      res[i,2]=V
      res[i,3]=A}
    
    if(tab[i,1]=="31-SL")
    { 
      #volume
      V=c[i]*((a1[i]*b1[i])+((pi/4)*a2[i]*b2[i]))
      #area
      A=c[i]*(2*a1[i]+b1[i]+(pi/2)*a2[i]+(pi/2)*b2[i])+
        (2*a1[i]*b1[i])+
        ((pi/2)*a2[i]*b2[i])
      res[i,2]=V
      res[i,3]=A}
    
    
  }
  
  detach(tab)
  
  print(res)
}
