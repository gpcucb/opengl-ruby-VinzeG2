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
    glClearColor(0,0,0,0)         # background Color
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT) # borramos la pantalla
    glMatrixMode(GL_PROJECTION) # Modo proyección
    glLoadIdentity
    gluPerspective(60.0,1.0,1.0,100.0)    
    glMatrixMode(GL_MODELVIEW)
    glTranslatef(0.0,0.0,-16.0)
    glDepthFunc(GL_LEQUAL)
    glEnable(GL_DEPTH_TEST) #activa el Z-buffer
    glClearDepth(1.0)

    glPushMatrix();
    glTranslatef(-(BODY_WIDTH)/2,(BODY_HEIGHT-ARM_HEIGHT)/2,1);
    glTranslatef(0,ARM_LENGTH/2,0);
    glRotatef(-30,0,0,1);
    glTranslatef(0,-ARM_LENGTH/2,0);
    glPushMatrix();
    glScalef(ARM_WIDTH,ARM_HEIGHT,ARM_LENGTH);
    glutSolidCube(1);
    glPopMatrix();
    # ya tenemos el brazo... la mano
    glTranslatef(0,-(ARM_HEIGHT+ARM_WIDTH)/2,0);
    glColor3f(1,0.6,0.6);
    glScalef(ARM_WIDTH,ARM_WIDTH,ARM_LENGTH);
    glutSolidCube(1);
    glPopMatrix();


    glColor3f(0.0,0.3,0.8);
    glPushMatrix();
    glTranslatef((BODY_WIDTH)/2,(BODY_HEIGHT-ARM_HEIGHT)/2,0);
    glTranslatef(0,ARM_HEIGHT/2,0);
    glRotatef(30,0,0,1);
    glTranslatef(0,-ARM_HEIGHT/2,0);
    glPushMatrix();
    glScalef(ARM_WIDTH,ARM_HEIGHT,ARM_LENGTH);
    glutSolidCube(1);
    glPopMatrix();
#// ya tenemos el brazo... la mano
    glTranslatef(0,-(ARM_HEIGHT+ARM_WIDTH)/2,0);
    glColor3f(1,0.6,0.6);
    glScalef(ARM_WIDTH,ARM_WIDTH,ARM_LENGTH);
    glutSolidCube(1);
    glPopMatrix();

    glColor3f(1,0.6,0.6);
    glPushMatrix();
    glTranslatef(0,BODY_HEIGHT/2 + HEAD_RADIUS*3/4,0);
    glutSolidSphere(HEAD_RADIUS,10,10);
    glPopMatrix();
=begin

    glBegin(GL_QUADS)
        glColor3f(1,1,0)
        glVertex(-0.5,-0.5,0.5)        
        glColor3f(0,1,1)
        glVertex(0.5,-0.5,0.5)        
        glColor3f(1,0,1)
        glVertex(0.5,0.5,-0.5)       
         glColor3f(1,1,1)
        glVertex(-0.5,0.5,-0.5)
    glEnd

    
    glBegin(GL_TRIANGLES)
        glColor3f(1,1,0)
        glVertex(0.0,0.5,0.0)        
        glColor3f(0,1,1)
        glVertex(-0.7,-0.5,0.0)        
        glColor3f(1,0,1)
        glVertex(0.7,-0.5,0.0)               
    glEnd
=end

glTranslatef(0,BODY_HEIGHT/2,0);
glPushMatrix();
glScalef(BODY_WIDTH,BODY_HEIGHT,BODY_LENGTH);
glColor3f(0.0,0.3,0.8);
glutSolidCube(1);
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