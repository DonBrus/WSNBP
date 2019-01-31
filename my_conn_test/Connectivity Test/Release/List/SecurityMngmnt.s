///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        31/Jan/2019  15:13:43
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\SMAC\Source\SecurityMngmnt.c
//    Command line =  
//        -f C:\Users\Brus\AppData\Local\Temp\EWDF47.tmp
//        ("D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\SMAC\Source\SecurityMngmnt.c" -D NDEBUG -D F24MHZ -D
//        SECURITY_ENABLED -D MC13226Included_d=0 --preprocess=cs
//        "D:\Users\Brus\Documents\my_conn_test\Connectivity Test\Release\List"
//        -lC "D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\Release\List" -lB
//        "D:\Users\Brus\Documents\my_conn_test\Connectivity Test\Release\List"
//        --diag_suppress Pe940,Pe951,Pe911 -o
//        "D:\Users\Brus\Documents\my_conn_test\Connectivity Test\Release\Obj"
//        --endian=little --cpu=ARM7TDMI-S --fpu=None --dlib_config
//        "C:\HDDPrograms\IAR Systems\Embedded Workbench
//        8.2\arm\inc\c\DLib_Config_Normal.h" -I
//        "D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\SMAC\Drivers\Interface\" -I
//        "D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\PLM\Interface\" --cpu_mode thumb -Ohz --use_c++_inline)
//    Locale       =  C
//    List file    =  
//        D:\Users\Brus\Documents\my_conn_test\Connectivity
//        Test\Release\List\SecurityMngmnt.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1



        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// D:\Users\Brus\Documents\my_conn_test\Connectivity Test\SMAC\Source\SecurityMngmnt.c
