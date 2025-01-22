function s=atome(typatom,xi,yi,zi,X,Y,Z)
 if typatom =='H'   
  x =  X*0.6 + xi;
  y =  Y*0.6 + yi;
  z =  Z*0.6 + zi;
  s=surf(x,y,z,'FaceColor','w','EdgeColor','none');
 elseif typatom =='O'
  x =  X*1.2 + xi;
  y =  Y*1.2 + yi;
  z =  Z*1.2 + zi;
  s=surf(x,y,z,'FaceColor','r','EdgeColor','none');
  elseif typatom =='C'
  x =  X*1.1+ xi;
  y =  Y*1.1+ yi;
  z =  Z*1.1+ zi;
  s=surf(x,y,z,'FaceColor','c','EdgeColor','none');
 elseif typatom =='N'
      x =  X*0.7+ xi;
      y =  Y*0.7+ yi;
      z =  Z*0.7+ zi;
      s=surf(x,y,z,'FaceColor','b','EdgeColor','none');
  elseif typatom =='P'
      x =  X+ xi;
      y =  Y+ yi;
      z =  Z+ zi;
      s=surf(x,y,z,'FaceColor','g','EdgeColor','none');
  elseif typatom =='S'
      x =  X*1.2+ xi;
      y =  Y*1.2+ yi;
      z =  Z*1.2+ zi;
      s=surf(x,y,z,'FaceColor','y','EdgeColor','none');
  end
