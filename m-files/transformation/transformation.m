function [drehmatrix,offset]=transformation(fokus)
    
    % neue z-Achse zeigt zum Ursprung
    z=-fokus/norm(fokus);
    % neue y-Achse ist die Normale der ebene aus neuer und alter z-Achse
    x=cross([0;0;1],z)/norm(cross([0;0;1],z));
    % neue x-Achse ist die Normale der Ebene aus neuer y- und neuer z-Achse
    y=cross(z,x);
    
    drehmatrix=[x y z];

    offset=fokus;
end