//    1 /************************************************************************************
//    2 * Security Management implementation
//    3 *
//    4 * (c) Copyright 2007, Freescale, Inc.  All rights reserved.
//    5 *
//    6 * No part of this document must be reproduced in any form - including copied,
//    7 * transcribed, printed or by any electronic means - without specific written
//    8 * permission from Freescale.
//    9 *
//   10 * Last Inspected: 09/05/2007
//   11 * Last Tested: 09/05/2007
//   12 ************************************************************************************/
//   13 
//   14 #include "../Interface/SecurityMngmnt.h"
//   15 #include "../../PLM/Interface/EmbeddedTypes.h"
//   16 #include "../Drivers/Interface/ghdr/asm.h"
//   17 
//   18 
//   19 #if SMAC_FEATURE_SECURITY ==  TRUE
//   20 
//   21 /************************************************************************************
//   22 *************************************************************************************
//   23 * Private macros
//   24 *************************************************************************************
//   25 ************************************************************************************/
//   26 #define enable_asm_mod()   (asm_control1 |= BIT0)
//   27 #define enable_test()      (asm_control1 |= BIT26)
//   28 #define disable_test()     (asm_control1 &= ~BIT26)
//   29 #define start_test()       (asm_control0 |= BIT24)
//   30 #define test_pass          (asm_status & BIT25) 
//   31 #define enable_ctr()       (asm_control1 |= BIT25)
//   32 #define disable_ctr()      (asm_control1 &= ~BIT25)
//   33 #define ctr_bit            BIT25 
//   34 #define enable_cbc()       (asm_control1 |= BIT24)
//   35 #define disable_cbc()      (asm_control1 &= ~BIT24)
//   36 #define cbc_bit            BIT24
//   37 #define set_normal_mode()  (asm_control1 |= BIT1)
//   38 #define cipher_done        (asm_status & BIT24) 
//   39 #define cipher_start()     (asm_control0 |= BIT24) 
//   40 #define cipher_disable()   (asm_control0 &= ~BIT24) 
//   41 #define load_mac()         (asm_control0 |=  BIT26)
//   42 #define disable_mac()      (asm_control0 &=  ~BIT26)
//   43 #define MaxCipherCycles    (0x03)
//   44 #define MaxSelfTestCycles  (0x0CE4)
//   45 #define MaxNumBlocks       (0x10)
//   46 #define BlockSize          (0x04)
//   47 #define test_fail          (0x00)
//   48 #define test_success       (0x01)
//   49 //#define mNumBlocks_Msg     (u8BufferLength/BlockSize)
//   50 //#define mResidue_Msg       (u8BufferLength%BlockSize) 
//   51 #define MACSize            (0x04)
//   52 #define gEnable_c          (0x01)
//   53 #define gDisable_c         (0x00)
//   54 
//   55 
//   56  #define MAX_BYTES_FOR_CIPHER_PKT (112)
//   57  #define BYTES_PER_WORD (4)
//   58  #define CIPHER_BUFF_SIZE (MAX_BYTES_FOR_CIPHER_PKT/BYTES_PER_WORD)
//   59  uint32_t ciphering_buff[CIPHER_BUFF_SIZE];
//   60  typedef union bytes_2_word_tag{
//   61    uint32_t u32word;
//   62    struct{
//   63     uint8_t Byte0;
//   64     uint8_t Byte1;
//   65     uint8_t Byte2;
//   66     uint8_t Byte3;
//   67    } Bytes;
//   68  }bytes_2_word_tag;
//   69 //#endif
//   70 
//   71 
//   72 /************************************************************************************
//   73 *************************************************************************************
//   74 * Private prototypes
//   75 *************************************************************************************
//   76 ************************************************************************************/
//   77 static void u8Buff_2_u32Buff(uint8_t* , uint32_t*, uint8_t);
//   78 static void u32Buff_2_u8Buff(uint8_t* , uint32_t*, uint8_t);
//   79 
//   80 /************************************************************************************
//   81 *************************************************************************************
//   82 * Private type definitions
//   83 *************************************************************************************
//   84 ************************************************************************************/
//   85 static uint8_t mCipherTestResult;
//   86 
//   87 /************************************************************************************
//   88 *************************************************************************************
//   89 * Private memory declarations
//   90 *************************************************************************************
//   91 ************************************************************************************/
//   92 
//   93 /************************************************************************************
//   94 *************************************************************************************
//   95 * Public functions
//   96 *************************************************************************************
//   97 ************************************************************************************/
//   98 
//   99 /************************************************************************************
//  100 * CipherEngineInit
//  101 *
//  102 * This function allows to carry out a self test to verify the operation of the 
//  103 * encryption engine.
//  104 *
//  105 ************************************************************************************/
//  106 
//  107 FuncReturn_t CipherEngineInit(void){
//  108   uint16_t unblock=0;
//  109 
//  110   enable_asm_mod();
//  111   enable_test();
//  112   start_test();
//  113   while(!(test_pass) && (MaxSelfTestCycles > unblock))
//  114   {
//  115     unblock ++;
//  116   }
//  117   if(!(test_pass)){
//  118     mCipherTestResult = test_fail;
//  119     return gFailTest_c;
//  120   }
//  121   else{
//  122     mCipherTestResult = test_success;
//  123     disable_test();
//  124   }
//  125   return gSuccess_c;
//  126 }
//  127 
//  128 
//  129 
//  130 /************************************************************************************
//  131 * CipherConfigure
//  132 *
//  133 * This function configures all parameter for the cipher process, the cipher mode, the
//  134 * key and the ctr value when the CTR mode is selected.
//  135 *
//  136 ************************************************************************************/
//  137 FuncReturn_t CipherConfigure(cipher_mode_t CipherMode, cipher_key_t *pCipherKey, ctr_value_t *pCtrValue){
//  138   
//  139   if(test_fail == mCipherTestResult){
//  140     return gFailTest_c;
//  141   }  
//  142   
//  143   else if(gMaxCipherMode <= CipherMode){
//  144     return gFailOutOfRange_c;
//  145   }
//  146   
//  147   set_normal_mode();
//  148   asm_key0 = pCipherKey->key0;
//  149   asm_key1 = pCipherKey->key1;
//  150   asm_key2 = pCipherKey->key2;
//  151   asm_key3 = pCipherKey->key3;
//  152     
//  153   switch(CipherMode){
//  154     case gCTRMode_c:
//  155     { 
//  156       disable_cbc();
//  157       enable_ctr();
//  158       asm_ctr0 = pCtrValue->ctr0;
//  159       asm_ctr1 = pCtrValue->ctr1;
//  160       asm_ctr2 = pCtrValue->ctr2;
//  161       asm_ctr3 = pCtrValue->ctr3;
//  162       break;
//  163     }
//  164     case gCBCMode_c:
//  165     {
//  166       disable_ctr();
//  167       enable_cbc();
//  168       break;
//  169     }
//  170     case gCCMMode_c:
//  171     {
//  172       enable_cbc();
//  173       enable_ctr();
//  174       asm_ctr0 = pCtrValue->ctr0;
//  175       asm_ctr1 = pCtrValue->ctr1;
//  176       asm_ctr2 = pCtrValue->ctr2;
//  177       asm_ctr3 = pCtrValue->ctr3;
//  178       break;
//  179     }
//  180     default:
//  181       break;
//  182   }
//  183   
//  184  return gSuccess_c;
//  185 }
//  186 /************************************************************************************
//  187 * CipheMsg
//  188 *
//  189 * This function is called to cipher a message of 112 bytes maximun in CTR mode and 
//  190 * 96 bytes in CBC and CCM modes, the buffer length must be multiple of 16 bytes.
//  191 *
//  192 ************************************************************************************/
//  193 FuncReturn_t CipherMsg(uint32_t *pu32CipherBuffer, uint8_t u8BufferLength)
//  194 {
//  195   uint8_t u8Blocks, unblock;
//  196   uint32_t * pu32AuxCipherBuffer;
//  197   uint8_t mResidue_Msg;
//  198   uint8_t mNumBlocks_Msg;
//  199   
//  200   mResidue_Msg = u8BufferLength%BlockSize;
//  201   mNumBlocks_Msg = u8BufferLength/BlockSize;
//  202 
//  203 
//  204   if(test_fail == mCipherTestResult){
//  205     return gFailTest_c;
//  206   }  
//  207   else if( (gNull_c < mResidue_Msg)        || 
//  208            (MaxNumBlocks < mNumBlocks_Msg) || 
//  209            (gNull_c == mNumBlocks_Msg)){
//  210       return gFailOutOfRange_c;
//  211   }
//  212   u8Blocks = mNumBlocks_Msg;
//  213   pu32AuxCipherBuffer = pu32CipherBuffer;
//  214 
//  215   if(asm_control1 & cbc_bit){
//  216     load_mac();
//  217     u8Blocks--;
//  218   }
//  219   else{
//  220     /*Do nothing*/
//  221   }
//  222 
//  223   while(gNull_c < u8Blocks){
//  224     unblock = 0;
//  225     asm_data0 = *pu32AuxCipherBuffer ++;
//  226     asm_data1 = *pu32AuxCipherBuffer ++;
//  227     asm_data2 = *pu32AuxCipherBuffer ++;
//  228     asm_data3 = *pu32AuxCipherBuffer ++;
//  229    
//  230     cipher_start();
//  231     while(!(cipher_done) && (MaxCipherCycles > unblock))
//  232     {
//  233       unblock++;
//  234     }
//  235     if(asm_control1 & ctr_bit){
//  236       *pu32CipherBuffer ++ = asm_ctr_result0;
//  237       *pu32CipherBuffer ++ = asm_ctr_result1;
//  238       *pu32CipherBuffer ++ = asm_ctr_result2;
//  239       *pu32CipherBuffer ++ = asm_ctr_result3;
//  240 
//  241     }
//  242     cipher_disable();
//  243     u8Blocks--;
//  244   }
//  245 
//  246   if(asm_control1 & cbc_bit){
//  247     disable_mac();
//  248     *pu32AuxCipherBuffer ++ = asm_cbc_result0;
//  249     *pu32AuxCipherBuffer ++ = asm_cbc_result1;
//  250     *pu32AuxCipherBuffer ++ = asm_cbc_result2;
//  251     *pu32AuxCipherBuffer ++ = asm_cbc_result3;
//  252   }
//  253   return gSuccess_c;
//  254 }
//  255 
//  256 
//  257 
//  258 /************************************************************************************
//  259 * DecipheMsg
//  260 *
//  261 * This function is called to cipher a message of 112 bytes maximun in CTR mode and 
//  262 * 96 bytes in CBC and CCM modes, the buffer length must be multiple of 16 bytes.
//  263 *
//  264 ************************************************************************************/
//  265 FuncReturn_t DecipherMsg (uint32_t *pu32DecipherBuffer, uint8_t u8BufferLength)
//  266 {
//  267   uint32_t MACBuffer[MACSize];
//  268   uint32_t *pu32MACBuffer;
//  269   uint8_t i, ccm_mode;
//  270   FuncReturn_t cipher_result;
//  271   
//  272   if(test_fail == mCipherTestResult){
//  273     return gFailTest_c;
//  274   }  
//  275    
//  276   if(asm_control1 & cbc_bit){
//  277     pu32MACBuffer = pu32DecipherBuffer + (u8BufferLength - MACSize);
//  278     for(i = 0; i < MACSize; i++){
//  279       MACBuffer[i] = *pu32MACBuffer++;
//  280     }
//  281     if(asm_control1 & ctr_bit){
//  282       ccm_mode = gEnable_c;
//  283       disable_cbc();
//  284     }
//  285     else{
//  286       ccm_mode = gDisable_c;
//  287       cipher_result = CipherMsg(pu32DecipherBuffer,u8BufferLength);
//  288       if(cipher_result != gSuccess_c){
//  289         return cipher_result;
//  290       }
//  291       pu32MACBuffer -= MACSize;
//  292       for(i = 0; i < MACSize; i++){
//  293         if (MACBuffer[i] != *pu32MACBuffer++){
//  294           return gAuthenticationFailed_c;        
//  295         }
//  296       }
//  297       return gAuthenticationPassed_c;
//  298     }
//  299   }
//  300    
//  301   if(asm_control1 & ctr_bit){
//  302     cipher_result = CipherMsg(pu32DecipherBuffer,u8BufferLength);
//  303     if(cipher_result != gSuccess_c){
//  304       return cipher_result;
//  305     }
//  306   }
//  307   else{
//  308     /*Do nothing*/
//  309   }
//  310   
//  311   if(gEnable_c == ccm_mode){
//  312     disable_ctr();
//  313     enable_cbc();
//  314     cipher_result = CipherMsg(pu32DecipherBuffer,u8BufferLength);
//  315     if(cipher_result != gSuccess_c){
//  316       return cipher_result;
//  317     }
//  318 
//  319     pu32MACBuffer -= MACSize;
//  320     for(i = 0; i < MACSize; i++){
//  321       if (MACBuffer[i] != *pu32MACBuffer++){
//  322         enable_ctr();
//  323         return gAuthenticationFailed_c;        
//  324       }
//  325     }
//  326     enable_ctr();
//  327     return gAuthenticationPassed_c;
//  328   }
//  329   else{
//  330     /*Do nothing*/
//  331   }
//  332   return gSuccess_c;
//  333 }
//  334 
//  335 /************************************************************************************
//  336 * DecipherMsgU8
//  337 *
//  338 * This function is called to cipher a message of 112 bytes maximun in CTR mode and 
//  339 * 96 bytes in CBC and CCM modes, the buffer length must be multiple of 16 bytes.
//  340 *
//  341 ************************************************************************************/
//  342 FuncReturn_t DecipherMsgU8(uint8_t *pu8CipherBuffer, uint8_t u8BufferLength)
//  343 {
//  344    uint8_t lenght;
//  345    uint8_t mResidue_Msg;
//  346    uint8_t mNumBlocks_Msg;
//  347    FuncReturn_t fnReturn;
//  348    lenght = u8BufferLength/4;
//  349 
//  350 
//  351   mResidue_Msg = u8BufferLength%(BlockSize*4);
//  352   mNumBlocks_Msg = u8BufferLength/(BlockSize*4);
//  353 
//  354 
//  355  if( (gNull_c < mResidue_Msg)        || 
//  356      (MaxNumBlocks < mNumBlocks_Msg) || 
//  357      (gNull_c == mNumBlocks_Msg)){
//  358       return gFailOutOfRange_c;
//  359   }
//  360 
//  361    u8Buff_2_u32Buff(pu8CipherBuffer, &ciphering_buff[0], lenght);
//  362    fnReturn = DecipherMsg(&ciphering_buff[0], lenght);
//  363    u32Buff_2_u8Buff(pu8CipherBuffer, &ciphering_buff[0], lenght);
//  364    return fnReturn;
//  365 }
//  366 
//  367 
//  368 /************************************************************************************
//  369 * CipherMsgU8
//  370 *
//  371 * This function is called to cipher a message of 112 bytes maximun in CTR mode and 
//  372 * 96 bytes in CBC and CCM modes, the buffer length must be multiple of 16 bytes.
//  373 *
//  374 ************************************************************************************/
//  375 FuncReturn_t CipherMsgU8(uint8_t *pu8CipherBuffer, uint8_t u8BufferLength)
//  376 {
//  377    uint8_t lenght;
//  378    uint8_t mResidue_Msg;
//  379    uint8_t mNumBlocks_Msg;
//  380    FuncReturn_t fnReturn;
//  381    lenght = u8BufferLength/4;
//  382 
//  383 
//  384   mResidue_Msg = u8BufferLength%(BlockSize*4);
//  385   mNumBlocks_Msg = u8BufferLength/(BlockSize*4);
//  386 
//  387 
//  388  if( (gNull_c < mResidue_Msg)        || 
//  389      (MaxNumBlocks < mNumBlocks_Msg) || 
//  390      (gNull_c == mNumBlocks_Msg)){
//  391       return gFailOutOfRange_c;
//  392   }
//  393 
//  394    u8Buff_2_u32Buff(pu8CipherBuffer, &ciphering_buff[0], lenght);
//  395    fnReturn = CipherMsg(&ciphering_buff[0], lenght);
//  396    u32Buff_2_u8Buff(pu8CipherBuffer, &ciphering_buff[0], lenght);
//  397    return fnReturn;
//  398 }
//  399 
//  400 
//  401 
//  402 /************************************************************************************
//  403 *************************************************************************************
//  404 * Private functions
//  405 *************************************************************************************
//  406 ************************************************************************************/
//  407 static void u8Buff_2_u32Buff(uint8_t* u8Buff, uint32_t* u32Buff, uint8_t size)
//  408 {
//  409   uint8_t i;
//  410   bytes_2_word_tag tmp;
//  411   for(i=0; i<size; i++)
//  412   {
//  413     tmp.Bytes.Byte0 = *u8Buff++;
//  414     tmp.Bytes.Byte1 = *u8Buff++;
//  415     tmp.Bytes.Byte2 = *u8Buff++;
//  416     tmp.Bytes.Byte3 = *u8Buff++;
//  417     *u32Buff = tmp.u32word;
//  418     u32Buff++;
//  419   }
//  420 }
//  421 
//  422 static void u32Buff_2_u8Buff(uint8_t* u8Buff, uint32_t* u32Buff, uint8_t size)
//  423 {
//  424   uint8_t i;
//  425   bytes_2_word_tag tmp;
//  426   for(i=0; i<size; i++)
//  427   {
//  428     tmp.u32word = *u32Buff;
//  429     *u8Buff++ = tmp.Bytes.Byte0;
//  430     *u8Buff++ = tmp.Bytes.Byte1;
//  431     *u8Buff++ = tmp.Bytes.Byte2;
//  432     *u8Buff++ = tmp.Bytes.Byte3;
//  433     u32Buff++;
//  434   }
//  435 }
//  436 
//  437 
//  438 
//  439 /************************************************************************************
//  440 *************************************************************************************
//  441 * Private Debug stuff
//  442 *************************************************************************************
//  443 ************************************************************************************/
//  444 
//  445 #endif
//  446 
// 
// 
// 0 bytes of memory
//
//Errors: none
//Warnings: none
