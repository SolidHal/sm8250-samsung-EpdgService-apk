.class public Lcom/sec/epdg/ErrorCode/RfcIkeError;
.super Ljava/lang/Object;
.source "RfcIkeError.java"


# static fields
.field public static final AUTHENTICATION_FAILED:I = 0x18

.field public static final AUTHORIZATION_REJECTED:I = 0x232b

.field public static final CHILD_SA_NOT_FOUND:I = 0x2c

.field public static final FAILED_CP_REQUIRED:I = 0x25

.field public static final ILLEGAL_ME:I = 0x232e

.field public static final INTERNAL_ADDRESS_FAILURE:I = 0x24

.field public static final INVALID_IKE_SPI:I = 0x4

.field public static final INVALID_KE_PAYLOAD:I = 0x11

.field public static final INVALID_MAJOR_VERSION:I = 0x5

.field public static final INVALID_MESSAGE_ID:I = 0x9

.field public static final INVALID_SELECTORS:I = 0x27

.field public static final INVALID_SPI:I = 0xb

.field public static final INVALID_SYNTAX:I = 0x7

.field public static final MAJOR_NETWORK_FAILURE_MAX:I = 0x2936

.field public static final MAX_CONNECTION_REACHED:I = 0x2001

.field public static final MINOR_NW_FAILURE_MAX:I = 0x2742

.field public static final NETWORK_FAILURE:I = 0x2904

.field public static final NETWORK_TOO_BUSY:I = 0x2710

.field public static final NO_ADDITIONAL_SAS:I = 0x23

.field public static final NO_APN_SUBSCRIPTION:I = 0x232a

.field public static final NO_PROPOSAL_CHOSEN:I = 0xe

.field public static final NO_SUBSCRIPTION:I = 0x2328

.field public static final NW_PERMANENT_FAILURE_MAX:I = 0x2b2a

.field public static final PDN_CONNECTION_REJECTION:I = 0x2000

.field public static final PERMANENT_UE_FAILURE_MAX:I = 0x235a

.field public static final PERMENENT_FAILURE:I = 0x2afa

.field public static final PGW_OVERLOAD:I = 0x2713

.field public static final PLMN_NOT_ALLOWED:I = 0x2b03

.field public static final PRIVATE_REJECT:I = 0x3ff7

.field public static final RAT_TYPE_NOT_ALLOWED:I = 0x2af9

.field public static final ROAMING_NOT_ALLOWED:I = 0x2af8

.field public static final S2B_MISSING_OR_UNKNOWN_APN:I = 0x2358

.field public static final S2B_NO_SUBSCRIPTION:I = 0x2359

.field public static final S2B_PROTOCOL_ERROR:I = 0x2741

.field public static final S2B_RAT_DISALLOWED:I = 0x2afb

.field public static final S2B_REQUEST_REJECTED:I = 0x2740

.field public static final S2B_UNSUPPORTED_PDN_TYPE:I = 0x2b29

.field public static final SINGLE_PAIR_REQUIRED:I = 0x22

.field public static final TEMPORARY_FAILURE:I = 0x2b

.field public static final TS_UNACCEPTABLE:I = 0x26

.field public static final UNKNOWN:I = 0x0

.field public static final UNSUPPORTED_CRITICAL_PAYLOAD:I = 0x1

.field public static final USER_UNKNOWN:I = 0x2329


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private static getAmoIkeErrorCode(I)I
    .locals 1
    .param p0, "code"    # I

    .line 187
    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    .line 193
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getCommonIkeErrorCode(I)I

    move-result v0

    return v0

    .line 191
    :cond_0
    return v0
.end method

.method private static getAttIkeErrorCode(I)I
    .locals 1
    .param p0, "code"    # I

    .line 126
    const/16 v0, 0x2000

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2001

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2904

    if-eq p0, v0, :cond_0

    .line 137
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getCommonIkeErrorCode(I)I

    move-result v0

    return v0

    .line 135
    :cond_0
    return v0

    .line 132
    :cond_1
    return v0

    .line 129
    :cond_2
    return v0
.end method

