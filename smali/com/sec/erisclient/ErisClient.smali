.class public Lcom/sec/erisclient/ErisClient;
.super Ljava/lang/Object;
.source "ErisClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/erisclient/ErisClient$TimeoutThread;,
        Lcom/sec/erisclient/ErisClient$DaemonRunner;,
        Lcom/sec/erisclient/ErisClient$DaemonErrorCode;,
        Lcom/sec/erisclient/ErisClient$DaemonEventCode;
    }
.end annotation


# static fields
.field private static final DAEMON_NAME:Ljava/lang/String; = "eris"

.field private static final INTENT_ACTION:Ljava/lang/String; = "com.sec.erisclient.natkeepalive"

.field private static final MAX_NUM_CONNECTION:I = 0x8

.field private static final MSG_TYPE_CHECKCONN:I = 0x3

.field private static final MSG_TYPE_CONNECT:I = 0x1

.field private static final MSG_TYPE_CONN_UPDATE:I = 0x4

.field private static final MSG_TYPE_DISCONNECT:I = 0x2

.field private static final MSG_TYPE_PROP_UPDATE:I = 0x5

.field private static final MSG_TYPE_SEND_KEEPALIVE:I = 0x6

.field private static final MSG_TYPE_SILENT_DISCONNECT:I = 0x9

.field private static final MSG_TYPE_START_ESP_SEQ_CHECK:I = 0x7

.field private static final MSG_TYPE_STOP_ESP_SEQ_CHECK:I = 0x8

.field private static final TAG:Ljava/lang/String; = "ErisClient"

.field private static final TAG_BACKOFF_TIMER:Ljava/lang/String; = "backoffTimer"

.field private static final TAG_CID:Ljava/lang/String; = "cid"

.field private static final TAG_DATA:Ljava/lang/String; = "msgData"

.field private static final TAG_ERROR:Ljava/lang/String; = "errorCode"

.field private static final TAG_ESP_AUTH_KEY_I:Ljava/lang/String; = "esp_kai"

.field private static final TAG_ESP_AUTH_KEY_R:Ljava/lang/String; = "esp_kar"

.field private static final TAG_ESP_ENCR_KEY_I:Ljava/lang/String; = "esp_kei"

.field private static final TAG_ESP_ENCR_KEY_R:Ljava/lang/String; = "esp_ker"

.field private static final TAG_ESP_ENC_ALG:Ljava/lang/String; = "esp_enc_alg"

.field private static final TAG_ESP_INTEG_ALG:Ljava/lang/String; = "esp_integ_alg"

.field private static final TAG_ESP_MAX_SEQ:Ljava/lang/String; = "max_seq"

.field private static final TAG_ESP_MIN_SEQ:Ljava/lang/String; = "min_seq"

.field private static final TAG_ESP_SPI_I:Ljava/lang/String; = "esp_spi_i"

.field private static final TAG_ESP_SPI_R:Ljava/lang/String; = "esp_spi_r"

.field private static final TAG_ESP_TOTAL_RX:Ljava/lang/String; = "total_rx"

.field private static final TAG_IKE_ENC_ALG:Ljava/lang/String; = "ike_enc_alg"

.field private static final TAG_IKE_ERROR:Ljava/lang/String; = "ikeErrorCode"

.field private static final TAG_IKE_INTEG_ALG:Ljava/lang/String; = "ike_integ_alg"

.field private static final TAG_IKE_SK_AI:Ljava/lang/String; = "ike_sk_ai"

.field private static final TAG_IKE_SK_AR:Ljava/lang/String; = "ike_sk_ar"

.field private static final TAG_IKE_SK_EI:Ljava/lang/String; = "ike_sk_ei"

.field private static final TAG_IKE_SK_ER:Ljava/lang/String; = "ike_sk_er"

.field private static final TAG_IKE_SPI_I:Ljava/lang/String; = "ike_spi_i"

.field private static final TAG_IKE_SPI_R:Ljava/lang/String; = "ike_spi_r"

.field private static final TAG_IKE_SRC_PORT:Ljava/lang/String; = "mIkeSrcPort"

.field private static final TAG_INTERVAL:Ljava/lang/String; = "interval"

.field private static final TAG_N1_MODE_PLMN_ID:Ljava/lang/String; = "n1_mode_plmn_id"

.field private static final TAG_N1_MODE_SNSSAI:Ljava/lang/String; = "n1_mode_snssai"

.field private static final TAG_STATE:Ljava/lang/String; = "stateCode"

.field private static final TAG_TIMEOUT:Ljava/lang/String; = "timeout"

.field private static final TAG_TYPE:Ljava/lang/String; = "msgType"

.field private static mInstance:Lcom/sec/erisclient/ErisClient;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private alarmMgr:Landroid/app/AlarmManager;

.field private calendar:Ljava/util/Calendar;

.field private isEnhancedEpdg:Ljava/lang/Boolean;

.field private mActiveConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/erisclient/IPSecConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDaemonRunner:Lcom/sec/erisclient/ErisClient$DaemonRunner;

.field private mEnableHwKeepalive:Z

.field private mIkeSrcPort:I

.field private mIsDeinit:Z

.field private mIsKeepaliveStarted:Z

.field mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/erisclient/IErisListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNatKeepaliveMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNatKeepaliveTimeout:I

.field private mPacketKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSocket:Landroid/net/LocalSocket;

