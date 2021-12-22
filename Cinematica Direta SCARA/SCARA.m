L1 = Link('d',0, 'a',0.2, 'alpha',0);
L2 = Link('d',0, 'a',0.15, 'alpha',0);
L3 = Link('d',0, 'a',0, 'alpha', pi);
L4 = Link('theta',0, 'a',0, 'alpha',0, 'qlim',[0,0.1]);
l = SerialLink([L1,L2,L3,L4])
l.teach;