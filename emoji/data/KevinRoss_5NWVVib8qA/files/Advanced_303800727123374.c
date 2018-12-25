#include "Constants.h"
#include "Advanced.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

/* Horizontally Mirror an image*/
void HMirror(unsigned char R[WIDTH][HEIGHT], unsigned char G[WIDTH][HEIGHT], unsigned char B[WIDTH][HEIGHT]){
    unsigned char temp_half_R[WIDTH/2][HEIGHT];
    unsigned char temp_half_G[WIDTH/2][HEIGHT];
    unsigned char temp_half_B[WIDTH/2][HEIGHT];
    // Save the first half of the picture
    for(int i = 0; i<(WIDTH/2); i++){
        for(int j = 0; j<HEIGHT; j++){
            temp_half_R[i][j] = R[i][j];
            temp_half_G[i][j] = G[i][j];
            temp_half_B[i][j] = B[i][j];
        }
    }
    // Add saved pixels into the second half of the picture
    for(int i = (WIDTH/2); i< WIDTH; i++){
        for(int j = 0; j < HEIGHT; j++){
            R[i][j] = temp_half_R[WIDTH - i -1][j];
            G[i][j] = temp_half_G[WIDTH - i -1][j];
            B[i][j] = temp_half_B[WIDTH - i -1][j];
        }
    }
}

/* Set brightness of an image */
void Brightness(unsigned char R[WIDTH][HEIGHT], unsigned char G[WIDTH][HEIGHT], unsigned char B[WIDTH][HEIGHT], int brightness){
    int new_R, new_G, new_B;
    for(int i = 0; i<WIDTH; i++){
        for(int j = 0; j<HEIGHT; j++){
            new_R = R[i][j] + brightness;
            new_G = G[i][j] + brightness;
            new_B = B[i][j] + brightness;

            // Adjustments for Overflow or underflow
            new_R = new_R > MAX_PIXEL ? MAX_PIXEL: ((new_R<MIN_PIXEL ? 0 :new_R));
            new_G = new_G > MAX_PIXEL ? MAX_PIXEL: ((new_G<MIN_PIXEL ? 0 :new_G));
            new_B = new_B > MAX_PIXEL ? MAX_PIXEL: ((new_B<MIN_PIXEL ? 0 :new_B));
            R[i][j] = (unsigned char)new_R;
            G[i][j] = (unsigned char)new_G;
            B[i][j] = (unsigned char)new_B;
        }
    }
}

/* Rotate Hue of an image */
void HueRotate(unsigned char R[WIDTH][HEIGHT], unsigned char G[WIDTH][HEIGHT], unsigned char B[WIDTH][HEIGHT], float angle){
    double Y[WIDTH][HEIGHT];	
    double I[WIDTH][HEIGHT];
    double Q[WIDTH][HEIGHT];
    double sine, cosine;
    double temp;

    matrixMult(R,G,B,Y,I,Q);

    // Rotation
    cosine = cos((double)angle);
    sine = sin((double)angle);
    for(int i = 0; i<WIDTH; i++){
        for(int j = 0; j<HEIGHT; j++){
            temp = I[i][j];
            I[i][j] = (cosine*I[i][j])-(cosine*Q[i][j]);
            Q[i][j] = (sine*temp)+(sine*Q[i][j]);
        }
    }

    ReverseMatrixMult(R,G,B,Y,I,Q);

}

//Perform RGB to YIQ
void matrixMult(unsigned char R[WIDTH][HEIGHT], unsigned char G[WIDTH][HEIGHT], unsigned char B[WIDTH][HEIGHT], double Y[WIDTH][HEIGHT], double I[WIDTH][HEIGHT], double Q[WIDTH][HEIGHT]){
    for(int i = 0; i<WIDTH; i++){
        for(int j = 0; j<HEIGHT; j++){
            Y[i][j] = (.299*((double)R[i][j]/255)) + (.587*((double)G[i][j]/255)) + (0.114*((double)B[i][j]/255));
            I[i][j] = (.596*((double)R[i][j]/255)) - (.274*((double)G[i][j]/255)) - (0.321*((double)B[i][j]/255));
            Q[i][j] = (.211*((double)R[i][j]/255)) - (.523*((double)G[i][j]/255)) + (0.311*((double)B[i][j]/255));
        }
    }
}

// Perform YIQ to RGB
void ReverseMatrixMult(unsigned char R[WIDTH][HEIGHT], unsigned char G[WIDTH][HEIGHT], unsigned char B[WIDTH][HEIGHT], double Y[WIDTH][HEIGHT], double I[WIDTH][HEIGHT], double Q[WIDTH][HEIGHT]){
    double temp_R;	
    double temp_G;
    double temp_B;
    for(int i = 0; i<WIDTH; i++){
        for(int j = 0; j<HEIGHT; j++){
            temp_R = (Y[i][j]) + (.956*(I[i][j])) + (0.621*(Q[i][j]));
            temp_G = (Y[i][j]) - (.272*(I[i][j])) - (0.647*(Q[i][j]));
            temp_B = (Y[i][j]) - (1.107*(I[i][j])) + (1.705*(Q[i][j]));

            // Adjustments for Overflow or underflow
            temp_R = temp_R*255 > MAX_PIXEL ? MAX_PIXEL: ((255*temp_R<MIN_PIXEL ? 0 :255*temp_R));
            temp_G = temp_G*255 > MAX_PIXEL ? MAX_PIXEL: ((255*temp_G<MIN_PIXEL ? 0 :255*temp_G));
            temp_B = temp_B*255 > MAX_PIXEL ? MAX_PIXEL: ((255*temp_B<MIN_PIXEL ? 0 :255*temp_B));
            R[i][j] = (unsigned char)temp_R;
            G[i][j] = (unsigned char)temp_G;
            B[i][j] = (unsigned char)temp_B;
        }
    }
}