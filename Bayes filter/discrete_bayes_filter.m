function [ nbel ] = discrete_bayes_filter( bel, a )
% bel: Distribución de creencia discreta
% a: Acción realizada por el robot ('a': avanzar, 'r': retroceder)
% Nueva funcion de creencia:
nbel = zeros(length(bel),1);

if (a=='r')
    for i = 1:length(bel)
        % Si se tomo la accion de retroceder
        % Caso general
        if (2<i)&&(i<19)
            nbel(i) = 0.25*bel(i+2) + 0.5*bel(i+1) + 0.25*bel(i);
        end
        % Singularidades
        if (i==2)
            nbel(i) = 0.25*bel(i) + 0.25*bel(i+2) + 0.5*bel(i+1);
        end
        if (i==1)
            nbel(i) = 1*bel(i) + 0.75*bel(i+1) + 0.25*bel(i+2);
        end
        if (i==19)
            nbel(i) = 0.25*bel(i) + 0.5*bel(i+1) ;
        end
        if (i==20)
            nbel(i) = 0.25*bel(i);
        end
    end
elseif (a=='a')
    for i = 1:length(bel)
        % Si se tomo la accion de avanzar
        % Caso general
        if (2<i)&&(i<19)
            nbel(i) = 0.25*bel(i-2) + 0.5*bel(i-1) + 0.25*bel(i);
        end
        % Singularidades
        if (i==1)
            nbel(i) = 0.25*bel(i);
        end
        if (i==2)
            nbel(i) = 0.25*bel(i) + 0.5*bel(i-1);
        end
        if (i==19)
            nbel(i) = 0.25*bel(i) + 0.5*bel(i-1) + 0.25*bel(i-2);
        end
        if (i==20)
            nbel(i) = 1*bel(i) + 0.5*bel(i-1) + 0.25 * bel(i-2);
        end
    end
    
    

end

n = 1/sum(nbel);
nbel = nbel.*n;
sum(nbel)
end
    
    