.method private static getCommonIkeErrorCode(I)I
    .locals 2
    .param p0, "code"    # I

    .line 299
    const/4 v0, 0x1

    if-eq p0, v0, :cond_9

    const/4 v0, 0x7

    if-eq p0, v0, :cond_8

    const/4 v1, 0x4

    if-eq p0, v1, :cond_7

    const/4 v1, 0x5

    if-eq p0, v1, :cond_6

    const/16 v1, 0x2b

    if-eq p0, v1, :cond_5

    const/16 v1, 0x2c

    if-eq p0, v1, :cond_4

    const/16 v1, 0x2000

    if-eq p0, v1, :cond_3

    const/16 v1, 0x2001

    if-eq p0, v1, :cond_2

    const/16 v1, 0x2740

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2741

    if-eq p0, v1, :cond_0

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 373
    const/4 v0, 0x0

    return v0

    .line 359
    :pswitch_0
    const/16 v0, 0x2afb

    return v0

    .line 357
    :pswitch_1
    const/16 v0, 0x2afa

    return v0

    .line 355
    :pswitch_2
    const/16 v0, 0x2af9

    return v0

    .line 353
    :pswitch_3
    const/16 v0, 0x2af8

    return v0

    .line 371
    :pswitch_4
    const/16 v0, 0x232b

    return v0

    .line 367
    :pswitch_5
    const/16 v0, 0x232a

    return v0

    .line 365
    :pswitch_6
    const/16 v0, 0x2329

    return v0

    .line 341
    :pswitch_7
    const/16 v0, 0x2328

    return v0

    .line 331
    :pswitch_8
    const/16 v0, 0x27

    return v0

    .line 329
    :pswitch_9
    const/16 v0, 0x26

    return v0

    .line 327
    :pswitch_a
    const/16 v0, 0x25

    return v0

    .line 325
    :pswitch_b
    const/16 v0, 0x24

    return v0

    .line 323
    :pswitch_c
    const/16 v0, 0x23

    return v0

    .line 321
    :pswitch_d
    const/16 v0, 0x22

    return v0

    .line 361
    :sswitch_0
    const/16 v0, 0x3ff7

    return v0

    .line 369
    :sswitch_1
    const/16 v0, 0x2b03

    return v0

    .line 351
    :sswitch_2
    const/16 v0, 0x2904

    return v0

    .line 345
    :sswitch_3
    const/16 v0, 0x2713

    return v0

    .line 343
    :sswitch_4
    const/16 v0, 0x2710

    return v0

    .line 363
    :sswitch_5
    const/16 v0, 0x232e

    return v0

    .line 319
    :sswitch_6
    const/16 v0, 0x18

    return v0

    .line 317
    :sswitch_7
    const/16 v0, 0x11

    return v0

    .line 315
    :sswitch_8
    const/16 v0, 0xe

    return v0

    .line 313
    :sswitch_9
    const/16 v0, 0xb

    return v0

    .line 311
    :sswitch_a
    const/16 v0, 0x9

    return v0

    .line 349
    :cond_0
    return v1

    .line 347
    :cond_1
    return v1

    .line 339
    :cond_2
    return v1

    .line 337
    :cond_3
    return v1

    .line 335
    :cond_4
    return v1

    .line 333
    :cond_5
    return v1

    .line 307
    :cond_6
    return v1

    .line 305
    :cond_7
    return v1

    .line 309
    :cond_8
    :sswitch_b
    return v0

    .line 303
    :cond_9
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_b
        0x9 -> :sswitch_a
        0xb -> :sswitch_9
        0xe -> :sswitch_8
        0x11 -> :sswitch_7
        0x18 -> :sswitch_6
        0x232e -> :sswitch_5
        0x2710 -> :sswitch_4
        0x2713 -> :sswitch_3
        0x2904 -> :sswitch_2
        0x2b03 -> :sswitch_1
        0x3ff7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2328
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2af8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getEvrIkeErrorCode(I)I
    .locals 1
    .param p0, "code"    # I

    .line 224
    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    .line 230
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getCommonIkeErrorCode(I)I

    move-result v0

    return v0

    .line 227
    :cond_0
    return v0
.end method

.method private static getFtmIkeErrorCode(I)I
    .locals 1
    .param p0, "code"    # I

    .line 163
    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    .line 169
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getCommonIkeErrorCode(I)I

    move-result v0

    return v0

    .line 167
    :cond_0
    return v0
.end method

.method private static getGlwIkeErrorCode(I)I
    .locals 1
    .param p0, "code"    # I

    .line 269
    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    .line 274
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getCommonIkeErrorCode(I)I

    move-result v0

    return v0

    .line 272
    :cond_0
    return v0
