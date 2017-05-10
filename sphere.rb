require 'opengl'
require 'glu'
require 'glut'
include Gl
include Glu
include Glut

def disp
glDepthFunc(GL_LEQUAL);
   glEnable(GL_DEPTH_TEST);
   glClearColor(0.0,0.0,0.0,0.0);
   glClearDepth(1.0);
   glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
   glMatrixMode(GL_PROJECTION);
   glLoadIdentity();
   gluPerspective(80.0,1.0,1.0,100.0);

   glMatrixMode(GL_MODELVIEW);
   glTranslatef(0.0,0.0,-15.0);
   glRotatef(30,20,20,1);

   glEnable(GL_LIGHTING)
   glEnable(GL_LIGHT0)
   glEnable(GL_COLOR_MATERIAL)
   glColorMaterial(GL_FRONT_AND_BACK, GL_AMBIENT_AND_DIFFUSE)
   glEnable(GL_NORMALIZE)
   glShadeModel(GL_SMOOTH)

   position=[50,30,100]
   ambient=[1,1,1.1]
   color=[0.2,0.2,0.1,1.0]

   glLightfv(GL_LIGHT0,GL_POSITION,position)
   glLightfv(GL_LIGHT0,GL_DIFFUSE,color)
   glLightfv(GL_LIGHT0,GL_SPECULAR,color)
   glLightModelfv(GL_LIGHT_MODEL_AMBIENT,ambient)

#sphere
   glTranslatef(0,0,0);
   glPushMatrix();
   glColor3f(0.0,0.50,0.8);
   glutSolidSphere(5,15,12);
   glPopMatrix();

   
   glPushMatrix();
   glColor3f(0.0,0.50,0.8);
   glutSolidSphere(25,15,12);
   glPopMatrix();


   
   glPushMatrix();
   glColor3f(0.0,0.50,0.8);
   glutSolidSphere(-25,15,12);
   glPopMatrix();

glFlush

end

glutInit
glutInitDisplayMode(GLUT_SINGLE | GLUT_RGBA | GLUT_DEPTH)
glutInitWindowSize(500, 500)
glutInitWindowPosition(20, 20)
glutCreateWindow("Hola OpenGL, en Ruby")
glutDisplayFunc :disp
glutMainLoop