.field private mTimeoutThread:[Lcom/sec/erisclient/ErisClient$TimeoutThread;

.field private out:Ljava/io/OutputStream;

.field private pendingIntent:Landroid/app/PendingIntent;

.field private tmpIPSecConnection:Lcom/sec/erisclient/IPSecConnection;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/erisclient/ErisClient;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/erisclient/ErisClient;->mDaemonRunner:Lcom/sec/erisclient/ErisClient$DaemonRunner;

    .line 112
    const/16 v1, 0x9

    new-array v1, v1, [Lcom/sec/erisclient/ErisClient$TimeoutThread;

    iput-object v1, p0, Lcom/sec/erisclient/ErisClient;->mTimeoutThread:[Lcom/sec/erisclient/ErisClient$TimeoutThread;

    .line 120
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    .line 121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/erisclient/ErisClient;->mNatKeepaliveMap:Ljava/util/HashMap;

    .line 122
    const/16 v1, 0x14

    iput v1, p0, Lcom/sec/erisclient/ErisClient;->mNatKeepaliveTimeout:I

    .line 131
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/erisclient/ErisClient;->mIsDeinit:Z

    .line 133
    new-instance v2, Lcom/sec/erisclient/ErisClient$1;

    invoke-direct {v2, p0}, Lcom/sec/erisclient/ErisClient$1;-><init>(Lcom/sec/erisclient/ErisClient;)V

    iput-object v2, p0, Lcom/sec/erisclient/ErisClient;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1220
    iput-object v0, p0, Lcom/sec/erisclient/ErisClient;->mPacketKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;

    .line 1221
    iput-boolean v1, p0, Lcom/sec/erisclient/ErisClient;->mIsKeepaliveStarted:Z

    .line 1222
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/erisclient/ErisClient;->mEnableHwKeepalive:Z

    .line 1223
    iput-object v0, p0, Lcom/sec/erisclient/ErisClient;->tmpIPSecConnection:Lcom/sec/erisclient/IPSecConnection;

    .line 1332
    new-instance v0, Lcom/sec/erisclient/ErisClient$4;

    invoke-direct {v0, p0}, Lcom/sec/erisclient/ErisClient$4;-><init>(Lcom/sec/erisclient/ErisClient;)V

    iput-object v0, p0, Lcom/sec/erisclient/ErisClient;->mCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    .line 217
    const-string v0, "ErisClient"

    const-string v3, "ErisClient()"

    invoke-static {v0, v3}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iput-object p1, p0, Lcom/sec/erisclient/ErisClient;->mContext:Landroid/content/Context;

    .line 219
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/sec/erisclient/ErisClient;->alarmMgr:Landroid/app/AlarmManager;

    .line 220
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sec/erisclient/ErisClient;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 221
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/ErisClient;->isEnhancedEpdg:Ljava/lang/Boolean;

    .line 222
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 223
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v3, "eris"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/erisclient/ErisClient;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 224
    invoke-virtual {v2, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 225
    return-void
.end method

.method private RepeatNatKeepaliveAlarm()V
    .locals 5

    .line 211
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/erisclient/ErisClient;->calendar:Ljava/util/Calendar;

    .line 212
    invoke-virtual {p0}, Lcom/sec/erisclient/ErisClient;->getNattKeepAliveTimeout()I

    move-result v1

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 213
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient;->alarmMgr:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/sec/erisclient/ErisClient;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->pendingIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 214
    return-void
.end method

.method private SetNatKeepalive(Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "gateway"    # Ljava/lang/String;
    .param p2, "cid"    # I
    .param p3, "on"    # Z

    .line 156
    if-eqz p3, :cond_0

    .line 157
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/erisclient/ErisClient;->setHwNatKeepalive(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/erisclient/ErisClient;->setSwNatKeepalive(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 162
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/erisclient/ErisClient;->setHwNatKeepalive(Ljava/lang/String;Z)Z

    .line 163
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/erisclient/ErisClient;->setSwNatKeepalive(Ljava/lang/String;IZ)V

    .line 165
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/erisclient/ErisClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/erisclient/ErisClient;

    .line 58
    invoke-direct {p0}, Lcom/sec/erisclient/ErisClient;->RepeatNatKeepaliveAlarm()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/erisclient/ErisClient;)Landroid/net/LocalSocket;
    .locals 1
    .param p0, "x0"    # Lcom/sec/erisclient/ErisClient;

    .line 58
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient;->mSocket:Landroid/net/LocalSocket;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/erisclient/ErisClient;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/erisclient/ErisClient;
    .param p1, "x1"    # I

    .line 58
    invoke-direct {p0, p1}, Lcom/sec/erisclient/ErisClient;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/erisclient/ErisClient;)Lcom/sec/erisclient/IPSecConnection;
    .locals 1
    .param p0, "x0"    # Lcom/sec/erisclient/ErisClient;

    .line 58
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient;->tmpIPSecConnection:Lcom/sec/erisclient/IPSecConnection;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/erisclient/ErisClient;Lcom/sec/erisclient/IPSecConnection;)Lcom/sec/erisclient/IPSecConnection;
    .locals 0
    .param p0, "x0"    # Lcom/sec/erisclient/ErisClient;
    .param p1, "x1"    # Lcom/sec/erisclient/IPSecConnection;

    .line 58
    iput-object p1, p0, Lcom/sec/erisclient/ErisClient;->tmpIPSecConnection:Lcom/sec/erisclient/IPSecConnection;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 58
    sget-object v0, Lcom/sec/erisclient/ErisClient;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/erisclient/ErisClient;)[Lcom/sec/erisclient/ErisClient$TimeoutThread;
    .locals 1
    .param p0, "x0"    # Lcom/sec/erisclient/ErisClient;

    .line 58
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient;->mTimeoutThread:[Lcom/sec/erisclient/ErisClient$TimeoutThread;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/erisclient/ErisClient;Lcom/sec/erisclient/ErisError;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/erisclient/ErisClient;
    .param p1, "x1"    # Lcom/sec/erisclient/ErisError;

    .line 58
    invoke-direct {p0, p1}, Lcom/sec/erisclient/ErisClient;->updateServiceStatus(Lcom/sec/erisclient/ErisError;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/erisclient/ErisClient;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/erisclient/ErisClient;
    .param p1, "x1"    # Ljava/io/OutputStream;

    .line 58
    invoke-direct {p0, p1}, Lcom/sec/erisclient/ErisClient;->setOutputStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/erisclient/ErisClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/erisclient/ErisClient;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1}, Lcom/sec/erisclient/ErisClient;->parseDaemonResponse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/erisclient/ErisClient;Lcom/sec/erisclient/ErisEvent;Lcom/sec/erisclient/ErisEventData;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/erisclient/ErisClient;
    .param p1, "x1"    # Lcom/sec/erisclient/ErisEvent;
    .param p2, "x2"    # Lcom/sec/erisclient/ErisEventData;

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/sec/erisclient/ErisClient;->updateConnectionStatus(Lcom/sec/erisclient/ErisEvent;Lcom/sec/erisclient/ErisEventData;)V

    return-void
.end method

.method static synthetic access$802(Lcom/sec/erisclient/ErisClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/erisclient/ErisClient;
    .param p1, "x1"    # Z

    .line 58
    iput-boolean p1, p0, Lcom/sec/erisclient/ErisClient;->mIsKeepaliveStarted:Z

    return p1
.end method

.method static synthetic access$902(Lcom/sec/erisclient/ErisClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/erisclient/ErisClient;
    .param p1, "x1"    # Z

    .line 58
    iput-boolean p1, p0, Lcom/sec/erisclient/ErisClient;->mEnableHwKeepalive:Z

    return p1
.end method

.method private extractIPAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 229
    const/16 v0, 0x25

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 230
    const/4 v1, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 233
    :cond_0
    return-object p1
.end method

.method private getConnectionEventFromDaemonEvent(I)Lcom/sec/erisclient/ErisEvent;
    .locals 2
    .param p1, "dEventCode"    # I

    .line 718
    const-string v0, "ErisClient"

    const-string v1, "getConnectionEventFromDaemonEvent()"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    packed-switch p1, :pswitch_data_0

    .line 745
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_NONE:Lcom/sec/erisclient/ErisEvent;

    return-object v0

    .line 743
    :pswitch_0
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_ESP_KEYS:Lcom/sec/erisclient/ErisEvent;

    return-object v0

    .line 741
    :pswitch_1
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_IKE_KEYS:Lcom/sec/erisclient/ErisEvent;

    return-object v0

    .line 739
    :pswitch_2
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_IKE_IPSEC_REKEY_END:Lcom/sec/erisclient/ErisEvent;

    return-object v0

    .line 737
    :pswitch_3
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_IKE_IPSEC_REKEY_START:Lcom/sec/erisclient/ErisEvent;

    return-object v0

    .line 735
    :pswitch_4
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_ESP_SEQ:Lcom/sec/erisclient/ErisEvent;

    return-object v0

    .line 733
    :pswitch_5
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_ERROR:Lcom/sec/erisclient/ErisEvent;

    return-object v0

    .line 731
    :pswitch_6
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_RESET:Lcom/sec/erisclient/ErisEvent;

    return-object v0

    .line 729
    :pswitch_7
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_SETUP_FAILURE:Lcom/sec/erisclient/ErisEvent;

    return-object v0

    .line 727
    :pswitch_8
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_PEER_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    return-object v0

    .line 725
    :pswitch_9
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_ACTIVE:Lcom/sec/erisclient/ErisEvent;

    return-object v0

    .line 723
    :pswitch_a
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    return-object v0

    .line 721
    :pswitch_b
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTED:Lcom/sec/erisclient/ErisEvent;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getErisErrorFromDaemonError(I)Lcom/sec/erisclient/ErisError;
    .locals 2
    .param p1, "dErrorCode"    # I

    .line 750
    const-string v0, "ErisClient"

    const-string v1, "getErisErrorFromDaemonError()"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 773
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 767
    :pswitch_0
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_NEGOTIATION_ERROR:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 765
    :pswitch_1
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_TIMEOUT:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 763
    :pswitch_2
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_NO_CONNECTION:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 761
    :pswitch_3
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_PEER_INIT_UNREACHABLE:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 759
    :pswitch_4
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_PEER_AUTH_FAILED:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 757
    :pswitch_5
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_PEER_ADDR_FAILED:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 755
    :pswitch_6
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 753
    :pswitch_7
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 771
    :cond_0
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_SERVER_CERT_VALIDATION_ERROR:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 769
    :cond_1
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_SERVER_CERT_INVALID_ERROR:Lcom/sec/erisclient/ErisError;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getErrorString(I)Ljava/lang/String;
    .locals 3
    .param p1, "errorCode"    # I

    .line 1296
    const/4 v0, 0x0

    .line 1297
    .local v0, "ret":Ljava/lang/String;
    const/16 v1, -0x1f

    if-eq p1, v1, :cond_3

    const/16 v1, -0x1e

    if-eq p1, v1, :cond_2

    const/16 v1, -0xa

    if-eq p1, v1, :cond_1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1305
    :pswitch_0
    const-string v0, "Invalid network : -20"

    .line 1306
    goto :goto_0

    .line 1308
    :pswitch_1
    const-string v0, "Invalid IP address : -21"

    .line 1309
    goto :goto_0

    .line 1311
    :pswitch_2
    const-string v0, "Invalid PORT : -22"

    .line 1312
    goto :goto_0

    .line 1314
    :pswitch_3
    const-string v0, "Invalid length : -23"

    .line 1315
    goto :goto_0

    .line 1317
    :pswitch_4
    const-string v0, "Invalid interval : -24"

    .line 1318
    goto :goto_0

    .line 1299
    :cond_0
    const-string v0, "No Keepalive : -1"

    .line 1300
    goto :goto_0

    .line 1302
    :cond_1
    const-string v0, "Binder Died : -10"

    .line 1303
    goto :goto_0

    .line 1320
    :cond_2
    const-string v0, "Hardware unsupported : -30"

    .line 1321
    goto :goto_0

    .line 1323
    :cond_3
    const-string v0, "Hardware error : -31"

    .line 1326
    :goto_0
    if-nez v0, :cond_4

    .line 1327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1329
    :cond_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x18
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/erisclient/ErisClient;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/sec/erisclient/ErisClient;

    monitor-enter v0

    .line 319
    :try_start_0
    const-string v1, "ErisClient"

    const-string v2, "getInstance()"

    invoke-static {v1, v2}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    sget-object v1, Lcom/sec/erisclient/ErisClient;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 321
    :try_start_1
    sget-object v2, Lcom/sec/erisclient/ErisClient;->mInstance:Lcom/sec/erisclient/ErisClient;

    if-nez v2, :cond_0

    .line 322
    new-instance v2, Lcom/sec/erisclient/ErisClient;

    invoke-direct {v2, p0}, Lcom/sec/erisclient/ErisClient;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/sec/erisclient/ErisClient;->mInstance:Lcom/sec/erisclient/ErisClient;

    .line 323
    :cond_0
    sget-object v2, Lcom/sec/erisclient/ErisClient;->mInstance:Lcom/sec/erisclient/ErisClient;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v2

    .line 324
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 318
    .end local p0    # "context":Landroid/content/Context;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getWifiIpAddress()Ljava/lang/String;
    .locals 7

    .line 406
    const/4 v0, 0x0

    .line 408
    .local v0, "ipAddressString":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 409
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 410
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    .line 416
    .local v2, "ipAddress":I
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 417
    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    .line 419
    :cond_0
    int-to-long v3, v2

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 421
    .local v3, "ipByteArray":[B
    :try_start_0
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 424
    goto :goto_0

    .line 422
    :catch_0
    move-exception v4

    .line 423
    .local v4, "e":Ljava/net/UnknownHostException;
    const-string v5, "ErisClient"

    const-string v6, "Unable to get host address"

    invoke-static {v5, v6}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .end local v4    # "e":Ljava/net/UnknownHostException;
    :goto_0
    return-object v0

    .line 413
    .end local v2    # "ipAddress":I
    .end local v3    # "ipByteArray":[B
    :cond_1
    return-object v0
.end method

.method private getWlanAddresses(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "ifaceKeyword"    # Ljava/lang/String;
    .param p2, "destAddress"    # Ljava/lang/String;

    .line 239
    move-object/from16 v1, p0

    const-string v2, "ErisClient"

    const/4 v3, 0x0

    .line 240
    .local v3, "isIPv6DestAddress":Z
    const-string v4, "wlan0"

    .line 241
    .local v4, "ifaceName":Ljava/lang/String;
    const-string v5, ""

    .line 242
    .local v5, "wlanAddresses":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    .line 243
    .local v6, "globalIPv4Address":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    .line 244
    .local v7, "linkIPv4Address":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v0

    .line 245
    .local v8, "globalIPv6Address":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    .line 248
    .local v9, "linkIPv6Address":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 249
    .local v0, "networkInterfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-eqz v0, :cond_3

    .line 250
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 251
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/NetworkInterface;

    .line 252
    .local v10, "networkInterface":Ljava/net/NetworkInterface;
    invoke-virtual {v10}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v10}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v12, p1

    :try_start_1
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 253
    invoke-virtual {v10}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    .line 254
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Interface name: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    goto :goto_1

    .line 252
    :cond_0
    move-object/from16 v12, p1

    .line 257
    .end local v10    # "networkInterface":Ljava/net/NetworkInterface;
    :cond_1
    goto :goto_0

    .line 250
    :cond_2
    move-object/from16 v12, p1

    goto :goto_1

    .line 249
    :cond_3
    move-object/from16 v12, p1

    .line 260
    :goto_1
    invoke-static/range {p2 .. p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    instance-of v10, v10, Ljava/net/Inet6Address;

    if-eqz v10, :cond_4

    .line 262
    const/4 v3, 0x1

    .line 265
    :cond_4
    invoke-static {v4}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v10

    .line 266
    .local v10, "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    invoke-static {v10}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 267
    .local v13, "inetAddress":Ljava/net/InetAddress;
    const-string v14, ","

    if-eqz v3, :cond_6

    .line 268
    :try_start_2
    instance-of v15, v13, Ljava/net/Inet6Address;

    if-eqz v15, :cond_8

    .line 269
    invoke-virtual {v13}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v15

    if-nez v15, :cond_5

    invoke-virtual {v13}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v15

    if-nez v15, :cond_5

    .line 271
    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v15}, Lcom/sec/erisclient/ErisClient;->extractIPAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 274
    :cond_5
    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v15}, Lcom/sec/erisclient/ErisClient;->extractIPAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 279
    :cond_6
    instance-of v15, v13, Ljava/net/Inet4Address;

    if-eqz v15, :cond_8

    .line 280
    invoke-virtual {v13}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v15

    if-nez v15, :cond_7

    invoke-virtual {v13}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v15

    if-nez v15, :cond_7

    .line 282
    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v15}, Lcom/sec/erisclient/ErisClient;->extractIPAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 285
    :cond_7
    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v15}, Lcom/sec/erisclient/ErisClient;->extractIPAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .end local v13    # "inetAddress":Ljava/net/InetAddress;
    :cond_8
    :goto_3
    goto :goto_2

    .line 291
    :cond_9
    if-eqz v3, :cond_a

    .line 292
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    goto :goto_4

    .line 295
    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v11

    .line 300
    .end local v0    # "networkInterfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v10    # "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_4
    goto :goto_6

    .line 298
    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v12, p1

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    const-string v10, "Failed to get wlan addresses"

    invoke-static {v2, v10}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_b

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " addresses="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const/4 v0, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 307
    :cond_b
    return-object v5
.end method

.method private parseDaemonResponse(Ljava/lang/String;)V
    .locals 22
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 788
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 789
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .end local p1    # "jsonString":Ljava/lang/String;
    .local v0, "jsonString":Ljava/lang/String;
    goto :goto_0

    .line 788
    .end local v0    # "jsonString":Ljava/lang/String;
    .restart local p1    # "jsonString":Ljava/lang/String;
    :cond_0
    move-object v2, v0

    .line 790
    .end local p1    # "jsonString":Ljava/lang/String;
    .local v2, "jsonString":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 791
    .local v5, "jArrStr":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 793
    .local v6, "jsonArr":Lorg/json/JSONArray;
    const/4 v0, 0x0

    move v7, v0

    .local v7, "index":I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_11

    .line 794
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 795
    .local v8, "jsonObject":Lorg/json/JSONObject;
    const-string v0, "msgData"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 797
    .local v9, "dataObj":Lorg/json/JSONObject;
    const-string v0, "msgType"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 798
    .local v10, "msgType":I
    const/4 v0, 0x4

    if-eq v10, v0, :cond_3

    const/4 v0, 0x5

    if-eq v10, v0, :cond_1

    move-object/from16 v16, v2

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move v3, v7

    goto/16 :goto_7

    .line 902
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseDaemonResponse() "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "ErisClient"

    invoke-static {v11, v0}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const-string v0, "cid"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 904
    .local v11, "cid":I
    new-instance v0, Lcom/sec/erisclient/IPSecConnectionState;

    invoke-direct {v0, v9}, Lcom/sec/erisclient/IPSecConnectionState;-><init>(Lorg/json/JSONObject;)V

    move-object v12, v0

    .line 905
    .local v12, "state":Lcom/sec/erisclient/IPSecConnectionState;
    iget-object v13, v1, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    monitor-enter v13

    .line 906
    :try_start_0
    iget-object v0, v1, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/erisclient/IPSecConnection;

    .line 907
    .local v0, "conn":Lcom/sec/erisclient/IPSecConnection;
    if-nez v0, :cond_2

    .line 908
    const-string v14, "ErisClient"

    const-string v15, "received orphan prop update message from daemon - skip"

    invoke-static {v14, v15}, Lcom/sec/erisclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    monitor-exit v13

    move-object/from16 v16, v2

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move v3, v7

    goto/16 :goto_7

    .line 911
    :cond_2
    invoke-virtual {v0, v12}, Lcom/sec/erisclient/IPSecConnection;->setState(Lcom/sec/erisclient/IPSecConnectionState;)V

    .line 912
    monitor-exit v13

    .line 913
    move-object/from16 v16, v2

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move v3, v7

    goto/16 :goto_7

    .line 912
    .end local v0    # "conn":Lcom/sec/erisclient/IPSecConnection;
    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 800
    .end local v11    # "cid":I
    .end local v12    # "state":Lcom/sec/erisclient/IPSecConnectionState;
    :cond_3
    const-string v0, "cid"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 801
    .restart local v11    # "cid":I
    const-string v0, "mIkeSrcPort"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/sec/erisclient/ErisClient;->mIkeSrcPort:I

    .line 802
    iget-object v12, v1, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    monitor-enter v12

    .line 803
    :try_start_1
    iget-object v0, v1, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/erisclient/IPSecConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    move-object v13, v0

    .line 804
    .local v13, "conn":Lcom/sec/erisclient/IPSecConnection;
    if-nez v13, :cond_4

    .line 805
    :try_start_2
    const-string v0, "ErisClient"

    const-string v14, "received orphan status update message from daemon - skip"

    invoke-static {v0, v14}, Lcom/sec/erisclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v16, v2

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move v3, v7

    goto/16 :goto_7

    .line 808
    .end local v13    # "conn":Lcom/sec/erisclient/IPSecConnection;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move v3, v7

    goto/16 :goto_9

    .restart local v13    # "conn":Lcom/sec/erisclient/IPSecConnection;
    :cond_4
    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    .line 809
    const-string v0, "stateCode"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/sec/erisclient/ErisClient;->getConnectionEventFromDaemonEvent(I)Lcom/sec/erisclient/ErisEvent;

    move-result-object v14

    .line 810
    .local v14, "event":Lcom/sec/erisclient/ErisEvent;
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_IKE_KEYS:Lcom/sec/erisclient/ErisEvent;

    if-eq v14, v0, :cond_5

    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_ESP_KEYS:Lcom/sec/erisclient/ErisEvent;

    if-eq v14, v0, :cond_5

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parseDaemonResponse() "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "ErisClient"

    invoke-static {v12, v0}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    :cond_5
    sget-object v15, Lcom/sec/erisclient/ErisClient;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 813
    :try_start_4
    const-string v0, "errorCode"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/sec/erisclient/ErisClient;->getErisErrorFromDaemonError(I)Lcom/sec/erisclient/ErisError;

    move-result-object v0

    move-object v12, v0

    .line 814
    .local v12, "error":Lcom/sec/erisclient/ErisError;
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    .line 815
    const-string v0, "ikeErrorCode"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 816
    .local v15, "ikeError":I
    new-instance v0, Lcom/sec/erisclient/ErisEventData;

    invoke-direct {v0, v13, v12, v15}, Lcom/sec/erisclient/ErisEventData;-><init>(Lcom/sec/erisclient/IPSecConnection;Lcom/sec/erisclient/ErisError;I)V

    move-object/from16 p1, v0

    .line 817
    .local p1, "data":Lcom/sec/erisclient/ErisEventData;
    const-string v0, "backoffTimer"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 818
    .local v3, "backoffTimer":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BACKOFF_TIMER = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "s"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ErisClient"

    invoke-static {v4, v0}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    move-object/from16 v4, p1

    .end local p1    # "data":Lcom/sec/erisclient/ErisEventData;
    .local v4, "data":Lcom/sec/erisclient/ErisEventData;
    invoke-virtual {v4, v3}, Lcom/sec/erisclient/ErisEventData;->setBackoffTimer(I)V

    .line 820
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTED:Lcom/sec/erisclient/ErisEvent;

    if-ne v14, v0, :cond_8

    .line 821
    const-string v0, "n1_mode_snssai"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 822
    .local v0, "n1ModeSnssai":Ljava/lang/String;
    invoke-virtual {v4, v0}, Lcom/sec/erisclient/ErisEventData;->setSnssaiValue(Ljava/lang/String;)V

    .line 823
    move-object/from16 p1, v0

    .end local v0    # "n1ModeSnssai":Ljava/lang/String;
    .local p1, "n1ModeSnssai":Ljava/lang/String;
    const-string v0, "n1_mode_plmn_id"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, "n1ModePlmnId":Ljava/lang/String;
    invoke-virtual {v4, v0}, Lcom/sec/erisclient/ErisEventData;->setPlmnIdValue(Ljava/lang/String;)V

    .line 825
    move-object/from16 v16, v2

    const/4 v2, 0x1

    .end local v2    # "jsonString":Ljava/lang/String;
    .local v16, "jsonString":Ljava/lang/String;
    invoke-virtual {v13, v2}, Lcom/sec/erisclient/IPSecConnection;->setConnected(Z)V

    .line 826
    invoke-virtual {v13}, Lcom/sec/erisclient/IPSecConnection;->getGateway()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v0

    .end local v0    # "n1ModePlmnId":Ljava/lang/String;
    .local v17, "n1ModePlmnId":Ljava/lang/String;
    const-string v0, "wlan"

    invoke-direct {v1, v0, v2}, Lcom/sec/erisclient/ErisClient;->getWlanAddresses(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, "hostAddress":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 829
    sget-object v2, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_SETUP_FAILURE:Lcom/sec/erisclient/ErisEvent;

    .line 830
    .end local v14    # "event":Lcom/sec/erisclient/ErisEvent;
    .local v2, "event":Lcom/sec/erisclient/ErisEvent;
    sget-object v14, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v4, v14}, Lcom/sec/erisclient/ErisEventData;->setError(Lcom/sec/erisclient/ErisError;)V

    .line 831
    invoke-direct {v1, v2, v4}, Lcom/sec/erisclient/ErisClient;->updateConnectionStatus(Lcom/sec/erisclient/ErisEvent;Lcom/sec/erisclient/ErisEventData;)V

    .line 832
    invoke-virtual {v1, v13}, Lcom/sec/erisclient/ErisClient;->disconnect(Lcom/sec/erisclient/IPSecConnection;)Lcom/sec/erisclient/ErisError;

    .line 833
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move v3, v7

    goto/16 :goto_7

    .line 836
    .end local v2    # "event":Lcom/sec/erisclient/ErisEvent;
    .restart local v14    # "event":Lcom/sec/erisclient/ErisEvent;
    :cond_6
    invoke-virtual {v13}, Lcom/sec/erisclient/IPSecConnection;->getNattKeepaliveTimeout()I

    move-result v2

    iput v2, v1, Lcom/sec/erisclient/ErisClient;->mNatKeepaliveTimeout:I

    .line 837
    invoke-virtual {v13}, Lcom/sec/erisclient/IPSecConnection;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v0

    .end local v0    # "hostAddress":Ljava/lang/String;
    .local v18, "hostAddress":Ljava/lang/String;
    const-string v0, "ims"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, v1, Lcom/sec/erisclient/ErisClient;->mNatKeepaliveTimeout:I

    if-lez v0, :cond_7

    .line 840
    iput-object v13, v1, Lcom/sec/erisclient/ErisClient;->tmpIPSecConnection:Lcom/sec/erisclient/IPSecConnection;

    .line 841
    invoke-virtual {v13}, Lcom/sec/erisclient/IPSecConnection;->getGateway()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {v1, v0, v11, v2}, Lcom/sec/erisclient/ErisClient;->SetNatKeepalive(Ljava/lang/String;IZ)V

    goto :goto_2

    .line 837
    :cond_7
    const/4 v2, 0x1

    goto :goto_2

    .line 820
    .end local v16    # "jsonString":Ljava/lang/String;
    .end local v17    # "n1ModePlmnId":Ljava/lang/String;
    .end local v18    # "hostAddress":Ljava/lang/String;
    .end local p1    # "n1ModeSnssai":Ljava/lang/String;
    .local v2, "jsonString":Ljava/lang/String;
    :cond_8
    move-object/from16 v16, v2

    const/4 v2, 0x1

    .line 844
    .end local v2    # "jsonString":Ljava/lang/String;
    .restart local v16    # "jsonString":Ljava/lang/String;
    :goto_2
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_ESP_SEQ:Lcom/sec/erisclient/ErisEvent;

    if-ne v14, v0, :cond_9

    .line 845
    const-string v0, "min_seq"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/sec/erisclient/ErisEventData;->setMinEspSeq(I)V

    .line 846
    const-string v0, "max_seq"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/sec/erisclient/ErisEventData;->setMaxEspSeq(I)V

    .line 847
    const-string v0, "total_rx"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/sec/erisclient/ErisEventData;->setTotalRxPackets(I)V

    .line 849
    :cond_9
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_IKE_IPSEC_REKEY_START:Lcom/sec/erisclient/ErisEvent;

    if-ne v14, v0, :cond_c

    .line 850
    invoke-virtual {v13}, Lcom/sec/erisclient/IPSecConnection;->getConnectTimeout()I

    move-result v2

    .line 851
    .local v2, "timeout":I
    sget-object v17, Lcom/sec/erisclient/ErisClient;->mLock:Ljava/lang/Object;

    monitor-enter v17

    .line 852
    :try_start_5
    iget-object v0, v1, Lcom/sec/erisclient/ErisClient;->mTimeoutThread:[Lcom/sec/erisclient/ErisClient$TimeoutThread;

    aget-object v0, v0, v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    if-eqz v0, :cond_a

    .line 853
    :try_start_6
    const-string v0, "ErisClient"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move/from16 p1, v3

    .end local v3    # "backoffTimer":I
    .local p1, "backoffTimer":I
    :try_start_7
    const-string v3, "EVENT_IKE_IPSEC_REKEY_START - update EVENT_CONNECTION_ACTIVE"

    invoke-static {v0, v3}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_ACTIVE:Lcom/sec/erisclient/ErisEvent;

    new-instance v3, Lcom/sec/erisclient/ErisEventData;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object/from16 v18, v5

    .end local v5    # "jArrStr":Ljava/lang/String;
    .local v18, "jArrStr":Ljava/lang/String;
    :try_start_8
    sget-object v5, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v19, v6

    const/4 v6, 0x0

    .end local v6    # "jsonArr":Lorg/json/JSONArray;
    .local v19, "jsonArr":Lorg/json/JSONArray;
    :try_start_9
    invoke-direct {v3, v13, v5, v6}, Lcom/sec/erisclient/ErisEventData;-><init>(Lcom/sec/erisclient/IPSecConnection;Lcom/sec/erisclient/ErisError;I)V

    invoke-direct {v1, v0, v3}, Lcom/sec/erisclient/ErisClient;->updateConnectionStatus(Lcom/sec/erisclient/ErisEvent;Lcom/sec/erisclient/ErisEventData;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_3

    .line 857
    :catchall_2
    move-exception v0

    move v3, v7

    goto/16 :goto_6

    .end local v19    # "jsonArr":Lorg/json/JSONArray;
    .restart local v6    # "jsonArr":Lorg/json/JSONArray;
    :catchall_3
    move-exception v0

    move-object/from16 v19, v6

    move v3, v7

    .end local v6    # "jsonArr":Lorg/json/JSONArray;
    .restart local v19    # "jsonArr":Lorg/json/JSONArray;
    goto/16 :goto_6

    .end local v18    # "jArrStr":Ljava/lang/String;
    .end local v19    # "jsonArr":Lorg/json/JSONArray;
    .restart local v5    # "jArrStr":Ljava/lang/String;
    .restart local v6    # "jsonArr":Lorg/json/JSONArray;
    :catchall_4
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move v3, v7

    .end local v5    # "jArrStr":Ljava/lang/String;
    .end local v6    # "jsonArr":Lorg/json/JSONArray;
    .restart local v18    # "jArrStr":Ljava/lang/String;
    .restart local v19    # "jsonArr":Lorg/json/JSONArray;
    goto/16 :goto_6

    .end local v18    # "jArrStr":Ljava/lang/String;
    .end local v19    # "jsonArr":Lorg/json/JSONArray;
    .end local p1    # "backoffTimer":I
    .restart local v3    # "backoffTimer":I
    .restart local v5    # "jArrStr":Ljava/lang/String;
    .restart local v6    # "jsonArr":Lorg/json/JSONArray;
    :catchall_5
    move-exception v0

    move/from16 p1, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move v3, v7

    .end local v3    # "backoffTimer":I
    .end local v5    # "jArrStr":Ljava/lang/String;
    .end local v6    # "jsonArr":Lorg/json/JSONArray;
    .restart local v18    # "jArrStr":Ljava/lang/String;
    .restart local v19    # "jsonArr":Lorg/json/JSONArray;
    .restart local p1    # "backoffTimer":I
    goto/16 :goto_6

    .line 852
    .end local v18    # "jArrStr":Ljava/lang/String;
    .end local v19    # "jsonArr":Lorg/json/JSONArray;
    .end local p1    # "backoffTimer":I
    .restart local v3    # "backoffTimer":I
    .restart local v5    # "jArrStr":Ljava/lang/String;
    .restart local v6    # "jsonArr":Lorg/json/JSONArray;
    :cond_a
    move/from16 p1, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    const/4 v6, 0x0

    .line 857
    .end local v3    # "backoffTimer":I
    .end local v5    # "jArrStr":Ljava/lang/String;
    .end local v6    # "jsonArr":Lorg/json/JSONArray;
    .restart local v18    # "jArrStr":Ljava/lang/String;
    .restart local v19    # "jsonArr":Lorg/json/JSONArray;
    .restart local p1    # "backoffTimer":I
    :goto_3
    :try_start_a
    monitor-exit v17
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 859
    :try_start_b
    iget-object v0, v1, Lcom/sec/erisclient/ErisClient;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/sec/erisclient/ErisClient;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz v2, :cond_b

    .line 860
    const-string v0, "ErisClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " - rekey start"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    iget-object v0, v1, Lcom/sec/erisclient/ErisClient;->wakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1

    move v3, v7

    .end local v7    # "index":I
    .local v3, "index":I
    int-to-long v6, v2

    const-wide/16 v20, 0x3e8

    mul-long v6, v6, v20

    :try_start_c
    invoke-virtual {v0, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_4

    .line 863
    :catch_0
    move-exception v0

    goto :goto_5

    .line 859
    .end local v3    # "index":I
    .restart local v7    # "index":I
    :cond_b
    move v3, v7

    .line 865
    .end local v7    # "index":I
    .restart local v3    # "index":I
    :goto_4
    goto/16 :goto_7

    .line 863
    .end local v3    # "index":I
    .restart local v7    # "index":I
    :catch_1
    move-exception v0

    move v3, v7

    .line 864
    .end local v7    # "index":I
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v3    # "index":I
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseDaemonResponse(): RuntimeException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ErisClient"

    invoke-static {v6, v5}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_7

    .line 857
    .end local v3    # "index":I
    .restart local v7    # "index":I
    :catchall_6
    move-exception v0

    move v3, v7

    .end local v7    # "index":I
    .restart local v3    # "index":I
    goto :goto_6

    .end local v18    # "jArrStr":Ljava/lang/String;
    .end local v19    # "jsonArr":Lorg/json/JSONArray;
    .end local p1    # "backoffTimer":I
    .local v3, "backoffTimer":I
    .restart local v5    # "jArrStr":Ljava/lang/String;
    .restart local v6    # "jsonArr":Lorg/json/JSONArray;
    .restart local v7    # "index":I
    :catchall_7
    move-exception v0

    move/from16 p1, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move v3, v7

    .end local v5    # "jArrStr":Ljava/lang/String;
    .end local v6    # "jsonArr":Lorg/json/JSONArray;
    .end local v7    # "index":I
    .local v3, "index":I
    .restart local v18    # "jArrStr":Ljava/lang/String;
    .restart local v19    # "jsonArr":Lorg/json/JSONArray;
    .restart local p1    # "backoffTimer":I
    :goto_6
    :try_start_d
    monitor-exit v17
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    throw v0

    :catchall_8
    move-exception v0

    goto :goto_6

    .line 868
    .end local v2    # "timeout":I
    .end local v18    # "jArrStr":Ljava/lang/String;
    .end local v19    # "jsonArr":Lorg/json/JSONArray;
    .end local p1    # "backoffTimer":I
    .local v3, "backoffTimer":I
    .restart local v5    # "jArrStr":Ljava/lang/String;
    .restart local v6    # "jsonArr":Lorg/json/JSONArray;
    .restart local v7    # "index":I
    :cond_c
    move/from16 p1, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move v3, v7

    .end local v5    # "jArrStr":Ljava/lang/String;
    .end local v6    # "jsonArr":Lorg/json/JSONArray;
    .end local v7    # "index":I
    .local v3, "index":I
    .restart local v18    # "jArrStr":Ljava/lang/String;
    .restart local v19    # "jsonArr":Lorg/json/JSONArray;
    .restart local p1    # "backoffTimer":I
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_IKE_IPSEC_REKEY_END:Lcom/sec/erisclient/ErisEvent;

    if-ne v14, v0, :cond_e

    .line 870
    :try_start_e
    iget-object v0, v1, Lcom/sec/erisclient/ErisClient;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/sec/erisclient/ErisClient;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 871
    const-string v0, "ErisClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  - rekey end"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    iget-object v0, v1, Lcom/sec/erisclient/ErisClient;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2

    .line 876
    :cond_d
    goto/16 :goto_7

    .line 874
    :catch_2
    move-exception v0

    .line 875
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseDaemonResponse(): RuntimeException "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "ErisClient"

    invoke-static {v5, v2}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_7

    .line 879
    :cond_e
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_IKE_KEYS:Lcom/sec/erisclient/ErisEvent;

    if-ne v14, v0, :cond_f

    .line 880
    const-string v0, "ike_spi_i"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sec/erisclient/ErisEventData;->setIkeSpiI(Ljava/lang/String;)V

    .line 881
    const-string v0, "ike_spi_r"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sec/erisclient/ErisEventData;->setIkeSpiR(Ljava/lang/String;)V

    .line 882
    const-string v0, "ike_sk_ei"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sec/erisclient/ErisEventData;->setIkeSKei(Ljava/lang/String;)V

    .line 883
    const-string v0, "ike_sk_er"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sec/erisclient/ErisEventData;->setIkeSKer(Ljava/lang/String;)V

    .line 884
    const-string v0, "ike_sk_ai"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sec/erisclient/ErisEventData;->setIkeSKai(Ljava/lang/String;)V

    .line 885
    const-string v0, "ike_sk_ar"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sec/erisclient/ErisEventData;->setIkeSKar(Ljava/lang/String;)V

    .line 886
    const-string v0, "ike_enc_alg"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sec/erisclient/ErisEventData;->setIkeEA(Ljava/lang/String;)V

    .line 887
    const-string v0, "ike_integ_alg"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sec/erisclient/ErisEventData;->setIkeIA(Ljava/lang/String;)V

    .line 889
    :cond_f
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_ESP_KEYS:Lcom/sec/erisclient/ErisEvent;

    if-ne v14, v0, :cond_10

    .line 890
    const-string v0, "esp_spi_i"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sec/erisclient/ErisEventData;->setEspSpiI(Ljava/lang/String;)V

    .line 891
    const-string v0, "esp_spi_r"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sec/erisclient/ErisEventData;->setEspSpiR(Ljava/lang/String;)V

    .line 892
    const-string v0, "esp_kei"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sec/erisclient/ErisEventData;->setEspEKi(Ljava/lang/String;)V

    .line 893
    const-string v0, "esp_ker"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sec/erisclient/ErisEventData;->setEspEKr(Ljava/lang/String;)V

    .line 894
    const-string v0, "esp_kai"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sec/erisclient/ErisEventData;->setEspAKi(Ljava/lang/String;)V

    .line 895
    const-string v0, "esp_kar"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sec/erisclient/ErisEventData;->setEspAKr(Ljava/lang/String;)V

    .line 896
    const-string v0, "esp_enc_alg"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sec/erisclient/ErisEventData;->setEspEA(Ljava/lang/String;)V

    .line 897
    const-string v0, "esp_integ_alg"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sec/erisclient/ErisEventData;->setEspAA(Ljava/lang/String;)V

    .line 899
    :cond_10
    invoke-direct {v1, v14, v4}, Lcom/sec/erisclient/ErisClient;->updateConnectionStatus(Lcom/sec/erisclient/ErisEvent;Lcom/sec/erisclient/ErisEventData;)V

    .line 900
    nop

    .line 793
    .end local v4    # "data":Lcom/sec/erisclient/ErisEventData;
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "dataObj":Lorg/json/JSONObject;
    .end local v10    # "msgType":I
    .end local v11    # "cid":I
    .end local v12    # "error":Lcom/sec/erisclient/ErisError;
    .end local v13    # "conn":Lcom/sec/erisclient/IPSecConnection;
    .end local v14    # "event":Lcom/sec/erisclient/ErisEvent;
    .end local v15    # "ikeError":I
    .end local p1    # "backoffTimer":I
    :goto_7
    add-int/lit8 v7, v3, 0x1

    move-object/from16 v2, v16

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    const/4 v3, 0x0

    const/4 v4, 0x1

    .end local v3    # "index":I
    .restart local v7    # "index":I
    goto/16 :goto_1

    .line 814
    .end local v16    # "jsonString":Ljava/lang/String;
    .end local v18    # "jArrStr":Ljava/lang/String;
    .end local v19    # "jsonArr":Lorg/json/JSONArray;
    .local v2, "jsonString":Ljava/lang/String;
    .restart local v5    # "jArrStr":Ljava/lang/String;
    .restart local v6    # "jsonArr":Lorg/json/JSONArray;
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    .restart local v9    # "dataObj":Lorg/json/JSONObject;
    .restart local v10    # "msgType":I
    .restart local v11    # "cid":I
    .restart local v13    # "conn":Lcom/sec/erisclient/IPSecConnection;
    .restart local v14    # "event":Lcom/sec/erisclient/ErisEvent;
    :catchall_9
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move v3, v7

    .end local v2    # "jsonString":Ljava/lang/String;
    .end local v5    # "jArrStr":Ljava/lang/String;
    .end local v6    # "jsonArr":Lorg/json/JSONArray;
    .end local v7    # "index":I
    .restart local v3    # "index":I
    .restart local v16    # "jsonString":Ljava/lang/String;
    .restart local v18    # "jArrStr":Ljava/lang/String;
    .restart local v19    # "jsonArr":Lorg/json/JSONArray;
    :goto_8
    :try_start_f
    monitor-exit v15
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    throw v0

    :catchall_a
    move-exception v0

    goto :goto_8

    .line 808
    .end local v3    # "index":I
    .end local v13    # "conn":Lcom/sec/erisclient/IPSecConnection;
    .end local v14    # "event":Lcom/sec/erisclient/ErisEvent;
    .end local v16    # "jsonString":Ljava/lang/String;
    .end local v18    # "jArrStr":Ljava/lang/String;
    .end local v19    # "jsonArr":Lorg/json/JSONArray;
    .restart local v2    # "jsonString":Ljava/lang/String;
    .restart local v5    # "jArrStr":Ljava/lang/String;
    .restart local v6    # "jsonArr":Lorg/json/JSONArray;
    .restart local v7    # "index":I
    :catchall_b
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move v3, v7

    .end local v2    # "jsonString":Ljava/lang/String;
    .end local v5    # "jArrStr":Ljava/lang/String;
    .end local v6    # "jsonArr":Lorg/json/JSONArray;
    .end local v7    # "index":I
    .restart local v3    # "index":I
    .restart local v16    # "jsonString":Ljava/lang/String;
    .restart local v18    # "jArrStr":Ljava/lang/String;
    .restart local v19    # "jsonArr":Lorg/json/JSONArray;
    :goto_9
    :try_start_10
    monitor-exit v12
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    throw v0

    :catchall_c
    move-exception v0

    goto :goto_9

    .line 918
    .end local v3    # "index":I
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "dataObj":Lorg/json/JSONObject;
    .end local v10    # "msgType":I
    .end local v11    # "cid":I
    .end local v16    # "jsonString":Ljava/lang/String;
    .end local v18    # "jArrStr":Ljava/lang/String;
    .end local v19    # "jsonArr":Lorg/json/JSONArray;
    .restart local v2    # "jsonString":Ljava/lang/String;
    .restart local v5    # "jArrStr":Ljava/lang/String;
    .restart local v6    # "jsonArr":Lorg/json/JSONArray;
    :cond_11
    return-void
.end method

.method private sendDisconnectRequest(Lcom/sec/erisclient/IPSecConnection;I)Lcom/sec/erisclient/ErisError;
    .locals 5
    .param p1, "connection"    # Lcom/sec/erisclient/IPSecConnection;
    .param p2, "msgType"    # I

    .line 543
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    .line 544
    .local v0, "result":Lcom/sec/erisclient/ErisError;
    sget-object v1, Lcom/sec/erisclient/ErisClient;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 545
    :try_start_0
    iget-object v2, p0, Lcom/sec/erisclient/ErisClient;->mDaemonRunner:Lcom/sec/erisclient/ErisClient$DaemonRunner;

    if-nez v2, :cond_0

    .line 546
    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_DAEMON_STOPPED:Lcom/sec/erisclient/ErisError;

    move-object v0, v2

    .line 547
    const-string v2, "ErisClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    monitor-exit v1

    return-object v0

    .line 550
    :cond_0
    if-nez p1, :cond_1

    .line 551
    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_NO_CONNECTION:Lcom/sec/erisclient/ErisError;

    move-object v0, v2

    .line 552
    const-string v2, "ErisClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (null connection)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    monitor-exit v1

    return-object v0

    .line 555
    :cond_1
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 556
    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_NOT_CONNECTED:Lcom/sec/erisclient/ErisError;

    move-object v0, v2

    .line 557
    const-string v2, "ErisClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (connection not connected)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 561
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getConnID()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, p2, v2, v3}, Lcom/sec/erisclient/ErisClient;->sendRequestToDaemon(III)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    :goto_0
    goto :goto_1

    .line 565
    :catch_0
    move-exception v2

    .line 566
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 567
    sget-object v3, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    move-object v0, v3

    goto :goto_1

    .line 562
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 563
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 564
    sget-object v3, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    move-object v0, v3

    .end local v2    # "e":Lorg/json/JSONException;
    goto :goto_0

    .line 569
    :goto_1
    monitor-exit v1

    .line 570
    return-object v0

    .line 569
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private sendRequestToDaemon(III)V
    .locals 5
    .param p1, "requestType"    # I
    .param p2, "connectionId"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 940
    const-string v0, "ErisClient"

    const-string v1, "sendRequestToDaemon()"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 942
    .local v0, "jObject":Lorg/json/JSONObject;
    const-string v1, "msgType"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 943
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 944
    .local v1, "jData":Lorg/json/JSONObject;
    const-string v2, "cid"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 945
    const/4 v2, 0x7

    if-eq p1, v2, :cond_1

    const/16 v2, 0x8

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 949
    :cond_0
    const-string v2, "timeout"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 946
    :cond_1
    :goto_0
    const-string v2, "interval"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 951
    :goto_1
    const-string v2, "msgData"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 952
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 953
    .local v2, "request":[B
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->out:Ljava/io/OutputStream;

    if-eqz v3, :cond_2

    .line 954
    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 955
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 957
    :cond_2
    return-void
.end method

.method private sendRequestToDaemon(ILcom/sec/erisclient/IPSecConnection;)V
    .locals 5
    .param p1, "requestType"    # I
    .param p2, "connection"    # Lcom/sec/erisclient/IPSecConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 926
    const-string v0, "ErisClient"

    const-string v1, "sendRequestToDaemon()"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 928
    .local v0, "jObject":Lorg/json/JSONObject;
    const-string v1, "msgType"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 929
    invoke-virtual {p2}, Lcom/sec/erisclient/IPSecConnection;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    .line 930
    .local v1, "jData":Lorg/json/JSONObject;
    const-string v2, "msgData"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 931
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 932
    .local v2, "request":[B
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->out:Ljava/io/OutputStream;

    if-eqz v3, :cond_0

    .line 933
    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 934
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 936
    :cond_0
    return-void
.end method

.method private setHwNatKeepalive(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "gateway"    # Ljava/lang/String;
    .param p2, "on"    # Z

    .line 169
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient;->isEnhancedEpdg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/sec/erisclient/ErisClient;->setKeepAlivePacket(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 172
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setKeepAlivePacket(Ljava/lang/String;Z)Z
    .locals 18
    .param p1, "gateway"    # Ljava/lang/String;
    .param p2, "on"    # Z

    .line 1230
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "ErisClient"

    const/4 v3, 0x0

    if-nez p2, :cond_1

    .line 1231
    iget-object v4, v1, Lcom/sec/erisclient/ErisClient;->mPacketKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;

    if-eqz v4, :cond_0

    iget-boolean v4, v1, Lcom/sec/erisclient/ErisClient;->mIsKeepaliveStarted:Z

    if-eqz v4, :cond_0

    .line 1232
    const-string v3, "Set NAT keepalive alarm off with HW"

    invoke-static {v0, v3}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    iget-object v0, v1, Lcom/sec/erisclient/ErisClient;->mPacketKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager$PacketKeepalive;->stop()V

    goto/16 :goto_1

    .line 1235
    :cond_0
    return v3

    .line 1238
    :cond_1
    iget-object v4, v1, Lcom/sec/erisclient/ErisClient;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v4

    .line 1239
    .local v4, "network":Landroid/net/Network;
    if-nez v4, :cond_2

    .line 1240
    const-string v5, "Failed, Can\'t get active network"

    invoke-static {v0, v5}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    return v3

    .line 1243
    :cond_2
    iget-object v5, v1, Lcom/sec/erisclient/ErisClient;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    .line 1244
    .local v12, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1245
    const-string v5, "Failed, active network is not connected"

    invoke-static {v0, v5}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    return v3

    .line 1248
    :cond_3
    if-nez v2, :cond_4

    .line 1249
    const-string v5, "Invalid gateway address"

    invoke-static {v0, v5}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    return v3

    .line 1252
    :cond_4
    const/4 v5, 0x0

    .local v5, "dstAddr":Ljava/net/InetAddress;
    const/4 v6, 0x0

    .line 1253
    .local v6, "srcAddr":Ljava/net/InetAddress;
    const/4 v7, 0x0

    .line 1254
    .local v7, "usingIPv6":Z
    const/4 v8, 0x0

    .line 1256
    .local v8, "hostAddress":Ljava/lang/String;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v13, v9

    .line 1260
    .end local v5    # "dstAddr":Ljava/net/InetAddress;
    .local v13, "dstAddr":Ljava/net/InetAddress;
    nop

    .line 1261
    if-nez v13, :cond_5

    .line 1262
    const-string v5, "Can\'t get destination address"

    invoke-static {v0, v5}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    return v3

    .line 1265
    :cond_5
    invoke-virtual {v13}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, ":"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1266
    const/4 v7, 0x1

    move v14, v7

    goto :goto_0

    .line 1265
    :cond_6
    move v14, v7

    .line 1268
    .end local v7    # "usingIPv6":Z
    .local v14, "usingIPv6":Z
    :goto_0
    const-string v5, "wlan"

    invoke-direct {v1, v5, v2}, Lcom/sec/erisclient/ErisClient;->getWlanAddresses(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1269
    .end local v8    # "hostAddress":Ljava/lang/String;
    .local v5, "hostAddress":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1270
    const-string v7, "Can\'t get source address"

    invoke-static {v0, v7}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    return v3

    .line 1273
    :cond_7
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v15, v7, v3

    .line 1275
    .end local v5    # "hostAddress":Ljava/lang/String;
    .local v15, "hostAddress":Ljava/lang/String;
    :try_start_1
    invoke-static {v15}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1276
    .end local v6    # "srcAddr":Ljava/net/InetAddress;
    .local v9, "srcAddr":Ljava/net/InetAddress;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "srcAddr is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1280
    nop

    .line 1281
    invoke-virtual/range {p0 .. p0}, Lcom/sec/erisclient/ErisClient;->getNattKeepAliveTimeout()I

    move-result v16

    .line 1282
    .local v16, "intervalSeconds":I
    iget v11, v1, Lcom/sec/erisclient/ErisClient;->mIkeSrcPort:I

    .line 1283
    .local v11, "srcPort":I
    iget-object v5, v1, Lcom/sec/erisclient/ErisClient;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v8, v1, Lcom/sec/erisclient/ErisClient;->mCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    move-object v6, v4

    move/from16 v7, v16

    move v10, v11

    move/from16 v17, v11

    .end local v11    # "srcPort":I
    .local v17, "srcPort":I
    move-object v11, v13

    invoke-virtual/range {v5 .. v11}, Landroid/net/ConnectivityManager;->startNattKeepalive(Landroid/net/Network;ILandroid/net/ConnectivityManager$PacketKeepaliveCallback;Ljava/net/InetAddress;ILjava/net/InetAddress;)Landroid/net/ConnectivityManager$PacketKeepalive;

    move-result-object v5

    iput-object v5, v1, Lcom/sec/erisclient/ErisClient;->mPacketKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;

    .line 1285
    if-eqz v5, :cond_8

    .line 1286
    const-string v3, "Set NAT keepalive alarm with HW"

    invoke-static {v0, v3}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    .end local v4    # "network":Landroid/net/Network;
    .end local v9    # "srcAddr":Ljava/net/InetAddress;
    .end local v12    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v13    # "dstAddr":Ljava/net/InetAddress;
    .end local v14    # "usingIPv6":Z
    .end local v15    # "hostAddress":Ljava/lang/String;
    .end local v16    # "intervalSeconds":I
    .end local v17    # "srcPort":I
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 1288
    .restart local v4    # "network":Landroid/net/Network;
    .restart local v9    # "srcAddr":Ljava/net/InetAddress;
    .restart local v12    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v13    # "dstAddr":Ljava/net/InetAddress;
    .restart local v14    # "usingIPv6":Z
    .restart local v15    # "hostAddress":Ljava/lang/String;
    .restart local v16    # "intervalSeconds":I
    .restart local v17    # "srcPort":I
    :cond_8
    const-string v5, "Failed to set NAT keepalive alarm with HW"

    invoke-static {v0, v5}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    return v3

    .line 1277
    .end local v16    # "intervalSeconds":I
    .end local v17    # "srcPort":I
    :catch_0
    move-exception v0

    move-object v6, v9

    goto :goto_2

    .end local v9    # "srcAddr":Ljava/net/InetAddress;
    .restart local v6    # "srcAddr":Ljava/net/InetAddress;
    :catch_1
    move-exception v0

    .line 1278
    .local v0, "e":Ljava/net/UnknownHostException;
    :goto_2
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 1279
    return v3

    .line 1257
    .end local v0    # "e":Ljava/net/UnknownHostException;
    .end local v13    # "dstAddr":Ljava/net/InetAddress;
    .end local v14    # "usingIPv6":Z
    .end local v15    # "hostAddress":Ljava/lang/String;
    .local v5, "dstAddr":Ljava/net/InetAddress;
    .restart local v7    # "usingIPv6":Z
    .restart local v8    # "hostAddress":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 1258
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1259
    return v3
.end method

.method private declared-synchronized setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    monitor-enter p0

    .line 921
    :try_start_0
    iput-object p1, p0, Lcom/sec/erisclient/ErisClient;->out:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    monitor-exit p0

    return-void

    .line 920
    .end local p0    # "this":Lcom/sec/erisclient/ErisClient;
    .end local p1    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized updateConnectionStatus(Lcom/sec/erisclient/ErisEvent;Lcom/sec/erisclient/ErisEventData;)V
    .locals 9
    .param p1, "event"    # Lcom/sec/erisclient/ErisEvent;
    .param p2, "data"    # Lcom/sec/erisclient/ErisEventData;

    monitor-enter p0

    .line 960
    :try_start_0
    const-string v0, "ErisClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendConnectionReport() conn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/erisclient/ErisEventData;->getConnection()Lcom/sec/erisclient/IPSecConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    invoke-virtual {p2}, Lcom/sec/erisclient/ErisEventData;->getError()Lcom/sec/erisclient/ErisError;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 960
    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    move-object v0, p1

    .line 963
    .local v0, "sEvent":Lcom/sec/erisclient/ErisEvent;
    move-object v1, p2

    .line 964
    .local v1, "sData":Lcom/sec/erisclient/ErisEventData;
    invoke-virtual {p2}, Lcom/sec/erisclient/ErisEventData;->getConnection()Lcom/sec/erisclient/IPSecConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/erisclient/IPSecConnection;->getConnID()I

    move-result v2

    .line 966
    .local v2, "connectionID":I
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 967
    :try_start_1
    iget-object v4, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/erisclient/IPSecConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 968
    .local v4, "conn":Lcom/sec/erisclient/IPSecConnection;
    if-nez v4, :cond_0

    .line 969
    :try_start_2
    const-string v5, "ErisClient"

    const-string v6, "updateConnectionStatus: connection have been removed"

    invoke-static {v5, v6}, Lcom/sec/erisclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 972
    .end local v4    # "conn":Lcom/sec/erisclient/IPSecConnection;
    :catchall_0
    move-exception v4

    goto/16 :goto_3

    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 973
    :try_start_4
    sget-object v3, Lcom/sec/erisclient/ErisEvent;->EVENT_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    const/4 v4, 0x0

    if-eq p1, v3, :cond_1

    sget-object v3, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_SETUP_FAILURE:Lcom/sec/erisclient/ErisEvent;

    if-eq p1, v3, :cond_1

    sget-object v3, Lcom/sec/erisclient/ErisEvent;->EVENT_PEER_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    if-ne p1, v3, :cond_5

    .line 975
    .end local p0    # "this":Lcom/sec/erisclient/ErisClient;
    :cond_1
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 977
    :try_start_5
    iget-object v5, p0, Lcom/sec/erisclient/ErisClient;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/erisclient/ErisClient;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 978
    const-string v5, "ErisClient"

    const-string v6, "Connection is disconnected - rekey end"

    invoke-static {v5, v6}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    iget-object v5, p0, Lcom/sec/erisclient/ErisClient;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 983
    :cond_2
    goto :goto_0

    .line 990
    :catchall_1
    move-exception v4

    goto/16 :goto_2

    .line 981
    :catch_0
    move-exception v5

    .line 982
    .local v5, "e":Ljava/lang/RuntimeException;
    :try_start_6
    const-string v6, "ErisClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateConnectionStatus(): RuntimeException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :goto_0
    sget-object v5, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_SETUP_FAILURE:Lcom/sec/erisclient/ErisEvent;

    if-eq p1, v5, :cond_3

    iget-object v5, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    .line 986
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/erisclient/IPSecConnection;

    invoke-virtual {v5}, Lcom/sec/erisclient/IPSecConnection;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 988
    :cond_3
    iget-object v5, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 990
    :cond_4
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 991
    :try_start_7
    invoke-virtual {p2}, Lcom/sec/erisclient/ErisEventData;->getConnection()Lcom/sec/erisclient/IPSecConnection;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/sec/erisclient/IPSecConnection;->setConnected(Z)V

    .line 992
    invoke-virtual {p2}, Lcom/sec/erisclient/ErisEventData;->getConnection()Lcom/sec/erisclient/IPSecConnection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/erisclient/IPSecConnection;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "ims"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Lcom/sec/erisclient/ErisEventData;->getConnection()Lcom/sec/erisclient/IPSecConnection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/erisclient/IPSecConnection;->getNattKeepaliveTimeout()I

    move-result v3

    if-lez v3, :cond_5

    .line 994
    invoke-direct {p0, v4, v5, v5}, Lcom/sec/erisclient/ErisClient;->SetNatKeepalive(Ljava/lang/String;IZ)V

    .line 998
    :cond_5
    sget-object v3, Lcom/sec/erisclient/ErisEvent;->EVENT_PEER_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    if-eq p1, v3, :cond_6

    sget-object v3, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_ACTIVE:Lcom/sec/erisclient/ErisEvent;

    if-ne p1, v3, :cond_8

    .line 1000
    :cond_6
    sget-object v3, Lcom/sec/erisclient/ErisClient;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1001
    :try_start_8
    iget-object v5, p0, Lcom/sec/erisclient/ErisClient;->mTimeoutThread:[Lcom/sec/erisclient/ErisClient$TimeoutThread;

    aget-object v5, v5, v2

    if-eqz v5, :cond_7

    .line 1002
    iget-object v5, p0, Lcom/sec/erisclient/ErisClient;->mTimeoutThread:[Lcom/sec/erisclient/ErisClient$TimeoutThread;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/sec/erisclient/ErisClient$TimeoutThread;->interrupt()V

    .line 1003
    iget-object v5, p0, Lcom/sec/erisclient/ErisClient;->mTimeoutThread:[Lcom/sec/erisclient/ErisClient$TimeoutThread;

    aput-object v4, v5, v2

    .line 1005
    :cond_7
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1008
    :cond_8
    :try_start_9
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->mListener:Ljava/lang/ref/WeakReference;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-nez v3, :cond_9

    .line 1009
    monitor-exit p0

    return-void

    .line 1011
    .restart local p0    # "this":Lcom/sec/erisclient/ErisClient;
    :cond_9
    :try_start_a
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/erisclient/IErisListener;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1012
    .local v3, "iListener":Lcom/sec/erisclient/IErisListener;
    if-nez v3, :cond_a

    .line 1013
    monitor-exit p0

    return-void

    .line 1015
    :cond_a
    :try_start_b
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/sec/erisclient/ErisClient$2;

    invoke-direct {v5, p0, v3, v0, v1}, Lcom/sec/erisclient/ErisClient$2;-><init>(Lcom/sec/erisclient/ErisClient;Lcom/sec/erisclient/IErisListener;Lcom/sec/erisclient/ErisEvent;Lcom/sec/erisclient/ErisEventData;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1022
    .local v4, "updateThread":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1024
    :try_start_c
    invoke-virtual {v4}, Ljava/lang/Thread;->join()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1027
    goto :goto_1

    .line 1025
    .end local p0    # "this":Lcom/sec/erisclient/ErisClient;
    :catch_1
    move-exception v5

    .line 1026
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_d
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 1028
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_1
    monitor-exit p0

    return-void

    .line 1005
    .end local v3    # "iListener":Lcom/sec/erisclient/IErisListener;
    .end local v4    # "updateThread":Ljava/lang/Thread;
    :catchall_2
    move-exception v4

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 990
    :goto_2
    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    throw v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 972
    :catchall_3
    move-exception v4

    :goto_3
    :try_start_12
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :try_start_13
    throw v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 959
    .end local v0    # "sEvent":Lcom/sec/erisclient/ErisEvent;
    .end local v1    # "sData":Lcom/sec/erisclient/ErisEventData;
    .end local v2    # "connectionID":I
    .end local p1    # "event":Lcom/sec/erisclient/ErisEvent;
    .end local p2    # "data":Lcom/sec/erisclient/ErisEventData;
    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private updateServiceStatus(Lcom/sec/erisclient/ErisError;)V
    .locals 4
    .param p1, "error"    # Lcom/sec/erisclient/ErisError;

    .line 1031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendServiceReport() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ErisClient"

    invoke-static {v1, v0}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    move-object v0, p1

    .line 1034
    .local v0, "event":Lcom/sec/erisclient/ErisError;
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient;->mListener:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    .line 1035
    return-void

    .line 1037
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/erisclient/IErisListener;

    .line 1038
    .local v1, "iListener":Lcom/sec/erisclient/IErisListener;
    if-nez v1, :cond_1

    .line 1039
    return-void

    .line 1041
    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/erisclient/ErisClient$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/sec/erisclient/ErisClient$3;-><init>(Lcom/sec/erisclient/ErisClient;Lcom/sec/erisclient/IErisListener;Lcom/sec/erisclient/ErisError;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1048
    .local v2, "updateThread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1049
    return-void
.end method

.method private verifyConnection(Lcom/sec/erisclient/IPSecConnection;)Lcom/sec/erisclient/ErisError;
    .locals 2
    .param p1, "connection"    # Lcom/sec/erisclient/IPSecConnection;

    .line 429
    if-nez p1, :cond_0

    .line 430
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PARAMETER:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 431
    :cond_0
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getGateway()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 432
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_GW_ADDRESS:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 433
    :cond_1
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getHostAuthentication()Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    move-result-object v0

    if-nez v0, :cond_2

    .line 434
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_HOST_AUTHENTICATION:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 435
    :cond_2
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getHostAuthentication()Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;->PRE_SHARED:Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 438
    :cond_3
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getHostAuthentication()Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;->EAP:Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 443
    :cond_4
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getHostAuthentication()Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;->PUBLIC_KEY:Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    .line 448
    :goto_0
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getTunnelMode()Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;

    move-result-object v0

    if-nez v0, :cond_5

    .line 449
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_TUNNEL_MODE:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 450
    :cond_5
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getOwnIdentityType()Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

    move-result-object v0

    if-nez v0, :cond_6

    .line 451
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_OWN_IDENTITY:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 452
    :cond_6
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getRemoteIdentityType()Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

    move-result-object v0

    if-nez v0, :cond_7

    .line 453
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_REMOTE_IDENTITY:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 454
    :cond_7
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getIkeLife()I

    move-result v0

    if-gez v0, :cond_8

    .line 455
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_LIFETIME:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 456
    :cond_8
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 457
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_DH_GROUP:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 458
    :cond_9
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getIkeEncryption()I

    move-result v0

    if-gtz v0, :cond_a

    .line 459
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_ENCRYPTION:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 460
    :cond_a
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getIkeIntegrity()I

    move-result v0

    if-gtz v0, :cond_b

    .line 461
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_INTEGRITY:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 462
    :cond_b
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getIkeVersion()Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;

    move-result-object v0

    if-nez v0, :cond_c

    .line 463
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_VERSION:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 464
    :cond_c
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getIkeWindowSize()I

    move-result v0

    if-gez v0, :cond_d

    .line 465
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_WINDOW_SIZE:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 466
    :cond_d
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getIPsecLifeType()Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getIPsecLife()I

    move-result v0

    if-gez v0, :cond_e

    goto :goto_1

    .line 468
    :cond_e
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getIPsecEncryption()I

    move-result v0

    if-gtz v0, :cond_f

    .line 469
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IPSEC_ENCRYPTION:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 470
    :cond_f
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getIPsecIntegrity()I

    move-result v0

    if-gtz v0, :cond_10

    .line 471
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IPSEC_INTEGRITY:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 473
    :cond_10
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getPerfectForwardSecrecy()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 474
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getIPsecGroup()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 475
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PFS_DH_GROUP:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 477
    :cond_11
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getInterface()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    .line 478
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_INTERFACE:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 479
    :cond_12
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getVirtualAdapterName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    .line 480
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_VIRTUAL_ADAPTER_NAME:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 481
    :cond_13
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getNattKeepaliveTimeout()I

    move-result v0

    if-gez v0, :cond_14

    .line 482
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_NATT_KEEPALIVE_TIMEOUT:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 483
    :cond_14
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getDpdTimeout()I

    move-result v0

    if-gez v0, :cond_15

    .line 484
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_DPD_TIMEOUT:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 485
    :cond_15
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    .line 486
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_INTERNAL_SUBNET:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 491
    :cond_16
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->isCaCertOk()Z

    move-result v0

    if-nez v0, :cond_17

    .line 492
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_CA_CERTIFICATE:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 493
    :cond_17
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    return-object v0

    .line 467
    :cond_18
    :goto_1
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IPSEC_LIFETIME:Lcom/sec/erisclient/ErisError;

    return-object v0
.end method


# virtual methods
.method public checkConnection(Lcom/sec/erisclient/IPSecConnection;I)Lcom/sec/erisclient/ErisError;
    .locals 7
    .param p1, "connection"    # Lcom/sec/erisclient/IPSecConnection;
    .param p2, "timeout"    # I

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkConnection() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ErisClient"

    invoke-static {v1, v0}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    .line 587
    .local v0, "result":Lcom/sec/erisclient/ErisError;
    sget-object v1, Lcom/sec/erisclient/ErisClient;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 588
    :try_start_0
    iget-object v2, p0, Lcom/sec/erisclient/ErisClient;->mDaemonRunner:Lcom/sec/erisclient/ErisClient$DaemonRunner;

    if-nez v2, :cond_0

    .line 589
    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_DAEMON_STOPPED:Lcom/sec/erisclient/ErisError;

    move-object v0, v2

    .line 590
    const-string v2, "ErisClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkConnection() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    monitor-exit v1

    return-object v0

    .line 593
    :cond_0
    if-nez p1, :cond_1

    .line 594
    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_NO_CONNECTION:Lcom/sec/erisclient/ErisError;

    move-object v0, v2

    .line 595
    const-string v2, "ErisClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkConnection() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (null connection)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    monitor-exit v1

    return-object v0

    .line 598
    :cond_1
    iget-object v2, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 599
    :try_start_1
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_4

    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 604
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 605
    :try_start_2
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getConnID()I

    move-result v2

    .line 606
    .local v2, "connectionID":I
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->mTimeoutThread:[Lcom/sec/erisclient/ErisClient$TimeoutThread;

    aget-object v3, v3, v2

    if-nez v3, :cond_3

    if-eqz p2, :cond_3

    .line 607
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->mTimeoutThread:[Lcom/sec/erisclient/ErisClient$TimeoutThread;

    new-instance v4, Lcom/sec/erisclient/ErisClient$TimeoutThread;

    int-to-long v5, p2

    invoke-direct {v4, p0, p1, v5, v6}, Lcom/sec/erisclient/ErisClient$TimeoutThread;-><init>(Lcom/sec/erisclient/ErisClient;Lcom/sec/erisclient/IPSecConnection;J)V

    aput-object v4, v3, v2

    .line 608
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->mTimeoutThread:[Lcom/sec/erisclient/ErisClient$TimeoutThread;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/sec/erisclient/ErisClient$TimeoutThread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 611
    :cond_3
    const/4 v3, 0x3

    :try_start_3
    invoke-direct {p0, v3, v2, p2}, Lcom/sec/erisclient/ErisClient;->sendRequestToDaemon(III)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 615
    nop

    .line 616
    :try_start_4
    monitor-exit v1

    .line 617
    return-object v0

    .line 612
    :catch_0
    move-exception v3

    .line 613
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 614
    sget-object v4, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v4

    .line 600
    .end local v2    # "connectionID":I
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_0
    :try_start_5
    sget-object v3, Lcom/sec/erisclient/ErisError;->ERIS_NOT_CONNECTED:Lcom/sec/erisclient/ErisError;

    move-object v0, v3

    .line 601
    const-string v3, "ErisClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkConnection() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (connection not connected)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-object v0

    .line 604
    :catchall_0
    move-exception v3

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v0    # "result":Lcom/sec/erisclient/ErisError;
    .end local p0    # "this":Lcom/sec/erisclient/ErisClient;
    .end local p1    # "connection":Lcom/sec/erisclient/IPSecConnection;
    .end local p2    # "timeout":I
    :try_start_8
    throw v3

    .line 616
    .restart local v0    # "result":Lcom/sec/erisclient/ErisError;
    .restart local p0    # "this":Lcom/sec/erisclient/ErisClient;
    .restart local p1    # "connection":Lcom/sec/erisclient/IPSecConnection;
    .restart local p2    # "timeout":I
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2
.end method

.method public checkNatKeepAlive()Lcom/sec/erisclient/ErisError;
    .locals 8

    .line 633
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    .line 634
    .local v0, "result":Lcom/sec/erisclient/ErisError;
    sget-object v1, Lcom/sec/erisclient/ErisClient;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 635
    :try_start_0
    iget-object v2, p0, Lcom/sec/erisclient/ErisClient;->mDaemonRunner:Lcom/sec/erisclient/ErisClient$DaemonRunner;

    if-nez v2, :cond_0

    .line 636
    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_DAEMON_STOPPED:Lcom/sec/erisclient/ErisError;

    move-object v0, v2

    .line 637
    const-string v2, "ErisClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkNatKeepAlive() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 642
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/erisclient/ErisClient;->mNatKeepaliveMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 643
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 644
    .local v4, "cid":I
    const-string v5, "ErisClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trigger keepalive for cid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-direct {p0, v5, v4, v6}, Lcom/sec/erisclient/ErisClient;->sendRequestToDaemon(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 646
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "cid":I
    goto :goto_0

    .line 650
    :cond_1
    nop

    .line 651
    :try_start_2
    monitor-exit v1

    .line 652
    return-object v0

    .line 647
    :catch_0
    move-exception v2

    .line 648
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 649
    sget-object v3, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    monitor-exit v1

    return-object v3

    .line 651
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public connect(Lcom/sec/erisclient/IPSecConnection;)Lcom/sec/erisclient/ErisError;
    .locals 8
    .param p1, "connection"    # Lcom/sec/erisclient/IPSecConnection;

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ErisClient"

    invoke-static {v1, v0}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    .line 499
    .local v0, "result":Lcom/sec/erisclient/ErisError;
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 500
    .local v1, "connManager":Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 501
    .local v3, "mWifi":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 502
    const-string v2, "ErisClient"

    const-string v4, "Wifi is not connected"

    invoke-static {v2, v4}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    return-object v2

    .line 505
    :cond_0
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getGateway()Ljava/lang/String;

    move-result-object v4

    const-string v5, "wlan"

    invoke-direct {p0, v5, v4}, Lcom/sec/erisclient/ErisClient;->getWlanAddresses(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 506
    .local v4, "hostAddresses":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/erisclient/ErisClient;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/sec/epdg/EpdgUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/sec/erisclient/IPSecConnection;->setDeviceImei(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/erisclient/ErisClient;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/sec/epdg/EpdgUtils;->getImeiSV(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/sec/erisclient/IPSecConnection;->setDeviceImeiSV(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 509
    const-string v2, "ErisClient"

    const-string v5, "hostAddresses is empty!"

    invoke-static {v2, v5}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    return-object v2

    .line 512
    :cond_1
    invoke-virtual {p1, v4}, Lcom/sec/erisclient/IPSecConnection;->setHostAddress(Ljava/lang/String;)V

    .line 513
    sget-object v5, Lcom/sec/erisclient/ErisClient;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 514
    :try_start_0
    iget-object v6, p0, Lcom/sec/erisclient/ErisClient;->mDaemonRunner:Lcom/sec/erisclient/ErisClient$DaemonRunner;

    if-nez v6, :cond_2

    .line 515
    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_DAEMON_STOPPED:Lcom/sec/erisclient/ErisError;

    monitor-exit v5

    return-object v2

    .line 516
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/erisclient/ErisClient;->verifyConnection(Lcom/sec/erisclient/IPSecConnection;)Lcom/sec/erisclient/ErisError;

    move-result-object v6

    move-object v0, v6

    .line 517
    sget-object v6, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    if-eq v0, v6, :cond_3

    .line 518
    const-string v2, "ErisClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connect() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    monitor-exit v5

    return-object v0

    .line 521
    :cond_3
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 522
    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_ALREADY_CONNECTED:Lcom/sec/erisclient/ErisError;

    move-object v0, v2

    .line 523
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object v0

    .line 526
    :cond_4
    :try_start_1
    invoke-direct {p0, v2, p1}, Lcom/sec/erisclient/ErisClient;->sendRequestToDaemon(ILcom/sec/erisclient/IPSecConnection;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 533
    nop

    .line 534
    :try_start_2
    iget-object v2, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 535
    :try_start_3
    iget-object v6, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getConnID()I

    move-result v7

    invoke-virtual {v6, v7, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 536
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 537
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 539
    return-object v0

    .line 536
    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v0    # "result":Lcom/sec/erisclient/ErisError;
    .end local v1    # "connManager":Landroid/net/ConnectivityManager;
    .end local v3    # "mWifi":Landroid/net/NetworkInfo;
    .end local v4    # "hostAddresses":Ljava/lang/String;
    .end local p0    # "this":Lcom/sec/erisclient/ErisClient;
    .end local p1    # "connection":Lcom/sec/erisclient/IPSecConnection;
    :try_start_6
    throw v6

    .line 530
    .restart local v0    # "result":Lcom/sec/erisclient/ErisError;
    .restart local v1    # "connManager":Landroid/net/ConnectivityManager;
    .restart local v3    # "mWifi":Landroid/net/NetworkInfo;
    .restart local v4    # "hostAddresses":Ljava/lang/String;
    .restart local p0    # "this":Lcom/sec/erisclient/ErisClient;
    .restart local p1    # "connection":Lcom/sec/erisclient/IPSecConnection;
    :catch_0
    move-exception v2

    .line 531
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 532
    sget-object v6, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    monitor-exit v5

    return-object v6

    .line 527
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 528
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 529
    sget-object v6, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    monitor-exit v5

    return-object v6

    .line 537
    .end local v2    # "e":Lorg/json/JSONException;
    :catchall_1
    move-exception v2

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2
.end method

.method public deInitialize(Z)V
    .locals 2
    .param p1, "isDeinit"    # Z

    .line 397
    iput-boolean p1, p0, Lcom/sec/erisclient/ErisClient;->mIsDeinit:Z

    .line 398
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 399
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient;->alarmMgr:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/sec/erisclient/ErisClient;->stopService()V

    .line 402
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/erisclient/ErisClient;->mInstance:Lcom/sec/erisclient/ErisClient;

    .line 403
    return-void
.end method

.method public disconnect(Lcom/sec/erisclient/IPSecConnection;)Lcom/sec/erisclient/ErisError;
    .locals 2
    .param p1, "connection"    # Lcom/sec/erisclient/IPSecConnection;

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnect() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ErisClient"

    invoke-static {v1, v0}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/sec/erisclient/ErisClient;->sendDisconnectRequest(Lcom/sec/erisclient/IPSecConnection;I)Lcom/sec/erisclient/ErisError;

    move-result-object v0

    return-object v0
.end method

.method public getEnableHwKeepalive()Z
    .locals 1

    .line 1226
    iget-boolean v0, p0, Lcom/sec/erisclient/ErisClient;->mEnableHwKeepalive:Z

    return v0
.end method

.method public declared-synchronized getNattKeepAliveTimeout()I
    .locals 1

    monitor-enter p0

    .line 629
    :try_start_0
    iget v0, p0, Lcom/sec/erisclient/ErisClient;->mNatKeepaliveTimeout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 629
    .end local p0    # "this":Lcom/sec/erisclient/ErisClient;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setListener(Lcom/sec/erisclient/IErisListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/erisclient/IErisListener;

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setListener() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ErisClient"

    invoke-static {v1, v0}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    if-eqz p1, :cond_0

    .line 330
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/erisclient/ErisClient;->mListener:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 334
    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized setNattKeepAliveTimeout(I)Lcom/sec/erisclient/ErisError;
    .locals 1
    .param p1, "timeout"    # I

    monitor-enter p0

    .line 621
    if-gtz p1, :cond_0

    .line 622
    :try_start_0
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_NATT_KEEPALIVE_TIMEOUT:Lcom/sec/erisclient/ErisError;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 624
    .end local p0    # "this":Lcom/sec/erisclient/ErisClient;
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/sec/erisclient/ErisClient;->mNatKeepaliveTimeout:I

    .line 625
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 620
    .end local p1    # "timeout":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSwNatKeepalive(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "gateway"    # Ljava/lang/String;
    .param p2, "cid"    # I
    .param p3, "on"    # Z

    .line 180
    const-string v0, "ErisClient"

    if-eqz p3, :cond_2

    .line 182
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient;->mNatKeepaliveMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 184
    const-string v1, "NAT keepalive alarm already set, ignored"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void

    .line 187
    :cond_0
    const-string v1, "Set NAT keepalive alarm with SW"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient;->mNatKeepaliveMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient;->mNatKeepaliveMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v0, "alarmIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const-string v1, "com.sec.erisclient.natkeepalive"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 196
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/erisclient/ErisClient;->pendingIntent:Landroid/app/PendingIntent;

    .line 197
    invoke-direct {p0}, Lcom/sec/erisclient/ErisClient;->RepeatNatKeepaliveAlarm()V

    .line 198
    .end local v0    # "alarmIntent":Landroid/content/Intent;
    goto :goto_0

    .line 201
    :cond_2
    const-string v1, "Set NAT keepalive alarm off with SW"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    .line 203
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient;->alarmMgr:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient;->mNatKeepaliveMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 207
    :goto_0
    return-void
.end method

.method public silentDisconnect(Lcom/sec/erisclient/IPSecConnection;)Lcom/sec/erisclient/ErisError;
    .locals 2
    .param p1, "connection"    # Lcom/sec/erisclient/IPSecConnection;

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "silentDisconnect() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ErisClient"

    invoke-static {v1, v0}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lcom/sec/erisclient/ErisClient;->sendDisconnectRequest(Lcom/sec/erisclient/IPSecConnection;I)Lcom/sec/erisclient/ErisError;

    move-result-object v0

    return-object v0
.end method

.method public startEspCheck(Lcom/sec/erisclient/IPSecConnection;I)Lcom/sec/erisclient/ErisError;
    .locals 6
    .param p1, "connection"    # Lcom/sec/erisclient/IPSecConnection;
    .param p2, "interval"    # I

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startEspCheck() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ErisClient"

    invoke-static {v1, v0}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    .line 658
    .local v0, "result":Lcom/sec/erisclient/ErisError;
    sget-object v1, Lcom/sec/erisclient/ErisClient;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 659
    :try_start_0
    iget-object v2, p0, Lcom/sec/erisclient/ErisClient;->mDaemonRunner:Lcom/sec/erisclient/ErisClient$DaemonRunner;

    if-nez v2, :cond_0

    .line 660
    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_DAEMON_STOPPED:Lcom/sec/erisclient/ErisError;

    move-object v0, v2

    .line 661
    const-string v2, "ErisClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startEspCheck() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    monitor-exit v1

    return-object v0

    .line 664
    :cond_0
    if-nez p1, :cond_1

    .line 665
    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_NO_CONNECTION:Lcom/sec/erisclient/ErisError;

    move-object v0, v2

    .line 666
    const-string v2, "ErisClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startEspCheck() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (null connection)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    monitor-exit v1

    return-object v0

    .line 669
    :cond_1
    iget-object v2, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 670
    :try_start_1
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_3

    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 675
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 677
    const/4 v2, 0x7

    :try_start_2
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getConnID()I

    move-result v3

    invoke-direct {p0, v2, v3, p2}, Lcom/sec/erisclient/ErisClient;->sendRequestToDaemon(III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 681
    nop

    .line 682
    :try_start_3
    monitor-exit v1

    .line 683
    return-object v0

    .line 678
    :catch_0
    move-exception v2

    .line 679
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 680
    sget-object v3, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v3

    .line 671
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_0
    :try_start_4
    sget-object v3, Lcom/sec/erisclient/ErisError;->ERIS_NOT_CONNECTED:Lcom/sec/erisclient/ErisError;

    move-object v0, v3

    .line 672
    const-string v3, "ErisClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startEspCheck() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (connection not connected)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-object v0

    .line 675
    :catchall_0
    move-exception v3

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v0    # "result":Lcom/sec/erisclient/ErisError;
    .end local p0    # "this":Lcom/sec/erisclient/ErisClient;
    .end local p1    # "connection":Lcom/sec/erisclient/IPSecConnection;
    .end local p2    # "interval":I
    :try_start_7
    throw v3

    .line 682
    .restart local v0    # "result":Lcom/sec/erisclient/ErisError;
    .restart local p0    # "this":Lcom/sec/erisclient/ErisClient;
    .restart local p1    # "connection":Lcom/sec/erisclient/IPSecConnection;
    .restart local p2    # "interval":I
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v2
.end method

.method public startService()V
    .locals 5

    .line 342
    const-string v0, "ErisClient"

    const-string v1, "startService()"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-boolean v0, p0, Lcom/sec/erisclient/ErisClient;->mIsDeinit:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 344
    const-string v0, "ErisClient"

    const-string v1, "Client stopped by deinitialization, dont restart"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-void

    .line 347
    :cond_0
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    iput-object v0, p0, Lcom/sec/erisclient/ErisClient;->mSocket:Landroid/net/LocalSocket;

    .line 348
    sget-object v0, Lcom/sec/erisclient/ErisClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient;->mDaemonRunner:Lcom/sec/erisclient/ErisClient$DaemonRunner;

    if-nez v1, :cond_1

    .line 350
    new-instance v1, Lcom/sec/erisclient/ErisClient$DaemonRunner;

    const-string v2, "eris"

    invoke-direct {v1, p0, v2}, Lcom/sec/erisclient/ErisClient$DaemonRunner;-><init>(Lcom/sec/erisclient/ErisClient;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/erisclient/ErisClient;->mDaemonRunner:Lcom/sec/erisclient/ErisClient$DaemonRunner;

    .line 351
    invoke-virtual {v1}, Lcom/sec/erisclient/ErisClient$DaemonRunner;->start()V

    .line 352
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/erisclient/ErisClient;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.sec.erisclient.natkeepalive"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 354
    :cond_1
    monitor-exit v0

    .line 355
    return-void

    .line 354
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startService(Z)V
    .locals 1
    .param p1, "byService"    # Z

    .line 337
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/sec/erisclient/ErisClient;->mIsDeinit:Z

    .line 338
    invoke-virtual {p0}, Lcom/sec/erisclient/ErisClient;->startService()V

    .line 339
    return-void
.end method

.method public stopEspCheck(Lcom/sec/erisclient/IPSecConnection;)Lcom/sec/erisclient/ErisError;
    .locals 6
    .param p1, "connection"    # Lcom/sec/erisclient/IPSecConnection;

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopEspCheck() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ErisClient"

    invoke-static {v1, v0}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    .line 689
    .local v0, "result":Lcom/sec/erisclient/ErisError;
    sget-object v1, Lcom/sec/erisclient/ErisClient;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 690
    :try_start_0
    iget-object v2, p0, Lcom/sec/erisclient/ErisClient;->mDaemonRunner:Lcom/sec/erisclient/ErisClient$DaemonRunner;

    if-nez v2, :cond_0

    .line 691
    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_DAEMON_STOPPED:Lcom/sec/erisclient/ErisError;

    move-object v0, v2

    .line 692
    const-string v2, "ErisClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMonitoringEsp() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    monitor-exit v1

    return-object v0

    .line 695
    :cond_0
    if-nez p1, :cond_1

    .line 696
    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_NO_CONNECTION:Lcom/sec/erisclient/ErisError;

    move-object v0, v2

    .line 697
    const-string v2, "ErisClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopEspCheck() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (null connection)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    monitor-exit v1

    return-object v0

    .line 700
    :cond_1
    iget-object v2, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 701
    :try_start_1
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_3

    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 706
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 708
    const/16 v2, 0x8

    :try_start_2
    invoke-virtual {p1}, Lcom/sec/erisclient/IPSecConnection;->getConnID()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/erisclient/ErisClient;->sendRequestToDaemon(III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 712
    nop

    .line 713
    :try_start_3
    monitor-exit v1

    .line 714
    return-object v0

    .line 709
    :catch_0
    move-exception v2

    .line 710
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 711
    sget-object v3, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v3

    .line 702
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_0
    :try_start_4
    sget-object v3, Lcom/sec/erisclient/ErisError;->ERIS_NOT_CONNECTED:Lcom/sec/erisclient/ErisError;

    move-object v0, v3

    .line 703
    const-string v3, "ErisClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopEspCheck() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (connection not connected)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-object v0

    .line 706
    :catchall_0
    move-exception v3

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v0    # "result":Lcom/sec/erisclient/ErisError;
    .end local p0    # "this":Lcom/sec/erisclient/ErisClient;
    .end local p1    # "connection":Lcom/sec/erisclient/IPSecConnection;
    :try_start_7
    throw v3

    .line 713
    .restart local v0    # "result":Lcom/sec/erisclient/ErisError;
    .restart local p0    # "this":Lcom/sec/erisclient/ErisClient;
    .restart local p1    # "connection":Lcom/sec/erisclient/IPSecConnection;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v2
.end method

.method public stopService()V
    .locals 8

    .line 358
    const-string v0, "ErisClient"

    const-string v1, "stopService()"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    sget-object v0, Lcom/sec/erisclient/ErisClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 365
    :try_start_1
    iget-object v2, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    .line 366
    .local v2, "activeConnections":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/erisclient/IPSecConnection;>;"
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 368
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v1, v3, :cond_2

    .line 369
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 370
    .local v3, "key":I
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/erisclient/IPSecConnection;

    .line 371
    .local v5, "conn":Lcom/sec/erisclient/IPSecConnection;
    if-nez v5, :cond_0

    .line 372
    goto :goto_1

    .line 373
    :cond_0
    invoke-virtual {v5}, Lcom/sec/erisclient/IPSecConnection;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 374
    invoke-virtual {v5, v4}, Lcom/sec/erisclient/IPSecConnection;->setConnected(Z)V

    .line 375
    new-instance v6, Lcom/sec/erisclient/ErisEventData;

    sget-object v7, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    invoke-direct {v6, v5, v7, v4}, Lcom/sec/erisclient/ErisEventData;-><init>(Lcom/sec/erisclient/IPSecConnection;Lcom/sec/erisclient/ErisError;I)V

    move-object v4, v6

    .line 376
    .local v4, "data":Lcom/sec/erisclient/ErisEventData;
    sget-object v6, Lcom/sec/erisclient/ErisEvent;->EVENT_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    invoke-direct {p0, v6, v4}, Lcom/sec/erisclient/ErisClient;->updateConnectionStatus(Lcom/sec/erisclient/ErisEvent;Lcom/sec/erisclient/ErisEventData;)V

    .line 368
    .end local v3    # "key":I
    .end local v4    # "data":Lcom/sec/erisclient/ErisEventData;
    .end local v5    # "conn":Lcom/sec/erisclient/IPSecConnection;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 380
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 381
    :try_start_3
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->mActiveConnections:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 382
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 383
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, v1, v4, v4}, Lcom/sec/erisclient/ErisClient;->SetNatKeepalive(Ljava/lang/String;IZ)V

    .line 384
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->mDaemonRunner:Lcom/sec/erisclient/ErisClient$DaemonRunner;

    if-eqz v3, :cond_3

    .line 385
    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->mDaemonRunner:Lcom/sec/erisclient/ErisClient$DaemonRunner;

    invoke-virtual {v3}, Lcom/sec/erisclient/ErisClient$DaemonRunner;->exit()V

    .line 386
    iput-object v1, p0, Lcom/sec/erisclient/ErisClient;->mDaemonRunner:Lcom/sec/erisclient/ErisClient$DaemonRunner;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 388
    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/sec/erisclient/ErisClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/erisclient/ErisClient;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 392
    goto :goto_2

    .line 389
    :catch_0
    move-exception v1

    .line 390
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_6
    const-string v3, "ErisClient"

    const-string v4, "IllegalArgumentException"

    invoke-static {v3, v4}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 393
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "activeConnections":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/erisclient/IPSecConnection;>;"
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 394
    return-void

    .line 382
    .restart local v2    # "activeConnections":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/erisclient/IPSecConnection;>;"
    :catchall_0
    move-exception v3

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local p0    # "this":Lcom/sec/erisclient/ErisClient;
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 366
    .end local v2    # "activeConnections":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/erisclient/IPSecConnection;>;"
    .restart local p0    # "this":Lcom/sec/erisclient/ErisClient;
    :catchall_1
    move-exception v2

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local p0    # "this":Lcom/sec/erisclient/ErisClient;
    :try_start_a
    throw v2

    .line 393
    .restart local p0    # "this":Lcom/sec/erisclient/ErisClient;
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v1
.end method
