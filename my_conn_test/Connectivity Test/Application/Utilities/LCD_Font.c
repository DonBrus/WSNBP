/************************************************************************************
* Source file definitions of the character bitmaps used in LCD.
*
* (c) Copyright 2007, Freescale, Inc. All rights reserved.
*
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale Semiconductor.
*
*****************************************************************************/

#include "EmbeddedTypes.h"
#include "LCD_Font.h"

/******************************************************************************
*******************************************************************************
* Private macros
*******************************************************************************
******************************************************************************/

/******************************************************************************
*******************************************************************************
* Private prototypes
*******************************************************************************
******************************************************************************/

/******************************************************************************
*******************************************************************************
* Private type definitions
*******************************************************************************
******************************************************************************/

/******************************************************************************
*******************************************************************************
* Private memory declarations
*******************************************************************************
******************************************************************************/

/* index table for characters */

const uint16_t gLCDNormalIndex[]=
{
    0,/*  (space) */
    6,/*  !   */
   12,/*  "   */
   18,/*  #   */
   24,/*  $   */
   30,/*  %   */
   36,/*  &   */
   42,/*  '   */
   48,/*  (   */
   54,/*  )   */
   60,/*  *   */
   66,/*  +   */
   72,/*  ,   */
   78,/*  -   */
   84,/*  .   */
   90,/*  /   */
   96,/*  0   */
  102,/*  1   */
  108,/*  2   */
  114,/*  3   */
  120,/*  4   */
  126,/*  5   */
  132,/*  6   */
  138,/*  7   */
  144,/*  8   */
  150,/*  9   */
  156,/*  :   */
  162,/*  ;   */
  168,/*  <   */
  174,/*  =   */
  180,/*  >   */
  186,/*  ?   */
  192,/*  @   */
  198,/*  A   */
  204,/*  B   */
  210,/*  C   */
  216,/*  D   */
  222,/*  E   */
  228,/*  F   */
  234,/*  G   */
  240,/*  H   */
  246,/*  I   */
  252,/*  J   */
  258,/*  K   */
  264,/*  L   */
  270,/*  M   */
  276,/*  N   */
  282,/*  O   */
  288,/*  P   */
  294,/*  Q   */
  300,/*  R   */
  306,/*  S   */
  312,/*  T   */
  318,/*  U   */
  324,/*  V   */
  330,/*  W   */
  336,/*  X   */
  342,/*  Y   */
  348,/*  Z   */
  354,/*  [   */
  360,/*  \   */
  366,/*  ]   */
  372,/*  ^   */
  378,/*  _   */
  384,/*  `   */
  390,/*  a   */
  396,/*  b   */
  402,/*  c   */
  408,/*  d   */
  414,/*  e   */
  420,/*  f   */
  426,/*  g   */
  432,/*  h   */
  438,/*  i   */
  444,/*  j   */
  450,/*  k   */
  456,/*  l   */
  462,/*  m   */
  468,/*  n   */
  474,/*  o   */
  480,/*  p   */
  486,/*  q   */
  492,/*  r   */
  498,/*  s   */
  504,/*  t   */
  510,/*  u   */
  516,/*  v   */
  522,/*  w   */
  528,/*  x   */
  534,/*  y   */
  540,/*  z   */
  546,/*  {   */
  552,/*  |   */
  558,/*  }   */
  564,/*  ~   */
  570 /*      */
};

