var = 1;

% Gera 4 indices para os vetores randomicamente para fazer as trocas de posi��es
while(var < 2)
    I1 = round (1 + rand * (Quant_Ind_Inic-1));   
    b=0;
    while b==0,
          I2 = round (1 + rand * (Quant_Ind_Inic-1));
          if(I2 ~= I1)
             c=0; 
             while c==0,
                   I3 = round (1 + rand * (Quant_Ind_Inic-1));
                   if(I3 ~= I2)
                       d=0;
                       while d==0,
                             I4 = round (1 + rand * (Quant_Ind_Inic-1));
                             if(I4 ~= I3)              
                                d=1;
                             end 
                       end                         
                       c=1;
                   end 
             end
             b=1;   
          end
    end
        
    Pop_Cruz(w,:) = Pop_Selecionada(Ind1,:);
    Pop_Cruz(w+1,:) = Pop_Selecionada(Ind2,:);
    
    % Alteracoes no Idividuo 1
    var_Temp = Pop_Cruz(w,I3);
    Pop_Cruz(w,I3) = Pop_Cruz(w,I4);
    Pop_Cruz(w,I4) = var_Temp;   
    
    var_Temp = Pop_Cruz(w,I1);
    Pop_Cruz(w,I1) = Pop_Cruz(w,I2);
    Pop_Cruz(w,I2) = var_Temp;
    
    % Alteracoes no Idividuo 2
    var_Temp = Pop_Cruz(w+1,I3);
    Pop_Cruz(w+1,I3) = Pop_Cruz(w+1,I4);
    Pop_Cruz(w+1,I4) = var_Temp;
    
    var_Temp = Pop_Cruz(w+1,I1);
    Pop_Cruz(w+1,I1) = Pop_Cruz(w+1,I2);
    Pop_Cruz(w+1,I2) = var_Temp;    
    
    var = var + 1;
end,   


