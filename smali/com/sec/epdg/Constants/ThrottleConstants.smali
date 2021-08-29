.class public Lcom/sec/epdg/Constants/ThrottleConstants;
.super Ljava/lang/Object;
.source "ThrottleConstants.java"


# static fields
.field public static final COMMON_DATA_RETRY:I = 0x0

.field public static final COMMON_NWFAILURE_DATA_RETRY:I = 0x1

.field public static final COMMON_NWFAILURE_TIMER_CONFIG:Ljava/lang/String; = "max_retries=infinite,3600000"

.field public static final COMMON_RETRY_TIMER_CONFIG:Ljava/lang/String; = "max_retries=infinite,0,0,0,60000:15000,120000,240000,480000,900000"

.field public static final ORANGE_AUTHENTIATION_FAIL_LONG_TIMER_CONFIG:Ljava/lang/String; = "max_retries=infinite,4000,8000,43200000"

.field public static final ORANGE_AUTHENTIATION_FAIL_TIMER_CONFIG:Ljava/lang/String; = "max_retries=infinite,8000,16000,32000,64000,128000,256000,512000,1024000"

.field public static final ORANGE_AUTHENTICATION_FAIL_DATA_RETRY:I = 0x6

.field public static final ORANGE_AUTHENTICATION_FAIL_LONG_DATA_RETRY:I = 0x7

.field public static final ORANGE_TIMER_12HR_CONFIG:Ljava/lang/String; = "max_retries=infinite,43200000"

.field public static final ORANGE_TIMER_12HR_RETRY:I = 0x8

.field public static final ORANGE_TIMER_24HR_CONFIG:Ljava/lang/String; = "max_retries=infinite,86400000"

.field public static final ORANGE_TIMER_24HR_RETRY:I = 0x9

.field public static final TMO_NETWORK_TOO_BUSY_DATA_RETRY:I = 0x5

.field public static final TMO_NETWORK_TOO_BUSY_TIMER_CONFIG:Ljava/lang/String; = "max_retries=infinite,900000,1800000,3600000"

.field public static final VOD_AUTHENTIATION_FAIL_TIMER_CONFIG:Ljava/lang/String; = "max_retries=infinite,5000,30000,60000,300000,900000,1800000,3600000"

.field public static final VOD_AUTHENTICATION_FAIL_DATA_RETRY:I = 0x3

.field public static final VZW_DATA_RETRY:I = 0x2

.field public static final VZW_RETRY_TIMER_CONFIG:Ljava/lang/String; = "max_retries=infinite,0,0,0,60000:15000,120000,480000,900000"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRetryTimeConfig(I)Ljava/lang/String;
    .locals 1
    .param p0, "retryTimeType"    # I

    .line 34
    packed-switch p0, :pswitch_data_0

    .line 54
    :pswitch_0
    const-string v0, "max_retries=infinite,0,0,0,60000:15000,120000,240000,480000,900000"

    return-object v0

    .line 52
    :pswitch_1
    const-string v0, "max_retries=infinite,86400000"

    return-object v0

    .line 50
    :pswitch_2
    const-string v0, "max_retries=infinite,43200000"

    return-object v0

    .line 48
    :pswitch_3
    const-string v0, "max_retries=infinite,4000,8000,43200000"

    return-object v0

    .line 46
    :pswitch_4
    const-string v0, "max_retries=infinite,8000,16000,32000,64000,128000,256000,512000,1024000"

    return-object v0

    .line 44
    :pswitch_5
    const-string v0, "max_retries=infinite,900000,1800000,3600000"

    return-object v0

    .line 42
    :pswitch_6
    const-string v0, "max_retries=infinite,5000,30000,60000,300000,900000,1800000,3600000"

    return-object v0

    .line 40
    :pswitch_7
    const-string v0, "max_retries=infinite,0,0,0,60000:15000,120000,480000,900000"

    return-object v0

    .line 38
    :pswitch_8
    const-string v0, "max_retries=infinite,3600000"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
