   b=figure('Position',[500 175 500 500],'color','k')
   hold on;
   nomfichier =get(h2,'String')

   fid = fopen(nomfichier,'r');
   fid2 = fopen('temp.xyz','w');
   ligne = fgets(fid);
   namedata = fgets(fid);
   nligne =  sscanf(ligne,'%i')
   for i =1:nligne
    ligne=fgetl(fid);
    type(i)=ligne(1);
    count = fprintf(fid2,'%s\n',ligne(3:end));
   end
   fclose(fid);
   fclose(fid2);
   mat=load('temp.xyz');
   [X,Y,Z] = sphere(20);
   xi = mat(:,1);
   yi = mat(:,2);
   zi = mat(:,3);
   for i = 1:nligne
     s=atome(type(i),xi(i),yi(i),zi(i),X,Y,Z);
   end
   axis equal;

   % *****************************************************************
   camlight right;
   % colordef black;
   set(gcf,'InvertHardCopy','off')
   lighting gouraud;