/* Font definition table for characters */
const uint8_t gLCDNormalFont[]=
{
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,/*  (space) */
  0x00, 0x00, 0x5F, 0x00, 0x00, 0x00,/*  !   */
  0x00, 0x07, 0x00, 0x07, 0x00, 0x00,/*  "   */
  0x14, 0x7F, 0x14, 0x7F, 0x14, 0x00,/*  #   */
  0x24, 0x2A, 0x7F, 0x2A, 0x12, 0x00,/*  $   */
  0x23, 0x13, 0x08, 0x64, 0x62, 0x00,/*  %   */
  0x36, 0x49, 0x55, 0x22, 0x50, 0x00,/*  &   */
  0x00, 0x05, 0x03, 0x00, 0x00, 0x00,/*  '   */
  0x00, 0x1C, 0x22, 0x41, 0x00, 0x00,/*  (   */
  0x00, 0x41, 0x22, 0x1C, 0x00, 0x00,/*  )   */
  0x08, 0x2A, 0x1C, 0x2A, 0x08, 0x00,/*  *   */
  0x08, 0x08, 0x3E, 0x08, 0x08, 0x00,/*  +   */
  0x00, 0x50, 0x30, 0x00, 0x00, 0x00,/*  ,   */
  0x08, 0x08, 0x08, 0x08, 0x08, 0x00,/*  -   */
  0x00, 0x30, 0x30, 0x00, 0x00, 0x00,/*  .   */
  0x20, 0x10, 0x08, 0x04, 0x02, 0x00,/*  /   */
  0x3E, 0x51, 0x49, 0x45, 0x3E, 0x00,/*  0   */
  0x00, 0x42, 0x7F, 0x40, 0x00, 0x00,/*  1   */
  0x42, 0x61, 0x51, 0x49, 0x46, 0x00,/*  2   */
  0x21, 0x41, 0x45, 0x4B, 0x31, 0x00,/*  3   */
  0x18, 0x14, 0x12, 0x7F, 0x10, 0x00,/*  4   */
  0x27, 0x45, 0x45, 0x45, 0x39, 0x00,/*  5   */
  0x3C, 0x4A, 0x49, 0x49, 0x30, 0x00,/*  6   */
  0x01, 0x71, 0x09, 0x05, 0x03, 0x00,/*  7   */
  0x36, 0x49, 0x49, 0x49, 0x36, 0x00,/*  8   */
  0x06, 0x49, 0x49, 0x29, 0x1E, 0x00,/*  9   */
  0x00, 0x36, 0x36, 0x00, 0x00, 0x00,/*  :   */
  0x00, 0x56, 0x36, 0x00, 0x00, 0x00,/*  ;   */
  0x00, 0x08, 0x14, 0x22, 0x41, 0x00,/*  <   */
  0x14, 0x14, 0x14, 0x14, 0x14, 0x00,/*  =   */
  0x41, 0x22, 0x14, 0x08, 0x00, 0x00,/*  >   */
  0x02, 0x01, 0x51, 0x09, 0x06, 0x00,/*  ?   */
  0x32, 0x49, 0x79, 0x41, 0x3E, 0x00,/*  @   */
  0x7E, 0x11, 0x11, 0x11, 0x7E, 0x00,/*  A   */
  0x7F, 0x49, 0x49, 0x49, 0x36, 0x00,/*  B   */
  0x3E, 0x41, 0x41, 0x41, 0x22, 0x00,/*  C   */
  0x7F, 0x41, 0x41, 0x22, 0x1C, 0x00,/*  D   */
  0x7F, 0x49, 0x49, 0x49, 0x41, 0x00,/*  E   */
  0x7F, 0x09, 0x09, 0x01, 0x01, 0x00,/*  F   */
  0x3E, 0x41, 0x41, 0x51, 0x32, 0x00,/*  G   */
  0x7F, 0x08, 0x08, 0x08, 0x7F, 0x00,/*  H   */
  0x00, 0x41, 0x7F, 0x41, 0x00, 0x00,/*  I   */
  0x20, 0x40, 0x41, 0x3F, 0x01, 0x00,/*  J   */
  0x7F, 0x08, 0x14, 0x22, 0x41, 0x00,/*  K   */
  0x7F, 0x40, 0x40, 0x40, 0x40, 0x00,/*  L   */
  0x7F, 0x02, 0x04, 0x02, 0x7F, 0x00,/*  M   */
  0x7F, 0x04, 0x08, 0x10, 0x7F, 0x00,/*  N   */
  0x3E, 0x41, 0x41, 0x41, 0x3E, 0x00,/*  O   */
  0x7F, 0x09, 0x09, 0x09, 0x06, 0x00,/*  P   */
  0x3E, 0x41, 0x51, 0x21, 0x5E, 0x00,/*  Q   */
  0x7F, 0x09, 0x19, 0x29, 0x46, 0x00,/*  R   */
  0x46, 0x49, 0x49, 0x49, 0x31, 0x00,/*  S   */
  0x01, 0x01, 0x7F, 0x01, 0x01, 0x00,/*  T   */
  0x3F, 0x40, 0x40, 0x40, 0x3F, 0x00,/*  U   */
  0x1F, 0x20, 0x40, 0x20, 0x1F, 0x00,/*  V   */
  0x7F, 0x20, 0x18, 0x20, 0x7F, 0x00,/*  W   */
  0x63, 0x14, 0x08, 0x14, 0x63, 0x00,/*  X   */
  0x03, 0x04, 0x78, 0x04, 0x03, 0x00,/*  Y   */
  0x61, 0x51, 0x49, 0x45, 0x43, 0x00,/*  Z   */
  0x00, 0x00, 0x7F, 0x41, 0x41, 0x00,/*  [   */
  0x02, 0x04, 0x08, 0x10, 0x20, 0x00,/*  \   */
  0x41, 0x41, 0x7F, 0x00, 0x00, 0x00,/*  ]   */
  0x04, 0x02, 0x01, 0x02, 0x04, 0x00,/*  ^   */
  0x40, 0x40, 0x40, 0x40, 0x40, 0x00,/*  _   */
  0x00, 0x01, 0x02, 0x04, 0x00, 0x00,/*  `   */
  0x20, 0x54, 0x54, 0x54, 0x78, 0x00,/*  a   */
  0x7F, 0x48, 0x44, 0x44, 0x38, 0x00,/*  b   */
  0x38, 0x44, 0x44, 0x44, 0x20, 0x00,/*  c   */
  0x38, 0x44, 0x44, 0x48, 0x7F, 0x00,/*  d   */
  0x38, 0x54, 0x54, 0x54, 0x18, 0x00,/*  e   */
  0x08, 0x7E, 0x09, 0x01, 0x02, 0x00,/*  f   */
  0x08, 0x14, 0x54, 0x54, 0x3C, 0x00,/*  g   */
  0x7F, 0x08, 0x04, 0x04, 0x78, 0x00,/*  h   */
  0x00, 0x44, 0x7D, 0x40, 0x00, 0x00,/*  i   */
  0x20, 0x40, 0x44, 0x3D, 0x00, 0x00,/*  j   */
  0x00, 0x7F, 0x10, 0x28, 0x44, 0x00,/*  k   */
  0x00, 0x41, 0x7F, 0x40, 0x00, 0x00,/*  l   */
  0x7C, 0x04, 0x18, 0x04, 0x78, 0x00,/*  m   */
  0x7C, 0x08, 0x04, 0x04, 0x78, 0x00,/*  n   */
  0x38, 0x44, 0x44, 0x44, 0x38, 0x00,/*  o   */
  0x7C, 0x14, 0x14, 0x14, 0x08, 0x00,/*  p   */
  0x08, 0x14, 0x14, 0x18, 0x7C, 0x00,/*  q   */
  0x7C, 0x08, 0x04, 0x04, 0x08, 0x00,/*  r   */
  0x48, 0x54, 0x54, 0x54, 0x20, 0x00,/*  s   */
  0x04, 0x3F, 0x44, 0x40, 0x20, 0x00,/*  t   */
  0x3C, 0x40, 0x40, 0x20, 0x7C, 0x00,/*  u   */
  0x1C, 0x20, 0x40, 0x20, 0x1C, 0x00,/*  v   */
  0x3C, 0x40, 0x30, 0x40, 0x3C, 0x00,/*  w   */
  0x44, 0x28, 0x10, 0x28, 0x44, 0x00,/*  x   */
  0x0C, 0x50, 0x50, 0x50, 0x3C, 0x00,/*  y   */
  0x44, 0x64, 0x54, 0x4C, 0x44, 0x00,/*  z   */
  0x00, 0x08, 0x36, 0x41, 0x00, 0x00,/*  {   */
  0x00, 0x00, 0x7F, 0x00, 0x00, 0x00,/*  |   */
  0x00, 0x41, 0x36, 0x08, 0x00, 0x00,/*  }   */
  0x08, 0x04, 0x08, 0x10, 0x08, 0x00,/*  ~   */
};