.end method

.method private static getMtsIkeErrorCode(I)I
    .locals 1
    .param p0, "code"    # I

    .line 199
    const/16 v0, 0x24

    if-eq p0, v0, :cond_0

    .line 204
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getCommonIkeErrorCode(I)I

    move-result v0

    return v0

    .line 202
    :cond_0
    return v0
.end method

.method public static getRfcIkeErrorCode(ILjava/lang/String;)I
    .locals 1
    .param p0, "code"    # I
    .param p1, "operator"    # Ljava/lang/String;

    .line 64
    const-string v0, "VZW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getVzwIkeErrorCode(I)I

    move-result v0

    return v0

    .line 66
    :cond_0
    const-string v0, "ATT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getAttIkeErrorCode(I)I

    move-result v0

    return v0

    .line 68
    :cond_1
    const-string v0, "TMB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getTmoIkeErrorCode(I)I

    move-result v0

    return v0

    .line 70
    :cond_2
    const-string v0, "FTM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 71
    const-string v0, "OPV"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 72
    const-string v0, "ORO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    .line 74
    :cond_3
    const-string v0, "VOD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getVodIkeErrorCode(I)I

    move-result v0

    return v0

    .line 76
    :cond_4
    const-string v0, "AMO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 77
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getAmoIkeErrorCode(I)I

    move-result v0

    return v0

    .line 78
    :cond_5
    const-string v0, "MTS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 79
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getMtsIkeErrorCode(I)I

    move-result v0

    return v0

    .line 80
    :cond_6
    const-string v0, "VDS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 81
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getVdsIkeErrorCode(I)I

    move-result v0

    return v0

    .line 82
    :cond_7
    const-string v0, "EVR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 83
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getEvrIkeErrorCode(I)I

    move-result v0

    return v0

    .line 84
    :cond_8
    const-string v0, "VD2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 85
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getVd2IkeErrorCode(I)I

    move-result v0

    return v0

    .line 86
    :cond_9
    const-string v0, "TLS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 87
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getTlsIkeErrorCode(I)I

    move-result v0

    return v0

    .line 88
    :cond_a
    const-string v0, "RCW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 89
    const-string v0, "FMC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_0

    .line 91
    :cond_b
    const-string v0, "GLW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 92
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getGlwIkeErrorCode(I)I

    move-result v0

    return v0

    .line 93
    :cond_c
    const-string v0, "VTR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 94
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getVtrIkeErrorCode(I)I

    move-result v0

    return v0

    .line 95
    :cond_d
    const-string v0, "RJIL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 96
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getRjilIkeErrorCode(I)I

    move-result v0

    return v0

    .line 98
    :cond_e
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getCommonIkeErrorCode(I)I

    move-result v0

    return v0

    .line 90
    :cond_f
    :goto_0
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getRwcIkeErrorCode(I)I

    move-result v0

    return v0

    .line 73
    :cond_10
    :goto_1
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getFtmIkeErrorCode(I)I

    move-result v0

    return v0
.end method

.method private static getRjilIkeErrorCode(I)I
    .locals 1
    .param p0, "code"    # I

    .line 291
    nop

    .line 294
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getCommonIkeErrorCode(I)I

    move-result v0

    return v0
.end method

.method private static getRwcIkeErrorCode(I)I
    .locals 1
    .param p0, "code"    # I

    .line 258
    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    .line 263
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getCommonIkeErrorCode(I)I

    move-result v0

    return v0

    .line 261
    :cond_0
    return v0
.end method

.method private static getTlsIkeErrorCode(I)I
    .locals 1
    .param p0, "code"    # I

    .line 247
    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    .line 252
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getCommonIkeErrorCode(I)I

    move-result v0

    return v0

    .line 250
    :cond_0
    return v0
.end method

.method private static getTmoIkeErrorCode(I)I
    .locals 1
    .param p0, "code"    # I

    .line 143
    const/16 v0, 0x2710

    if-eq p0, v0, :cond_3

    const/16 v0, 0x2904

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2af8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2af9

    if-eq p0, v0, :cond_0

    .line 157
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getCommonIkeErrorCode(I)I

    move-result v0

    return v0

    .line 155
    :cond_0
    return v0

    .line 152
    :cond_1
    return v0

    .line 149
    :cond_2
    return v0

    .line 146
    :cond_3
    return v0
