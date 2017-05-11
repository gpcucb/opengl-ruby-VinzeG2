require 'opengl'
require 'glu'
require 'glut'
include Gl
include Glu
include Glut



def disp

  no_mat = [ 0.0, 0.0, 0.0, 1.0 ]
	mat_ambient = [ 0.7, 0.7, 0.7, 1.0 ]
	mat_ambient_color = [ 0.8, 0.8, 0.2, 1.0 ]
	mat_diffuse = [ 0.1, 0.5, 0.8, 1.0 ]
	mat_specular = [ 1.0, 1.0, 1.0, 1.0 ]
	no_shininess = [ 0.0 ]
	low_shininess = [ 5.0 ]
	high_shininess = [ 100.0 ]
	mat_emission = [0.3, 0.2, 0.2, 0.0]

glDepthFunc(GL_LEQUAL);
   glEnable(GL_DEPTH_TEST);
   glClearColor(0.0,0.0,0.0,0.0);
   glClearDepth(1.0);
   glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
   glMatrixMode(GL_PROJECTION);
   glLoadIdentity();
   gluPerspective(50.0,1.0,10.0,30.0);

   glMatrixMode(GL_MODELVIEW);
   glTranslatef(0.0,0.0,-20.0);
   glRotatef(0,0,0,1);

   glEnable(GL_LIGHTING)
   glEnable(GL_LIGHT0)
   glEnable(GL_COLOR_MATERIAL)
   glColorMaterial(GL_FRONT_AND_BACK, GL_AMBIENT_AND_DIFFUSE)
   glEnable(GL_NORMALIZE)
   glShadeModel(GL_SMOOTH)

   position=[100,100,100]
   ambient=[1,1,1.1]
   color=[0.9,0.9,0.9,1.0]

   glLightfv(GL_LIGHT0,GL_POSITION,position)
   glLightfv(GL_LIGHT0,GL_DIFFUSE,color)
   glLightfv(GL_LIGHT0,GL_SPECULAR,color)
   glLightModelfv(GL_LIGHT_MODEL_AMBIENT,ambient)

#spheres 

   glTranslatef(0,0,0);
   glPushMatrix();
   glColor3f(0.0,0.80,0.8);
   glMaterial(GL_FRONT, GL_AMBIENT, no_mat)
	glMaterial(GL_FRONT, GL_DIFFUSE, mat_diffuse)
	glMaterial(GL_FRONT, GL_SPECULAR, mat_specular)
	glMaterial(GL_FRONT, GL_SHININESS, high_shininess)
	glMaterial(GL_FRONT, GL_EMISSION, no_mat)
   glutSolidSphere(2.4,100,200);
   glPopMatrix();


   glTranslatef(0,0,0);
   glPushMatrix();
   glColor3f(1.0,0.0,0.3);
   glTranslatef(5,0,0);
   glMaterial(GL_FRONT, GL_AMBIENT, no_mat)
   glMaterial(GL_FRONT, GL_DIFFUSE, mat_diffuse)
   glMaterial(GL_FRONT, GL_SPECULAR, mat_specular)
   glMaterial(GL_FRONT, GL_SHININESS, high_shininess)
   glMaterial(GL_FRONT, GL_EMISSION, no_mat)
   glutSolidSphere(2.4,100,200);
   glPopMatrix();


   glTranslatef(0,0,0);
   glPushMatrix();
   glColor3f(1.0,0.0,0.8);
   glTranslatef(5,-5,0);
   glMaterial(GL_FRONT, GL_AMBIENT, no_mat)
   glMaterial(GL_FRONT, GL_DIFFUSE, mat_diffuse)
   glMaterial(GL_FRONT, GL_SPECULAR, mat_specular)
   glMaterial(GL_FRONT, GL_SHININESS, high_shininess)
   glMaterial(GL_FRONT, GL_EMISSION, no_mat)
   glutSolidSphere(2.4,100,200);
   glPopMatrix();

   glTranslatef(0,0,0);
   glPushMatrix();
   glColor3f(0.5,0.8,0.0);
   glTranslatef(0,-5,0);
   glMaterial(GL_FRONT, GL_AMBIENT, no_mat)
   glMaterial(GL_FRONT, GL_DIFFUSE, mat_diffuse)
   glMaterial(GL_FRONT, GL_SPECULAR, mat_specular)
   glMaterial(GL_FRONT, GL_SHININESS, high_shininess)
   glMaterial(GL_FRONT, GL_EMISSION, no_mat)
   glutSolidSphere(2.4,100,200);
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