const uint16_t gLCDVerdanaIndex[]=
{
    0,/* (space) */
    3,/* !  */
    7,/* "  */
   12,/* #  */
   21,/* $  */
   28,/* %  */
   40,/* &  */
   48,/* '  */  
   51,/* (  */
   56,/* )  */
   61,/* *  */
   68,/* +  */
   75,/* ,  */  
   79,/* -  */
   82,/* .  */  
   83,/* /  */  
   88,/* 0  */  
   95,/* 1  */  
  102,/* 2  */  
  109,/* 3  */  
  116,/* 4  */
  123,/* 5  */
  130,/* 6  */
  137,/* 7  */
  144,/* 8  */
  151,/* 9  */
  158,/* :  */
  163,/* ;  */
  168,/* <  */
  177,/* =  */
  186,/* >  */
  195,/* ?  */  
  201,/* @  */  
  211,/* A  */
  218,/* B  */
  225,/* C  */
  232,/* D  */
  239,/* E  */ 
  245,/* F  */
  251,/* G  */  
  258,/* H  */
  265,/* I  */
  270,/* J  */
  275,/* K  */
  282,/* L  */
  288,/* M  */
  297,/* N  */
  305,/* O  */
  313,/* P  */
  320,/* Q  */
  328,/* R  */
  335,/* S  */
  342,/* T  */
  349,/* U  */
  356,/* V  */
  363,/* W  */
  373,/* X  */
  381,/* Y  */
  388,/* Z  */
  396,/* [  */
  401,/* \  */
  406,/* ]  */
  411,/* ^  */
  416,/* _  */
  420,/* `  */
  424,/* a  */
  430,/* b  */
  436,/* c  */
  441,/* d  */
  447,/* e  */
  453,/* f  */
  457,/* g  */
  463,/* h  */
  469,/* i  */
  472,/* j  */
  476,/* k  */
  482,/* l  */
  485,/* m  */
  494,/* n  */
  500,/* o  */
  506,/* p  */
  512,/* q  */
  518,/* r  */
  523,/* s  */
  529,/* t  */
  533,/* u  */
  539,/* v  */
  546,/* w  */
  554,/* x  */
  561,/* y  */
  568,/* z  */
  574,/* {  */
  581,/* |  */
  586,/* }  */
  593,/* ~  */
  602 /*    */ 
};