.end method

.method private static getVd2IkeErrorCode(I)I
    .locals 1
    .param p0, "code"    # I

    .line 236
    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    .line 241
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getCommonIkeErrorCode(I)I

    move-result v0

    return v0

    .line 239
    :cond_0
    return v0
.end method

.method private static getVdsIkeErrorCode(I)I
    .locals 1
    .param p0, "code"    # I

    .line 210
    const/16 v0, 0x2328

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3ff7

    if-eq p0, v0, :cond_0

    .line 218
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getCommonIkeErrorCode(I)I

    move-result v0

    return v0

    .line 216
    :cond_0
    return v0

    .line 213
    :cond_1
    return v0
.end method

.method private static getVodIkeErrorCode(I)I
    .locals 1
    .param p0, "code"    # I

    .line 175
    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    .line 181
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getCommonIkeErrorCode(I)I

    move-result v0

    return v0

    .line 179
    :cond_0
    return v0
.end method

.method private static getVtrIkeErrorCode(I)I
    .locals 1
    .param p0, "code"    # I

    .line 280
    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    .line 285
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getCommonIkeErrorCode(I)I

    move-result v0

    return v0

    .line 283
    :cond_0
    return v0
.end method

.method private static getVzwIkeErrorCode(I)I
    .locals 2
    .param p0, "code"    # I

    .line 104
    const/16 v0, 0x2710

    const/16 v1, 0x2742

    invoke-static {v0, v1, p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->isIkeErrorCodeBetween(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    return v0

    .line 107
    :cond_0
    const/16 v0, 0x2936

    const/16 v1, 0x2904

    invoke-static {v1, v0, p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->isIkeErrorCodeBetween(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    return v1

    .line 111
    :cond_1
    const/16 v0, 0x2b2a

    const/16 v1, 0x2af8

    invoke-static {v1, v0, p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->isIkeErrorCodeBetween(III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    return v1

    .line 115
    :cond_2
    const/16 v0, 0x235a

    const/16 v1, 0x2328

    invoke-static {v1, v0, p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->isIkeErrorCodeBetween(III)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    return v1

    .line 120
    :cond_3
    invoke-static {p0}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getCommonIkeErrorCode(I)I

    move-result v0

    return v0
.end method

.method private static isIkeErrorCodeBetween(III)Z
    .locals 1
    .param p0, "min"    # I
    .param p1, "max"    # I
    .param p2, "code"    # I

    .line 60
    if-lt p2, p0, :cond_0

    if-gt p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static printRfcIkeErrorCode(I)Ljava/lang/String;
    .locals 2
    .param p0, "code"    # I

    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p0, v1, :cond_9

    const/4 v1, 0x7

    if-eq p0, v1, :cond_8

    const/4 v1, 0x4

    if-eq p0, v1, :cond_7

    const/4 v1, 0x5

    if-eq p0, v1, :cond_6

    const/16 v1, 0x2b

    if-eq p0, v1, :cond_5

    const/16 v1, 0x2c

    if-eq p0, v1, :cond_4

    const/16 v1, 0x2000

    if-eq p0, v1, :cond_3

    const/16 v1, 0x2001

    if-eq p0, v1, :cond_2

    const/16 v1, 0x2740

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2741

    if-eq p0, v1, :cond_0

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 486
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 465
    :pswitch_0
    const-string v0, "S2B_RAT_DISALLOWED"

    .line 466
    goto/16 :goto_0

    .line 462
    :pswitch_1
    const-string v0, "PERMENENT_FAILURE"

    .line 463
    goto/16 :goto_0

    .line 459
    :pswitch_2
    const-string v0, "RAT_TYPE_NOT_ALLOWED"

    .line 460
    goto/16 :goto_0

    .line 456
    :pswitch_3
    const-string v0, "ROAMING_NOT_ALLOWED"

    .line 457
    goto/16 :goto_0

    .line 483
    :pswitch_4
    const-string v0, "AUTHORIZATION_REJECTED"

    .line 484
    goto/16 :goto_0

    .line 477
    :pswitch_5
    const-string v0, "NO_APN_SUBSCRIPTION"

    .line 478
    goto/16 :goto_0

    .line 474
    :pswitch_6
    const-string v0, "USER_UNKNOWN"

    .line 475
    goto/16 :goto_0

    .line 438
    :pswitch_7
    const-string v0, "NO_SUBSCRIPTION"

    .line 439
    goto/16 :goto_0

    .line 423
    :pswitch_8
    const-string v0, "INVALID_SELECTORS"

    .line 424
    goto/16 :goto_0

    .line 420
    :pswitch_9
    const-string v0, "TS_UNACCEPTABLE"

    .line 421
    goto :goto_0

    .line 417
    :pswitch_a
    const-string v0, "FAILED_CP_REQUIRED"

    .line 418
    goto :goto_0

    .line 414
    :pswitch_b
    const-string v0, "INTERNAL_ADDRESS_FAILURE"

    .line 415
    goto :goto_0

    .line 411
    :pswitch_c
    const-string v0, "NO_ADDITIONAL_SAS"

    .line 412
    goto :goto_0

    .line 408
    :pswitch_d
    const-string v0, "SINGLE_PAIR_REQUIRED"

    .line 409
    goto :goto_0

    .line 468
    :sswitch_0
    const-string v0, "PRIVATE_REJECT"

    .line 469
    goto :goto_0

    .line 480
    :sswitch_1
    const-string v0, "PLMN_NOT_ALLOWED"

    .line 481
    goto :goto_0

    .line 453
    :sswitch_2
    const-string v0, "NETWORK_FAILURE"

    .line 454
    goto :goto_0

    .line 441
    :sswitch_3
    const-string v0, "PGW_OVERLOAD"

    .line 442
    goto :goto_0

    .line 450
    :sswitch_4
    const-string v0, "NETWORK_TOO_BUSY"

    .line 451
    goto :goto_0

    .line 471
    :sswitch_5
    const-string v0, "ILLEGAL_ME"

    .line 472
    goto :goto_0

    .line 405
    :sswitch_6
    const-string v0, "AUTHENTICATION_FAILED"

    .line 406
    goto :goto_0

    .line 402
    :sswitch_7
    const-string v0, "INVALID_KE_PAYLOAD"

    .line 403
    goto :goto_0

    .line 399
    :sswitch_8
    const-string v0, "NO_PROPOSAL_CHOSEN"

    .line 400
    goto :goto_0

    .line 396
    :sswitch_9
    const-string v0, "INVALID_SPI"

    .line 397
    goto :goto_0

    .line 393
    :sswitch_a
    const-string v0, "INVALID_MESSAGE_ID"

    .line 394
    goto :goto_0

    .line 447
    :cond_0
    const-string v0, "S2B_PROTOCOL_ERROR"

    .line 448
    goto :goto_0

    .line 444
    :cond_1
    const-string v0, "S2B_REQUEST_REJECTED"

    .line 445
    goto :goto_0

    .line 435
    :cond_2
    const-string v0, "MAX_CONNECTION_REACHED"

    .line 436
    goto :goto_0

    .line 432
    :cond_3
    const-string v0, "PDN_CONNECTION_REJECTION"

    .line 433
    goto :goto_0

    .line 429
    :cond_4
    const-string v0, "CHILD_SA_NOT_FOUND"

    .line 430
    goto :goto_0

    .line 426
    :cond_5
    const-string v0, "TEMPORARY_FAILURE"

    .line 427
    goto :goto_0

    .line 387
    :cond_6
    const-string v0, "INVALID_MAJOR_VERSION"

    .line 388
    goto :goto_0

    .line 384
    :cond_7
    const-string v0, "INVALID_IKE_SPI"

    .line 385
    goto :goto_0

    .line 390
    :cond_8
    :sswitch_b
    const-string v0, "INVALID_SYNTAX"

    .line 391
    goto :goto_0

    .line 381
    :cond_9
    const-string v0, "UNSUPPORTED_CRITICAL_PAYLOAD"

    .line 382
    nop

    .line 488
    :goto_0
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_b
        0x9 -> :sswitch_a
        0xb -> :sswitch_9
        0xe -> :sswitch_8
        0x11 -> :sswitch_7
        0x18 -> :sswitch_6
        0x232e -> :sswitch_5
        0x2710 -> :sswitch_4
        0x2713 -> :sswitch_3
        0x2904 -> :sswitch_2
        0x2b03 -> :sswitch_1
        0x3ff7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2328
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2af8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
