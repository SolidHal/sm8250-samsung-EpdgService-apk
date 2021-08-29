.class public Lcom/sec/epdg/DataType/IWlanEnum;
.super Ljava/lang/Object;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;,
        Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;,
        Lcom/sec/epdg/DataType/IWlanEnum$DataState;,
        Lcom/sec/epdg/DataType/IWlanEnum$Imei;,
        Lcom/sec/epdg/DataType/IWlanEnum$Mobike;,
        Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;,
        Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;,
        Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;,
        Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;,
        Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;,
        Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;,
        Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;,
        Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;,
        Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;,
        Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;,
        Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;,
        Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;,
        Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;,
        Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;,
        Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;,
        Lcom/sec/epdg/DataType/IWlanEnum$PfsState;,
        Lcom/sec/epdg/DataType/IWlanEnum$IPSecUserAuthState;,
        Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;,
        Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;
    }
.end annotation


# static fields
.field public static final DNS_RETRY_TIMER_CONFIG:Ljava/lang/String; = "max_retries=infinite,30000,60000,120000,300000,900000"

.field public static final IWLAN_EVENT_CONNECTED_TO_TESTAPP:Ljava/lang/String; = "CONNECTED"

.field public static final IWLAN_EVENT_CONNECTION_RESET_TO_TESTAPP:Ljava/lang/String; = "Reset/IDLE"

.field public static final IWLAN_EVENT_CONNECTION_SETUP_FAILURE_TO_TESTAPP:Ljava/lang/String; = "TimeOut/IDLE"

.field public static final IWLAN_EVENT_CONNECT_INIT_TO_TESTAPP:Ljava/lang/String; = "ConnInit/IDLE"

.field public static final IWLAN_EVENT_DISCONNECTED_TO_TESTAPP:Ljava/lang/String; = "Disconn/IDLE"

.field public static final IWLAN_EVENT_ERROR_TO_TESTAPP:Ljava/lang/String; = "Error/IDLE"

.field public static final IWLAN_EVENT_PEER_DISCONNECTED_TO_TESTAPP:Ljava/lang/String; = "PeerDel/IDLE"

.field public static final IWLAN_EVENT_UNKNOWN_TO_TESTAPP:Ljava/lang/String; = "UNKNOWN/IDLE"

.field public static final IWLAN_MAX_SETTING:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toTestAppEventStatus(I)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # I

    .line 20
    packed-switch p0, :pswitch_data_0

    .line 36
    const-string v0, "UNKNOWN/IDLE"

    return-object v0

    .line 34
    :pswitch_0
    const-string v0, "ConnInit/IDLE"

    return-object v0

    .line 32
    :pswitch_1
    const-string v0, "Error/IDLE"

    return-object v0

    .line 30
    :pswitch_2
    const-string v0, "Reset/IDLE"

    return-object v0

    .line 28
    :pswitch_3
    const-string v0, "TimeOut/IDLE"

    return-object v0

    .line 26
    :pswitch_4
    const-string v0, "PeerDel/IDLE"

    return-object v0

    .line 24
    :pswitch_5
    const-string v0, "Disconn/IDLE"

    return-object v0

    .line 22
    :pswitch_6
    const-string v0, "CONNECTED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
