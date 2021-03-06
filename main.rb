require 'opengl'
require 'glu'
require 'glut'
include Gl
include Glu
include Glut

BODY_HEIGHT = 4.0
BODY_WIDTH = 2.5
BODY_LENGTH = 1.0
ARM_HEIGHT = 3.5
ARM_WIDTH = 1.0
ARM_LENGTH = 1.0
LEG_HEIGHT = 4.5
LEG_WIDTH = 1.0
LEG_LENGTH = 1.0
HEAD_RADIUS = 1.1

def disp

=begin
    

   glDepthFunc(GL_LEQUAL);
   glEnable(GL_DEPTH_TEST);
   glClearColor(0.0,0.0,0.0,0.0);
   glClearDepth(1.0);
   glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
   glMatrixMode(GL_PROJECTION);
   glLoadIdentity();
   gluPerspective(60.0,1.0,1.0,100.0);

   glMatrixMode(GL_MODELVIEW);
   glTranslatef(0.0,0.0,-16.0);

   #body of the forbidden one
   glTranslatef(0,BODY_HEIGHT/3,0);
   glPushMatrix();
   glScalef(BODY_WIDTH,BODY_HEIGHT,BODY_LENGTH);
   glColor3f(0.0,0.3,0.8);
   glutSolidCube(1);
   glPopMatrix();

   #right arm of the forbidden one
   glPushMatrix();
   glTranslatef(-(BODY_WIDTH)/2,(BODY_HEIGHT-ARM_HEIGHT)/2,0);
   glTranslatef(0.3,ARM_HEIGHT/2,0);
   glRotatef(-150,0,0,1);
   glTranslatef(0,-ARM_HEIGHT/2,0);
   glPushMatrix();
   glScalef(ARM_WIDTH,ARM_HEIGHT,ARM_LENGTH);
   glutSolidCube(1);
   glPopMatrix();

   glTranslatef(0,-(ARM_HEIGHT+ARM_WIDTH)/2,0);
   glColor3f(1,0.6,0.6);
   glScalef(ARM_WIDTH,ARM_WIDTH,ARM_LENGTH);
   glutSolidCube(1);
   glPopMatrix();

  #left arm of the forbidden one
  glColor3f(0.0,0.3,0.8);
  glPushMatrix();
  glTranslatef((BODY_WIDTH)/2,(BODY_HEIGHT-ARM_HEIGHT)/2,0);
  glTranslatef(-0.5,ARM_HEIGHT/2,0);
  glRotatef(30,0,0,1);
  glTranslatef(0,-ARM_HEIGHT/2,0);
  glPushMatrix();
  glScalef(ARM_WIDTH,ARM_HEIGHT,ARM_LENGTH);
  glutSolidCube(1);
  glPopMatrix();

  glTranslatef(0,-(ARM_HEIGHT+ARM_WIDTH)/2,0);
  glColor3f(1,0.6,0.6);
  glScalef(ARM_WIDTH,ARM_WIDTH,ARM_LENGTH);
  glutSolidCube(1);
  glPopMatrix();

  #right leg of the forbidden one
  glColor3f(0.0,0.3,0.8);
  glPushMatrix();
  glTranslatef(-(BODY_WIDTH-LEG_WIDTH)/2,-
  (BODY_HEIGHT+LEG_HEIGHT)/2,0);
  glTranslatef(0,ARM_HEIGHT/2,0);
  glRotatef(-15,100,90,150);
  glPushMatrix();
  glScalef(LEG_WIDTH,LEG_HEIGHT,LEG_LENGTH);
  glutSolidCube(1);
  glPopMatrix();

  glTranslatef(0,-(LEG_HEIGHT+LEG_WIDTH)/2,LEG_LENGTH);
  glColor3f(0.3,0.4,0.4);
  glScalef(LEG_WIDTH,LEG_WIDTH,LEG_LENGTH*2);
  glutSolidCube(1);
  glPopMatrix();

  #left leg of the forbidden one

  glColor3f(0.0,0.3,0.8);
  glPushMatrix();
  glTranslatef((BODY_WIDTH-LEG_WIDTH)/2,-
  (BODY_HEIGHT+LEG_HEIGHT)/2,0);
  glTranslatef(0,ARM_HEIGHT/2,0);
  glRotatef(5,100,90,150);
  glPushMatrix();
  glScalef(LEG_WIDTH,LEG_HEIGHT,LEG_LENGTH);
  glutSolidCube(1);
  glPopMatrix();

  glTranslatef(0,-(LEG_HEIGHT+LEG_WIDTH)/2,LEG_LENGTH);
  glColor3f(0.3,0.4,0.4);
  glScalef(LEG_WIDTH,LEG_WIDTH,LEG_LENGTH*2);
  glutSolidCube(1);
  glPopMatrix();

  #Exodia the forbidden one

  glColor3f(1,0.6,0.6);
  glPushMatrix();
  glTranslatef(0,BODY_HEIGHT/2 + HEAD_RADIUS*3/4,0);
  glutSolidSphere(HEAD_RADIUS,10,10);
  glPopMatrix();

  
  glTranslatef(0,BODY_HEIGHT/2,0);
  glPushMatrix();
  glScalef(BODY_WIDTH,BODY_HEIGHT,BODY_LENGTH);
  glColor3f(0.0,0.3,0.8);
  glutSolidCube(1);
  glPopMatrix();

=end


   glDepthFunc(GL_LEQUAL);
   glEnable(GL_DEPTH_TEST);
   glClearColor(0.0,0.0,0.0,0.0);
   glClearDepth(1.0);
   glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
   glMatrixMode(GL_PROJECTION);
   glLoadIdentity();
   gluPerspective(60.0,1.0,1.0,100.0);

   glMatrixMode(GL_MODELVIEW);
   glTranslatef(0.0,0.0,-15.0);
   glRotatef(30,20,20,1);

   #cube
   glTranslatef(0,0,0);
   glPushMatrix();
   glColor3f(0.0,0.3,0.8);
   glutWireCube(1);
   glPopMatrix();

   #cube rotated
   glTranslatef(0,0,0);
   glPushMatrix();
   glRotatef(30,20,20,1);
   glColor3f(0.3,0.5,0.5);
   glutWireCube(1);
   glPopMatrix();

   #cube scaled
   glTranslatef(0,0,0);
   glPushMatrix();
   glScalef(5.5,5.5,5.5);
   glColor3f(1.0,0.3,0.8);
   glutWireCube(1);   
   glPopMatrix();

   #cube translated
   
   glPushMatrix();
   glColor3f(0.0,0.6,0.8);
   glTranslatef(4.5,4.0,0);
   glutWireCube(1);
   glPopMatrix();

   #cube
   glTranslatef(0,0,0);
   glPushMatrix();
   glScalef(3.5,3.5,3.5);
   glTranslatef(-1.8,0,0);
   glRotatef(30,-10,20,1);
   glColor3f(0.5,0.3,0.8);
   glutWireCube(1);
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