/* Font definition table for characters */
const uint8_t gLCDVerdanaFont[]=
{
    /* ' ' 0x0020 charwidth: 3 */
    0x00, 0x00, 	/*  [             ]  */
    0x00, 0x00, 	/*  [             ]  */
    0x00, 0x00, 	/*  [             ]  */
    
    /* '!' 0x0021 charwidth: 4 */
    0x00, 0x00, 	/*  [             ]  */
    0x00, 0x00, 	/*  [             ]  */
    0x2F, 0xC0, 	/*  [  * ******   ]  */
    0x00, 0x00, 	/*  [             ]  */   
    
    /* '"' 0x0022 charwidth: 5 */
    0x00, 0x00, 	/*  [             ]  */
    0x00, 0xE0, 	/*  [        ***  ]  */
    0x00, 0x00, 	/*  [             ]  */
    0x00, 0xE0, 	/*  [        ***  ]  */
    0x00, 0x00, 	/*  [             ]  */    
    
    /* '#' 0x0023 charwidth: 9 */
    0x00, 0x00, 	/*  [             ]  */
    0x08, 0x00, 	/*  [    *        ]  */
    0x39, 0x00, 	/*  [  ***  *     ]  */
    0x0F, 0x00, 	/*  [    ****     ]  */
    0x39, 0xC0, 	/*  [  ***  ***   ]  */
    0x0F, 0x00, 	/*  [    ****     ]  */
    0x09, 0xC0, 	/*  [    *  ***   ]  */
    0x01, 0x00, 	/*  [       *     ]  */
    0x00, 0x00, 	/*  [             ]  */
    
    /* '$' 0x0024 charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x23, 0x00, 	/*  [  *   **     ]  */
    0x24, 0x80, 	/*  [  *  *  *    ]  */
    0xFF, 0xE0, 	/*  [***********  ]  */
    0x24, 0x80, 	/*  [  *  *  *    ]  */
    0x18, 0x80, 	/*  [   **   *    ]  */
    0x00, 0x00, 	/*  [             ]  */    

    /* '%' 0x0025 charwidth: 12 */
    0x00, 0x00, 	/*  [             ]  */
    0x01, 0x80, 	/*  [       **    ]  */
    0x02, 0x40, 	/*  [      *  *   ]  */
    0x02, 0x40, 	/*  [      *  *   ]  */
    0x31, 0x80, 	/*  [  **   **    ]  */
    0x0C, 0x00, 	/*  [    **       ]  */
    0x03, 0x00, 	/*  [      **     ]  */
    0x18, 0xC0, 	/*  [   **   **   ]  */
    0x24, 0x00, 	/*  [  *  *       ]  */
    0x24, 0x00, 	/*  [  *  *       ]  */
    0x18, 0x00, 	/*  [   **        ]  */
    0x00, 0x00, 	/*  [             ]  */
    
    /* '&' 0x0026 charwidth: 8 */
    0x00, 0x00, 	/*  [             ]  */
    0x1D, 0x80, 	/*  [   *** **    ]  */
    0x22, 0x40, 	/*  [  *   *  *   ]  */
    0x22, 0x40, 	/*  [  *   *  *   ]  */
    0x25, 0x80, 	/*  [  *  * **    ]  */
    0x18, 0x00, 	/*  [   **        ]  */
    0x16, 0x00, 	/*  [   * **      ]  */
    0x20, 0x00, 	/*  [  *          ]  */    
    
    /* ''' 0x0027 charwidth: 3 */
    0x00, 0x00, 	/*  [             ]  */
    0x00, 0xE0, 	/*  [        ***  ]  */
    0x00, 0x00, 	/*  [             ]  */
    
    /* '(' 0x0028 charwidth: 5 */
    0x00, 0x00, 	/*  [             ]  */
    0x1F, 0x00, 	/*  [   *****     ]  */
    0x60, 0xC0, 	/*  [ **     **   ]  */
    0x80, 0x20, 	/*  [*         *  ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* ')' 0x0029 charwidth: 5 */
    0x00, 0x00, 	/*  [             ]  */
    0x80, 0x20, 	/*  [*         *  ]  */
    0x60, 0xC0, 	/*  [ **     **   ]  */
    0x1F, 0x00, 	/*  [   *****     ]  */
    0x00, 0x00, 	/*  [             ]  */
    
    /* '*' 0x002A charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x01, 0x40, 	/*  [       * *   ]  */
    0x00, 0x80, 	/*  [        *    ]  */
    0x03, 0xE0, 	/*  [      *****  ]  */
    0x00, 0x80, 	/*  [        *    ]  */
    0x01, 0x40, 	/*  [       * *   ]  */
    0x00, 0x00, 	/*  [             ]  */    

    /* '+' 0x002B charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x04, 0x00, 	/*  [     *       ]  */
    0x04, 0x00, 	/*  [     *       ]  */
    0x3F, 0x80, 	/*  [  *******    ]  */
    0x04, 0x00, 	/*  [     *       ]  */
    0x04, 0x00, 	/*  [     *       ]  */
    0x00, 0x00, 	/*  [             ]  */
    
    /* ',' 0x002C charwidth: 4 */
    0x00, 0x00, 	/*  [             ]  */
    0x80, 0x00, 	/*  [*            ]  */
    0x70, 0x00, 	/*  [ ***         ]  */
    0x00, 0x00, 	/*  [             ]  */  
    
    /* '-' 0x005F charwidth: 3 */
    0x02, 0x00, 	/*  [*            ]  */
    0x02, 0x00, 	/*  [*            ]  */
    0x02, 0x00, 	/*  [*            ]  */   
    
    /* '.' 0x002E charwidth: 1 */
    0x30, 0x00, 	/*  [  **         ]  */  
    
    /* '/' 0x002F charwidth: 5 */
    0x60, 0x00, 	/*  [ **          ]  */
    0x18, 0x00, 	/*  [   **        ]  */
    0x06, 0x00, 	/*  [     **      ]  */
    0x01, 0x80, 	/*  [       **    ]  */
    0x00, 0x60, 	/*  [         **  ]  */  
    
    /* '0' 0x0030 charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x1F, 0x80, 	/*  [   ******    ]  */
    0x20, 0x40, 	/*  [  *      *   ]  */
    0x20, 0x40, 	/*  [  *      *   ]  */
    0x20, 0x40, 	/*  [  *      *   ]  */
    0x1F, 0x80, 	/*  [   ******    ]  */
    0x00, 0x00, 	/*  [             ]  */  
    
    /* '1' 0x0031 charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x20, 0x80, 	/*  [  *     *    ]  */
    0x20, 0x80, 	/*  [  *     *    ]  */
    0x3F, 0xC0, 	/*  [  ********   ]  */
    0x20, 0x00, 	/*  [  *          ]  */
    0x20, 0x00, 	/*  [  *          ]  */
    0x00, 0x00, 	/*  [             ]  */    
    
    /* '2' 0x0032 charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x30, 0x80, 	/*  [  **    *    ]  */
    0x28, 0x40, 	/*  [  * *    *   ]  */
    0x24, 0x40, 	/*  [  *  *   *   ]  */
    0x22, 0x40, 	/*  [  *   *  *   ]  */
    0x21, 0x80, 	/*  [  *    **    ]  */
    0x00, 0x00, 	/*  [             ]  */    
    
    /* '3' 0x0033 charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x10, 0x80, 	/*  [   *    *    ]  */
    0x20, 0x40, 	/*  [  *      *   ]  */
    0x22, 0x40, 	/*  [  *   *  *   ]  */
    0x22, 0x40, 	/*  [  *   *  *   ]  */
    0x1D, 0x80, 	/*  [   *** **    ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* '4' 0x0034 charwidth: 7 */
    0x0C, 0x00, 	/*  [    **       ]  */
    0x0A, 0x00, 	/*  [    * *      ]  */
    0x09, 0x00, 	/*  [    *  *     ]  */
    0x08, 0x80, 	/*  [    *   *    ]  */
    0x3F, 0xC0, 	/*  [  ********   ]  */
    0x08, 0x00, 	/*  [    *        ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* '5' 0x0035 charwidth: 7 */
    0x00, 0x00, 	/*  [|             |]  */
    0x13, 0xC0, 	/*  [|   *  ****   |]  */
    0x22, 0x40, 	/*  [|  *   *  *   |]  */
    0x22, 0x40, 	/*  [|  *   *  *   |]  */
    0x22, 0x40, 	/*  [|  *   *  *   |]  */
    0x1C, 0x40, 	/*  [|   ***   *   |]  */
    0x00, 0x00, 	/*  [|             |]  */

    /* '6' 0x0036 charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x1F, 0x00, 	/*  [   *****     ]  */
    0x22, 0x80, 	/*  [  *   * *    ]  */
    0x22, 0x40, 	/*  [  *   *  *   ]  */
    0x22, 0x40, 	/*  [  *   *  *   ]  */
    0x1C, 0x00, 	/*  [   ***       ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* '7' 0x0037 charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x00, 0x40, 	/*  [         *   ]  */
    0x30, 0x40, 	/*  [  **     *   ]  */
    0x0C, 0x40, 	/*  [    **   *   ]  */
    0x03, 0x40, 	/*  [      ** *   ]  */
    0x00, 0xC0, 	/*  [        **   ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* '8' 0x0038 charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x1D, 0x80, 	/*  [   *** **    ]  */
    0x22, 0x40, 	/*  [  *   *  *   ]  */
    0x22, 0x40, 	/*  [  *   *  *   ]  */
    0x22, 0x40, 	/*  [  *   *  *   ]  */
    0x1D, 0x80, 	/*  [   *** **    ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* '9' 0x0039 charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x03, 0x80, 	/*  [      ***    ]  */
    0x24, 0x40, 	/*  [  *  *   *   ]  */
    0x24, 0x40, 	/*  [  *  *   *   ]  */
    0x14, 0x40, 	/*  [   * *   *   ]  */
    0x0F, 0x80, 	/*  [    *****    ]  */
    0x00, 0x00, 	/*  [             ]  */
    
    /* ':' 0x003A charwidth: 5 */
    0x00, 0x00, 	/*  [             ]  */
    0x00, 0x00, 	/*  [             ]  */
    0x33, 0x00, 	/*  [  **  **     ]  */
    0x00, 0x00, 	/*  [             ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* ';' 0x003B charwidth: 5 */
    0x00, 0x00, 	/*  [             ]  */
    0x80, 0x00, 	/*  [*            ]  */
    0x73, 0x00, 	/*  [ ***  **     ]  */
    0x00, 0x00, 	/*  [             ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* '<' 0x003C charwidth: 9 */
    0x00, 0x00, 	/*  [             ]  */
    0x04, 0x00, 	/*  [     *       ]  */
    0x04, 0x00, 	/*  [     *       ]  */
    0x0A, 0x00, 	/*  [    * *      ]  */
    0x0A, 0x00, 	/*  [    * *      ]  */
    0x11, 0x00, 	/*  [   *   *     ]  */
    0x11, 0x00, 	/*  [   *   *     ]  */
    0x00, 0x00, 	/*  [             ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* '=' 0x003D charwidth: 9 */
    0x00, 0x00, 	/*  [             ]  */
    0x0A, 0x00, 	/*  [    * *      ]  */
    0x0A, 0x00, 	/*  [    * *      ]  */
    0x0A, 0x00, 	/*  [    * *      ]  */
    0x0A, 0x00, 	/*  [    * *      ]  */
    0x0A, 0x00, 	/*  [    * *      ]  */
    0x0A, 0x00, 	/*  [    * *      ]  */
    0x0A, 0x00, 	/*  [    * *      ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* '>' 0x003E charwidth: 9 */
    0x00, 0x00, 	/*  [             ]  */
    0x00, 0x00, 	/*  [             ]  */
    0x11, 0x00, 	/*  [   *   *     ]  */
    0x11, 0x00, 	/*  [   *   *     ]  */
    0x0A, 0x00, 	/*  [    * *      ]  */
    0x0A, 0x00, 	/*  [    * *      ]  */
    0x04, 0x00, 	/*  [     *       ]  */
    0x04, 0x00, 	/*  [     *       ]  */
    0x00, 0x00, 	/*  [             ]  */
    
    /* '?' 0x003F charwidth: 6 */
    0x00, 0x00, 	/*  [             ]  */
    0x00, 0x40, 	/*  [         *   ]  */
    0x2C, 0x40, 	/*  [  * **   *   ]  */
    0x02, 0x40, 	/*  [      *  *   ]  */
    0x01, 0x80, 	/*  [       **    ]  */
    0x00, 0x00, 	/*  [             ]  */    

    /* '@' 0x0040 charwidth: 10 */
    0x00, 0x00, 	/*  [             ]  */
    0x1F, 0x00, 	/*  [   *****     ]  */
    0x20, 0x80, 	/*  [  *     *    ]  */
    0x4E, 0x40, 	/*  [ *  ***  *   ]  */
    0x51, 0x40, 	/*  [ * *   * *   ]  */
    0x51, 0x40, 	/*  [ * *   * *   ]  */
    0x4F, 0x40, 	/*  [ *  **** *   ]  */
    0x10, 0x40, 	/*  [   *     *   ]  */
    0x0F, 0x80, 	/*  [    *****    ]  */
    0x00, 0x00, 	/*  [             ]  */    

    /* 'A' 0x0041 charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x38, 0x00, 	/*  [  ***        ]  */
    0x0F, 0x00, 	/*  [    ****     ]  */
    0x08, 0xC0, 	/*  [    *   **   ]  */
    0x0F, 0x00, 	/*  [    ****     ]  */
    0x38, 0x00, 	/*  [  ***        ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'B' 0x0042 charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x3F, 0xC0, 	/*  [  ********   ]  */
    0x22, 0x40, 	/*  [  *   *  *   ]  */
    0x22, 0x40, 	/*  [  *   *  *   ]  */
    0x23, 0x80, 	/*  [  *   ***    ]  */
    0x1C, 0x00, 	/*  [   ***       ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'C' 0x0043 charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x0F, 0x00, 	/*  [    ****     ]  */
    0x10, 0x80, 	/*  [   *    *    ]  */
    0x20, 0x40, 	/*  [  *      *   ]  */
    0x20, 0x40, 	/*  [  *      *   ]  */
    0x10, 0x80, 	/*  [   *    *    ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'D' 0x0044 charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x3F, 0xC0, 	/*  [  ********   ]  */
    0x20, 0x40, 	/*  [  *      *   ]  */
    0x20, 0x40, 	/*  [  *      *   ]  */
    0x10, 0x80, 	/*  [   *    *    ]  */
    0x0F, 0x00, 	/*  [    ****     ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'E' 0x0045 charwidth: 6 */
    0x00, 0x00, 	/*  [             ]  */
    0x3F, 0xC0, 	/*  [  ********   ]  */
    0x22, 0x40, 	/*  [  *   *  *   ]  */
    0x22, 0x40, 	/*  [  *   *  *   ]  */
    0x22, 0x40, 	/*  [  *   *  *   ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'F' 0x0046 charwidth: 6 */
    0x00, 0x00, 	/*  [             ]  */
    0x3F, 0xC0, 	/*  [  ********   ]  */
    0x02, 0x40, 	/*  [      *  *   ]  */
    0x02, 0x40, 	/*  [      *  *   ]  */
    0x00, 0x40, 	/*  [         *   ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'G' 0x0047 charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x0F, 0x00, 	/*  [    ****     ]  */
    0x10, 0x80, 	/*  [   *    *    ]  */
    0x20, 0x40, 	/*  [  *      *   ]  */
    0x24, 0x40, 	/*  [  *  *   *   ]  */
    0x1C, 0x80, 	/*  [   ***  *    ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'H' 0x0048 charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x3F, 0xC0, 	/*  [  ********   ]  */
    0x02, 0x00, 	/*  [      *      ]  */
    0x02, 0x00, 	/*  [      *      ]  */
    0x02, 0x00, 	/*  [      *      ]  */
    0x3F, 0xC0, 	/*  [  ********   ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'I' 0x0049 charwidth: 5 */
    0x00, 0x00, 	/*  [             ]  */
    0x20, 0x40, 	/*  [  *      *   ]  */
    0x3F, 0xC0, 	/*  [  ********   ]  */
    0x20, 0x40, 	/*  [  *      *   ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'J' 0x004A charwidth: 5 */
    0x20, 0x00, 	/*  [  *          ]  */
    0x20, 0x40, 	/*  [  *      *   ]  */
    0x20, 0x40, 	/*  [  *      *   ]  */
    0x1F, 0xC0, 	/*  [   *******   ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'K' 0x004B charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x3F, 0xC0, 	/*  [  ********   ]  */
    0x06, 0x00, 	/*  [     **      ]  */
    0x09, 0x00, 	/*  [    *  *     ]  */
    0x10, 0x80, 	/*  [   *    *    ]  */
    0x20, 0x40, 	/*  [  *      *   ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'L' 0x004C charwidth: 6 */
    0x00, 0x00, 	/*  [             ]  */
    0x3F, 0xC0, 	/*  [  ********   ]  */
    0x20, 0x00, 	/*  [  *          ]  */
    0x20, 0x00, 	/*  [  *          ]  */
    0x20, 0x00, 	/*  [  *          ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'M' 0x004D charwidth: 9 */
    0x00, 0x00, 	/*  [             ]  */
    0x3F, 0xC0, 	/*  [  ********   ]  */
    0x00, 0xC0, 	/*  [        **   ]  */
    0x03, 0x00, 	/*  [      **     ]  */
    0x0C, 0x00, 	/*  [    **       ]  */
    0x03, 0x00, 	/*  [      **     ]  */
    0x00, 0xC0, 	/*  [        **   ]  */
    0x3F, 0xC0, 	/*  [  ********   ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'N' 0x004E charwidth: 8 */
    0x00, 0x00, 	/*  [             ]  */
    0x3F, 0xC0, 	/*  [  ********   ]  */
    0x00, 0xC0, 	/*  [        **   ]  */
    0x03, 0x00, 	/*  [      **     ]  */
    0x0C, 0x00, 	/*  [    **       ]  */
    0x30, 0x00, 	/*  [  **         ]  */
    0x3F, 0xC0, 	/*  [  ********   ]  */
    0x00, 0x00, 	/*  [             ]  */
    
    /* 'O' 0x004F charwidth: 8 */
    0x00, 0x00, 	/*  [             ]  */
    0x0F, 0x00, 	/*  [    ****     ]  */
    0x10, 0x80, 	/*  [   *    *    ]  */
    0x20, 0x40, 	/*  [  *      *   ]  */
    0x20, 0x40, 	/*  [  *      *   ]  */
    0x10, 0x80, 	/*  [   *    *    ]  */
    0x0F, 0x00, 	/*  [    ****     ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'P' 0x0050 charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x3F, 0xC0, 	/*  [  ********   ]  */
    0x04, 0x40, 	/*  [     *   *   ]  */
    0x04, 0x40, 	/*  [     *   *   ]  */
    0x04, 0x40, 	/*  [     *   *   ]  */
    0x03, 0x80, 	/*  [      ***    ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'Q' 0x0051 charwidth: 8 */
    0x00, 0x00, 	/*  [             ]  */
    0x0F, 0x00, 	/*  [    ****     ]  */
    0x10, 0x80, 	/*  [   *    *    ]  */
    0x20, 0x40, 	/*  [  *      *   ]  */
    0x60, 0x40, 	/*  [ **      *   ]  */
    0x90, 0x80, 	/*  [*  *    *    ]  */
    0x8F, 0x00, 	/*  [*   ****     ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'R' 0x0052 charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x3F, 0xC0, 	/*  [  ********   ]  */
    0x04, 0x40, 	/*  [     *   *   ]  */
    0x0C, 0x40, 	/*  [    **   *   ]  */
    0x13, 0x80, 	/*  [   *  ***    ]  */
    0x20, 0x00, 	/*  [  *          ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'S' 0x0053 charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x11, 0x80, 	/*  [   *   **    ]  */
    0x22, 0x40, 	/*  [  *   *  *   ]  */
    0x22, 0x40, 	/*  [  *   *  *   ]  */
    0x24, 0x40, 	/*  [  *  *   *   ]  */
    0x18, 0x80, 	/*  [   **   *    ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'T' 0x0054 charwidth: 7 */
    0x00, 0x40, 	/*  [         *   ]  */
    0x00, 0x40, 	/*  [         *   ]  */
    0x00, 0x40, 	/*  [         *   ]  */
    0x3F, 0xC0, 	/*  [  ********   ]  */
    0x00, 0x40, 	/*  [         *   ]  */
    0x00, 0x40, 	/*  [         *   ]  */
    0x00, 0x40, 	/*  [         *   ]  */

    /* 'U' 0x0055 charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x1F, 0xC0, 	/*  [   *******   ]  */
    0x20, 0x00, 	/*  [  *          ]  */
    0x20, 0x00, 	/*  [  *          ]  */
    0x20, 0x00, 	/*  [  *          ]  */
    0x1F, 0xC0, 	/*  [   *******   ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'V' 0x0056 charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x01, 0xC0, 	/*  [       ***   ]  */
    0x0E, 0x00, 	/*  [    ***      ]  */
    0x30, 0x00, 	/*  [  **         ]  */
    0x0E, 0x00, 	/*  [    ***      ]  */
    0x01, 0xC0, 	/*  [       ***   ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'W' 0x0057 charwidth: 10 */
    0x00, 0x00, 	/*  [             ]  */
    0x00, 0xC0, 	/*  [        **   ]  */
    0x0F, 0x00, 	/*  [    ****     ]  */
    0x30, 0x00, 	/*  [  **         ]  */
    0x0F, 0x00, 	/*  [    ****     ]  */
    0x0F, 0x00, 	/*  [    ****     ]  */
    0x30, 0x00, 	/*  [  **         ]  */
    0x0F, 0x00, 	/*  [    ****     ]  */
    0x00, 0xC0, 	/*  [        **   ]  */
    0x00, 0x00, 	/*  [             ]  */    

    /* 'X' 0x0058 charwidth: 8 */
    0x00, 0x00, 	/*  [             ]  */
    0x30, 0xC0, 	/*  [  **    **   ]  */
    0x09, 0x00, 	/*  [    *  *     ]  */
    0x06, 0x00, 	/*  [     **      ]  */
    0x06, 0x00, 	/*  [     **      ]  */
    0x09, 0x00, 	/*  [    *  *     ]  */
    0x30, 0xC0, 	/*  [  **    **   ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'Y' 0x0059 charwidth: 7 */
    0x00, 0x40, 	/*  [         *   ]  */
    0x00, 0x80, 	/*  [        *    ]  */
    0x01, 0x00, 	/*  [       *     ]  */
    0x3E, 0x00, 	/*  [  *****      ]  */
    0x01, 0x00, 	/*  [       *     ]  */
    0x00, 0x80, 	/*  [        *    ]  */
    0x00, 0x40, 	/*  [         *   ]  */

    /* 'Z' 0x005A charwidth: 8 */
    0x00, 0x00, 	/*  [             ]  */
    0x30, 0x40, 	/*  [  **     *   ]  */
    0x28, 0x40, 	/*  [  * *    *   ]  */
    0x24, 0x40, 	/*  [  *  *   *   ]  */
    0x22, 0x40, 	/*  [  *   *  *   ]  */
    0x21, 0x40, 	/*  [  *    * *   ]  */
    0x20, 0xC0, 	/*  [  *     **   ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* '[' 0x005B charwidth: 5 */
    0x00, 0x00, 	/*  [             ]  */
    0xFF, 0xE0, 	/*  [***********  ]  */
    0x80, 0x20, 	/*  [*         *  ]  */
    0x80, 0x20, 	/*  [*         *  ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* '\' 0x005C charwidth: 5 */
    0x00, 0x60, 	/*  [         **  ]  */
    0x01, 0x80, 	/*  [       **    ]  */
    0x06, 0x00, 	/*  [     **      ]  */
    0x18, 0x00, 	/*  [   **        ]  */
    0x60, 0x00, 	/*  [ **          ]  */

    /* ']' 0x005D charwidth: 5 */
    0x00, 0x00, 	/*  [             ]  */
    0x80, 0x20, 	/*  [*         *  ]  */
    0x80, 0x20, 	/*  [*         *  ]  */
    0xFF, 0xE0, 	/*  [***********  ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* '^' 0x005E charwidth: 5 */
    0x02, 0x00,  /*  [      *      ]  */
    0x01, 0x00,  /*  [       *     ]  */
    0x00, 0x80,  /*  [        *    ]  */
    0x01, 0x00,  /*  [       *     ]  */
    0x02, 0x00,  /*  [      *      ]  */

    /* '_' 0x005F charwidth: 4 */
    0x80, 0x00, 	/*  [*            ]  */
    0x80, 0x00, 	/*  [*            ]  */
    0x80, 0x00, 	/*  [*            ]  */
    0x80, 0x00, 	/*  [*            ]  */
    
    /* '`' 0x0060 charwidth: 4 */
    0x00, 0x40, 	/*  [         *    ]  */
    0x00, 0x80, 	/*  [        *     ]  */
    0x01, 0x00, 	/*  [       *      ]  */
    0x00, 0x00, 	/*  [              ]  */

    /* 'a' 0x0061 charwidth: 6 */
    0x00, 0x00, 	/*  [             ]  */
    0x18, 0x00, 	/*  [   **        ]  */
    0x25, 0x00, 	/*  [  *  * *     ]  */
    0x25, 0x00, 	/*  [  *  * *     ]  */
    0x3E, 0x00, 	/*  [  *****      ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'b' 0x0062 charwidth: 6 */
    0x00, 0x00, 	/*  [             ]  */
    0x3F, 0xE0, 	/*  [  *********  ]  */
    0x21, 0x00, 	/*  [  *    *     ]  */
    0x21, 0x00, 	/*  [  *    *     ]  */
    0x1E, 0x00, 	/*  [   ****      ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'c' 0x0063 charwidth: 5 */
    0x00, 0x00, 	/*  [             ]  */
    0x1E, 0x00, 	/*  [   ****      ]  */
    0x21, 0x00, 	/*  [  *    *     ]  */
    0x21, 0x00, 	/*  [  *    *     ]  */
    0x12, 0x00, 	/*  [   *  *      ]  */

    /* 'd' 0x0064 charwidth: 6 */
    0x00, 0x00, 	/*  [             ]  */
    0x1E, 0x00, 	/*  [   ****      ]  */
    0x21, 0x00, 	/*  [  *    *     ]  */
    0x21, 0x00, 	/*  [  *    *     ]  */
    0x3F, 0xE0, 	/*  [  *********  ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'e' 0x0065 charwidth: 6 */
    0x00, 0x00, 	/*  [             ]  */
    0x1E, 0x00, 	/*  [   ****      ]  */
    0x25, 0x00, 	/*  [  *  * *     ]  */
    0x25, 0x00, 	/*  [  *  * *     ]  */
    0x16, 0x00, 	/*  [   * **      ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'f' 0x0066 charwidth: 4 */
    0x01, 0x00, 	/*  [       *     ]  */
    0x3F, 0xC0, 	/*  [  ********   ]  */
    0x01, 0x20, 	/*  [       *  *  ]  */
    0x01, 0x20, 	/*  [       *  *  ]  */

    /* 'g' 0x0067 charwidth: 6 */
    0x00, 0x00, 	/*  [             ]  */
    0x1E, 0x00, 	/*  [   ****      ]  */
    0xA1, 0x00, 	/*  [* *    *     ]  */
    0xA1, 0x00, 	/*  [* *    *     ]  */
    0x7F, 0x00, 	/*  [ *******     ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'h' 0x0068 charwidth: 6 */
    0x00, 0x00, 	/*  [             ]  */
    0x3F, 0xE0, 	/*  [  *********  ]  */
    0x01, 0x00, 	/*  [       *     ]  */
    0x01, 0x00, 	/*  [       *     ]  */
    0x3E, 0x00, 	/*  [  *****      ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'i' 0x0069 charwidth: 3 */
    0x00, 0x00, 	/*  [             ]  */
    0x3F, 0x20, 	/*  [  ******  *  ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'j' 0x006A charwidth: 4 */
    0x80, 0x00, 	/*  [*            ]  */
    0x81, 0x00, 	/*  [*      *     ]  */
    0x7F, 0x20, 	/*  [ *******  *  ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'k' 0x006B charwidth: 6 */
    0x00, 0x00, 	/*  [             ]  */
    0x3F, 0xE0, 	/*  [  *********  ]  */
    0x0C, 0x00, 	/*  [    **       ]  */
    0x12, 0x00, 	/*  [   *  *      ]  */
    0x21, 0x00, 	/*  [  *    *     ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'l' 0x006C charwidth: 3 */
    0x00, 0x00, 	/*  [             ]  */
    0x3F, 0xE0, 	/*  [  *********  ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'm' 0x006D charwidth: 9 */
    0x00, 0x00, 	/*  [             ]  */
    0x3F, 0x00, 	/*  [  ******     ]  */
    0x01, 0x00, 	/*  [       *     ]  */
    0x01, 0x00, 	/*  [       *     ]  */
    0x3E, 0x00, 	/*  [  *****      ]  */
    0x01, 0x00, 	/*  [       *     ]  */
    0x01, 0x00, 	/*  [       *     ]  */
    0x3E, 0x00, 	/*  [  *****      ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'n' 0x006E charwidth: 6 */
    0x00, 0x00, 	/*  [             ]  */
    0x3F, 0x00, 	/*  [  ******     ]  */
    0x01, 0x00, 	/*  [       *     ]  */
    0x01, 0x00, 	/*  [       *     ]  */
    0x3E, 0x00, 	/*  [  *****      ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'o' 0x006F charwidth: 6 */
    0x00, 0x00, 	/*  [             ]  */
    0x1E, 0x00, 	/*  [   ****      ]  */
    0x21, 0x00, 	/*  [  *    *     ]  */
    0x21, 0x00, 	/*  [  *    *     ]  */
    0x1E, 0x00, 	/*  [   ****      ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'p' 0x0070 charwidth: 6 */
    0x00, 0x00, 	/*  [             ]  */
    0xFF, 0x00, 	/*  [********     ]  */
    0x21, 0x00, 	/*  [  *    *     ]  */
    0x21, 0x00, 	/*  [  *    *     ]  */
    0x1E, 0x00, 	/*  [   ****      ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'q' 0x0071 charwidth: 6 */
    0x00, 0x00, 	/*  [             ]  */
    0x1E, 0x00, 	/*  [   ****      ]  */
    0x21, 0x00, 	/*  [  *    *     ]  */
    0x21, 0x00, 	/*  [  *    *     ]  */
    0xFF, 0x00, 	/*  [********     ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'r' 0x0072 charwidth: 5 */
    0x00, 0x00, 	/*  [             ]  */
    0x3F, 0x00, 	/*  [  ******     ]  */
    0x02, 0x00, 	/*  [      *      ]  */
    0x01, 0x00, 	/*  [       *     ]  */
    0x01, 0x00, 	/*  [       *     ]  */

    /* 's' 0x0073 charwidth: 6 */
    0x00, 0x00, 	/*  [             ]  */
    0x26, 0x00, 	/*  [  *  **      ]  */
    0x25, 0x00, 	/*  [  *  * *     ]  */
    0x29, 0x00, 	/*  [  * *  *     ]  */
    0x19, 0x00, 	/*  [   **  *     ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 't' 0x0074 charwidth: 4 */
    0x01, 0x00, 	/*  [       *     ]  */
    0x1F, 0xC0, 	/*  [   *******   ]  */
    0x21, 0x00, 	/*  [  *    *     ]  */
    0x21, 0x00, 	/*  [  *    *     ]  */

    /* 'u' 0x0075 charwidth: 6 */
    0x00, 0x00, 	/*  [             ]  */
    0x1F, 0x00, 	/*  [   *****     ]  */
    0x20, 0x00, 	/*  [  *          ]  */
    0x20, 0x00, 	/*  [  *          ]  */
    0x3F, 0x00, 	/*  [  ******     ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'v' 0x0076 charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x03, 0x00, 	/*  [      **     ]  */
    0x0C, 0x00, 	/*  [    **       ]  */
    0x30, 0x00, 	/*  [  **         ]  */
    0x0C, 0x00, 	/*  [    **       ]  */
    0x03, 0x00, 	/*  [      **     ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'w' 0x0077 charwidth: 8 */
    0x00, 0x00, 	/*  [             ]  */
    0x0F, 0x00, 	/*  [    ****     ]  */
    0x30, 0x00, 	/*  [  **         ]  */
    0x0C, 0x00, 	/*  [    **       ]  */
    0x0C, 0x00, 	/*  [    **       ]  */
    0x30, 0x00, 	/*  [  **         ]  */
    0x0F, 0x00, 	/*  [    ****     ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'x' 0x0078 charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x21, 0x00, 	/*  [  *    *     ]  */
    0x12, 0x00, 	/*  [   *  *      ]  */
    0x0C, 0x00, 	/*  [    **       ]  */
    0x12, 0x00, 	/*  [   *  *      ]  */
    0x21, 0x00, 	/*  [  *    *     ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'y' 0x0079 charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x01, 0x00, 	/*  [       *     ]  */
    0x8E, 0x00, 	/*  [*   ***      ]  */
    0x70, 0x00, 	/*  [ ***         ]  */
    0x0E, 0x00, 	/*  [    ***      ]  */
    0x01, 0x00, 	/*  [       *     ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* 'z' 0x007A charwidth: 6 */
    0x00, 0x00, 	/*  [             ]  */
    0x31, 0x00, 	/*  [  **   *     ]  */
    0x29, 0x00, 	/*  [  * *  *     ]  */
    0x25, 0x00, 	/*  [  *  * *     ]  */
    0x23, 0x00, 	/*  [  *   **     ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* '{' 0x007B charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x04, 0x00, 	/*  [     *       ]  */
    0x04, 0x00, 	/*  [     *       ]  */
    0x7B, 0xC0, 	/*  [ **** ****   ]  */
    0x80, 0x20, 	/*  [*         *  ]  */
    0x80, 0x20, 	/*  [*         *  ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* '|' 0x007C charwidth: 5 */
    0x00, 0x00, 	/*  [             ]  */
    0x00, 0x00, 	/*  [             ]  */
    0xFF, 0xE0, 	/*  [***********  ]  */
    0x00, 0x00, 	/*  [             ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* '}' 0x007D charwidth: 7 */
    0x00, 0x00, 	/*  [             ]  */
    0x80, 0x20, 	/*  [*         *  ]  */
    0x80, 0x20, 	/*  [*         *  ]  */
    0x7B, 0xC0, 	/*  [ **** ****   ]  */
    0x04, 0x00, 	/*  [     *       ]  */
    0x04, 0x00, 	/*  [     *       ]  */
    0x00, 0x00, 	/*  [             ]  */

    /* '~' 0x007E charwidth: 9 */
    0x00, 0x00, 	/*  [             ]  */
    0x0C, 0x00, 	/*  [    **       ]  */
    0x02, 0x00, 	/*  [      *      ]  */
    0x02, 0x00, 	/*  [      *      ]  */
    0x04, 0x00, 	/*  [     *       ]  */
    0x08, 0x00, 	/*  [    *        ]  */
    0x08, 0x00, 	/*  [    *        ]  */
    0x06, 0x00, 	/*  [     **      ]  */
    0x00, 0x00, 	/*  [             ]  */
};

/******************************************************************************
*******************************************************************************
* Public functions
*******************************************************************************/

/******************************************************************************
*******************************************************************************
* Private functions
*******************************************************************************/
