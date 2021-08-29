.class public Lcom/sec/epdg/IPSecAdapterForEris;
.super Ljava/lang/Object;
.source "IPSecAdapterForEris.java"

# interfaces
.implements Lcom/sec/erisclient/IErisListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;,
        Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;,
        Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_DUMMY_EVENT:I = 0x1869f

.field private static final IPSEC_ADAPTER_CONNECTION_STATUS_CHANGED:I = 0x2

.field private static final IPSEC_ADAPTER_EVENT_CHECK_CONNECTION_REQ:I = 0x5

.field private static final IPSEC_ADAPTER_EVENT_CONNECT_REQ:I = 0x3

.field private static final IPSEC_ADAPTER_EVENT_DISCONNECT_REQ:I = 0x4

.field private static final IPSEC_ADAPTER_EVENT_LOCAL_DISCONNECT_REQ:I = 0x8

.field private static final IPSEC_ADAPTER_EVENT_START_CHECK_ESP_LOSS_REQ:I = 0x6

.field private static final IPSEC_ADAPTER_EVENT_STOP_CHECK_ESP_LOSS_REQ:I = 0x7

.field private static final IPSEC_ADAPTER_SERVICE_STATUS_CHANGED:I = 0x1

.field private static IPV6PREFIX:Ljava/lang/String;

.field private static mConnectionDb:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/erisclient/IPSecConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static mIPsecClient:Lcom/sec/erisclient/ErisClient;

.field protected static mInstance:Lcom/sec/epdg/IPSecAdapterForEris;

.field private static mbStarted:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected mHandler:Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field private mOemHandler:[Landroid/os/Handler;

.field private mPowerMgr:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->mConnectionDb:Ljava/util/HashMap;

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/epdg/IPSecAdapterForEris;->mbStarted:Z

    .line 74
    const-string v0, "/64"

    sput-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->IPV6PREFIX:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "[IPSECADAPTER_ERIS]"

    iput-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mHandlerThread:Landroid/os/HandlerThread;

    .line 70
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/os/Handler;

    iput-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mOemHandler:[Landroid/os/Handler;

    .line 71
    iput-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mContext:Landroid/content/Context;

    .line 80
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IpSecAdapterThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mHandlerThread:Landroid/os/HandlerThread;

    .line 81
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v0, Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;

    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;-><init>(Lcom/sec/epdg/IPSecAdapterForEris;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mHandler:Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;

    .line 83
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mPowerMgr:Landroid/os/PowerManager;

    .line 84
    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 85
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 86
    iput-object p1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mContext:Landroid/content/Context;

    .line 87
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapterForEris;->initIpSecClient(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method static synthetic access$1100(Lcom/sec/epdg/IPSecAdapterForEris;Lcom/sec/erisclient/ErisError;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapterForEris;
    .param p1, "x1"    # Lcom/sec/erisclient/ErisError;

    .line 46
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapterForEris;->onIpSecAdapterServiceStatusChanged(Lcom/sec/erisclient/ErisError;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/epdg/IPSecAdapterForEris;Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapterForEris;
    .param p1, "x1"    # Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;

    .line 46
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapterForEris;->onIpSecAdapterConnectionStatusChanged(Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/epdg/IPSecAdapterForEris;Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapterForEris;
    .param p1, "x1"    # Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/epdg/IPSecAdapterForEris;->onConnectRequestRecv(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/epdg/IPSecAdapterForEris;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapterForEris;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/IPSecAdapterForEris;->onDisconnectRequestRecv(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/epdg/IPSecAdapterForEris;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapterForEris;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/IPSecAdapterForEris;->onLocalDisconnectRequestRecv(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/epdg/IPSecAdapterForEris;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapterForEris;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/IPSecAdapterForEris;->onCheckConnectionRequestRecv(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/epdg/IPSecAdapterForEris;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapterForEris;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/IPSecAdapterForEris;->onStartCheckEspRequestRecv(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/epdg/IPSecAdapterForEris;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapterForEris;
    .param p1, "x1"    # I

    .line 46
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapterForEris;->onStopCheckEspRequestRecv(I)V

    return-void
.end method

.method private addIPsecConnectionDb(ILcom/sec/erisclient/IPSecConnection;)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "connection"    # Lcom/sec/erisclient/IPSecConnection;

    .line 192
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added IPSecConnection to DB cid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->mConnectionDb:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void
.end method

.method private getCidfromConnDb(Lcom/sec/erisclient/IPSecConnection;)I
    .locals 4
    .param p1, "conn"    # Lcom/sec/erisclient/IPSecConnection;

    .line 681
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrieving context ID from the DataBase : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->mConnectionDb:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 683
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 685
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 686
    .local v1, "key":Ljava/lang/Integer;
    sget-object v2, Lcom/sec/epdg/IPSecAdapterForEris;->mConnectionDb:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/erisclient/IPSecConnection;

    .line 687
    .local v2, "ipsecconn":Lcom/sec/erisclient/IPSecConnection;
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 688
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 690
    .end local v1    # "key":Ljava/lang/Integer;
    .end local v2    # "ipsecconn":Lcom/sec/erisclient/IPSecConnection;
    :cond_0
    goto :goto_0

    .line 691
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    const-string v2, "Retrieval getCidfromConnDb failed"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const/4 v1, -0x1

    return v1
.end method

.method private getConnectionInformation(IILjava/lang/String;Ljava/lang/String;)Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;
    .locals 20
    .param p1, "phoneId"    # I
    .param p2, "cid"    # I
    .param p3, "snssai"    # Ljava/lang/String;
    .param p4, "plmnid"    # Ljava/lang/String;

    .line 627
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectionInformation():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    sget-object v2, Lcom/sec/epdg/IPSecAdapterForEris;->mConnectionDb:Ljava/util/HashMap;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 629
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/erisclient/IPSecConnection;

    .line 630
    .local v2, "conn":Lcom/sec/erisclient/IPSecConnection;
    if-nez v2, :cond_0

    .line 631
    iget-object v4, v0, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    const-string v5, "getConnectionInformation(): null conn"

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    return-object v3

    .line 634
    :cond_0
    invoke-virtual {v2}, Lcom/sec/erisclient/IPSecConnection;->getState()Lcom/sec/erisclient/IPSecConnectionState;

    move-result-object v4

    .line 635
    .local v4, "state":Lcom/sec/erisclient/IPSecConnectionState;
    if-eqz v4, :cond_5

    .line 636
    invoke-virtual {v4}, Lcom/sec/erisclient/IPSecConnectionState;->getIpv6addr()Ljava/lang/String;

    move-result-object v3

    .line 637
    .local v3, "ipv6":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgUtils;->isIwlanLegacyMode()Z

    move-result v5

    if-nez v5, :cond_4

    .line 638
    if-eqz v3, :cond_4

    const-string v5, "::"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 640
    invoke-virtual {v2}, Lcom/sec/erisclient/IPSecConnection;->getRequestedRacIPv6Address()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 643
    invoke-static/range {p1 .. p1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 644
    invoke-virtual {v4}, Lcom/sec/erisclient/IPSecConnectionState;->getIpv6addr()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/sec/epdg/IPSecAdapterForEris;->getRandomIpv6Address(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 648
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    .line 649
    invoke-static/range {p1 .. p1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v5

    const-string v6, "Orange_FR"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 654
    :cond_2
    invoke-virtual {v2}, Lcom/sec/erisclient/IPSecConnection;->getRequestedRacIPv6Address()Ljava/lang/String;

    move-result-object v5

    .line 655
    .local v5, "handoverIp":Ljava/lang/String;
    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 656
    .local v6, "netmaskIdx":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 657
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 659
    :cond_3
    invoke-virtual {v4}, Lcom/sec/erisclient/IPSecConnectionState;->getIpv6addr()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v5, v7}, Lcom/sec/epdg/IPSecAdapterForEris;->isSamePrefixOfIpv6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 660
    iget-object v7, v0, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    const-string v8, "Use Same ipv6 address because prefix is matched"

    invoke-static {v7, v8}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    move-object v3, v5

    .line 667
    .end local v5    # "handoverIp":Ljava/lang/String;
    .end local v6    # "netmaskIdx":I
    :cond_4
    :goto_0
    iget-object v5, v0, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retrive Connection Params for cid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", connection:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    new-instance v5, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;

    invoke-virtual {v4}, Lcom/sec/erisclient/IPSecConnectionState;->getIpv4prefixlen()I

    move-result v8

    invoke-virtual {v4}, Lcom/sec/erisclient/IPSecConnectionState;->getIpv6prefixlen()I

    move-result v9

    invoke-virtual {v4}, Lcom/sec/erisclient/IPSecConnectionState;->getIptype()Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    move-result-object v10

    .line 669
    invoke-virtual {v4}, Lcom/sec/erisclient/IPSecConnectionState;->getIntfName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/sec/erisclient/IPSecConnectionState;->getmIpv4Dnses()[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Lcom/sec/erisclient/IPSecConnectionState;->getmIpv6Dnses()[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4}, Lcom/sec/erisclient/IPSecConnectionState;->getIpv4PcscfAddr()[Ljava/lang/String;

    move-result-object v14

    .line 670
    invoke-virtual {v4}, Lcom/sec/erisclient/IPSecConnectionState;->getIpv6PcscfAddr()[Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4}, Lcom/sec/erisclient/IPSecConnectionState;->getIpv4addr()Ljava/lang/String;

    move-result-object v16

    move-object v7, v5

    move-object/from16 v17, v3

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    invoke-direct/range {v7 .. v19}, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;-><init>(IILcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    return-object v5

    .line 673
    .end local v3    # "ipv6":Ljava/lang/String;
    :cond_5
    iget-object v5, v0, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    const-string v6, "getConnectionInformation(): null state"

    invoke-static {v5, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    return-object v3

    .line 677
    .end local v2    # "conn":Lcom/sec/erisclient/IPSecConnection;
    .end local v4    # "state":Lcom/sec/erisclient/IPSecConnectionState;
    :cond_6
    return-object v3
.end method

.method private getIWlanErrorFromErisError(Lcom/sec/erisclient/ErisError;II)Lcom/sec/epdg/ErrorCode/IWlanError;
    .locals 6
    .param p1, "error"    # Lcom/sec/erisclient/ErisError;
    .param p2, "ikeErrorCode"    # I
    .param p3, "cid"    # I

    .line 724
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    invoke-virtual {p1}, Lcom/sec/erisclient/ErisError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 785
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    new-instance v0, Lcom/sec/epdg/ErrorCode/IWlanError;

    sget-object v1, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->VENDOR_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v2}, Lcom/sec/erisclient/ErisError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/ErrorCode/IWlanError;-><init>(Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;Ljava/lang/String;)V

    return-object v0

    .line 773
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/sec/epdg/IPSecAdapterForEris;->getIpSecConnectionbyCid(I)Lcom/sec/erisclient/IPSecConnection;

    move-result-object v0

    .line 774
    .local v0, "conn":Lcom/sec/erisclient/IPSecConnection;
    if-eqz v0, :cond_0

    .line 775
    new-instance v1, Lcom/sec/epdg/ErrorCode/IWlanError;

    sget-object v2, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->IKE_NEGOTIATION_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    invoke-virtual {p1}, Lcom/sec/erisclient/ErisError;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    .line 777
    invoke-virtual {v0}, Lcom/sec/erisclient/IPSecConnection;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/Operator/EpdgOperator;->getOperatorName()Ljava/lang/String;

    move-result-object v5

    .line 776
    invoke-direct {p0, p2, v5}, Lcom/sec/epdg/IPSecAdapterForEris;->getIkeErrorFromCode(ILjava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;-><init>(I)V

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/epdg/ErrorCode/IWlanError;-><init>(Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;)V

    .line 775
    return-object v1

    .line 779
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    const-string v2, "getIWlanErrorFromErisError(): null conn"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    new-instance v1, Lcom/sec/epdg/ErrorCode/IWlanError;

    sget-object v2, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->IKE_NEGOTIATION_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    invoke-virtual {p1}, Lcom/sec/erisclient/ErisError;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    .line 781
    const-string v5, "FATAL"

    invoke-direct {p0, p2, v5}, Lcom/sec/epdg/IPSecAdapterForEris;->getIkeErrorFromCode(ILjava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;-><init>(I)V

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/epdg/ErrorCode/IWlanError;-><init>(Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;)V

    .line 780
    return-object v1

    .line 771
    .end local v0    # "conn":Lcom/sec/erisclient/IPSecConnection;
    :pswitch_1
    new-instance v0, Lcom/sec/epdg/ErrorCode/IWlanError;

    sget-object v1, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->TIMEOUT_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    invoke-virtual {p1}, Lcom/sec/erisclient/ErisError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/ErrorCode/IWlanError;-><init>(Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;Ljava/lang/String;)V

    return-object v0

    .line 768
    :pswitch_2
    new-instance v0, Lcom/sec/epdg/ErrorCode/IWlanError;

    sget-object v1, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->SERVER_CERT_VALIDATION_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    invoke-virtual {p1}, Lcom/sec/erisclient/ErisError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/ErrorCode/IWlanError;-><init>(Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;Ljava/lang/String;)V

    return-object v0

    .line 766
    :pswitch_3
    new-instance v0, Lcom/sec/epdg/ErrorCode/IWlanError;

    sget-object v1, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->CERTIFICATION_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    invoke-virtual {p1}, Lcom/sec/erisclient/ErisError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/ErrorCode/IWlanError;-><init>(Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;Ljava/lang/String;)V

    return-object v0

    .line 762
    :pswitch_4
    new-instance v0, Lcom/sec/epdg/ErrorCode/IWlanError;

    sget-object v1, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->VENDOR_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    invoke-virtual {p1}, Lcom/sec/erisclient/ErisError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/ErrorCode/IWlanError;-><init>(Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getIWlanEventbyIPSecEvent(Lcom/sec/erisclient/ErisEvent;)I
    .locals 2
    .param p1, "event"    # Lcom/sec/erisclient/ErisEvent;

    .line 696
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisEvent:[I

    invoke-virtual {p1}, Lcom/sec/erisclient/ErisEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 712
    const v0, 0x1869f

    return v0

    .line 710
    :pswitch_0
    const/16 v0, 0x5a

    return v0

    .line 708
    :pswitch_1
    const/16 v0, 0x32

    return v0

    .line 706
    :pswitch_2
    const/16 v0, 0x31

    return v0

    .line 704
    :pswitch_3
    const/16 v0, 0x2f

    return v0

    .line 702
    :pswitch_4
    const/16 v0, 0x2e

    return v0

    .line 700
    :pswitch_5
    const/16 v0, 0x30

    return v0

    .line 698
    :pswitch_6
    const/16 v0, 0x2d

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getIkeErrorFromCode(ILjava/lang/String;)I
    .locals 4
    .param p1, "code"    # I
    .param p2, "operator"    # Ljava/lang/String;

    .line 717
    invoke-static {p1, p2}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->getRfcIkeErrorCode(ILjava/lang/String;)I

    move-result v0

    .line 719
    .local v0, "ret":I
    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ike Error : Returning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->printRfcIkeErrorCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/epdg/IPSecAdapterForEris;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/sec/epdg/IPSecAdapterForEris;

    monitor-enter v0

    .line 91
    :try_start_0
    sget-object v1, Lcom/sec/epdg/IPSecAdapterForEris;->mInstance:Lcom/sec/epdg/IPSecAdapterForEris;

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Lcom/sec/epdg/IPSecAdapterForEris;

    invoke-direct {v1, p0}, Lcom/sec/epdg/IPSecAdapterForEris;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/epdg/IPSecAdapterForEris;->mInstance:Lcom/sec/epdg/IPSecAdapterForEris;

    .line 94
    :cond_0
    sget-object v1, Lcom/sec/epdg/IPSecAdapterForEris;->mInstance:Lcom/sec/epdg/IPSecAdapterForEris;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 90
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getIpSecConnectionbyCid(I)Lcom/sec/erisclient/IPSecConnection;
    .locals 3
    .param p1, "cid"    # I

    .line 184
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->mConnectionDb:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 185
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/erisclient/IPSecConnection;

    return-object v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Cannot find ipsec conn obj : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method private getRandomIpv6Address(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "originalIp"    # Ljava/lang/String;

    .line 553
    const-string v0, "::"

    .line 555
    .local v0, "retIp":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 557
    .local v2, "originalInetAddr":Ljava/net/InetAddress;
    instance-of v3, v2, Ljava/net/Inet6Address;

    if-eqz v3, :cond_4

    .line 558
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    .line 559
    .local v3, "originalByteAddr":[B
    array-length v4, v3

    const/16 v5, 0x10

    if-ge v4, v5, :cond_0

    .line 560
    iget-object v4, p0, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    const-string v5, "getRandomIpv6Address() Invalid IPv6 Length"

    invoke-static {v1, v4, v5}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 562
    :cond_0
    const/4 v4, 0x0

    .line 564
    .local v4, "count":I
    :cond_1
    const/16 v6, 0x8

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 565
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    const-wide/high16 v11, 0x4020000000000000L    # 8.0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 564
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 567
    .end local v6    # "i":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 568
    invoke-direct {p0, v3}, Lcom/sec/epdg/IPSecAdapterForEris;->isValidIid([B)Z

    move-result v6

    if-nez v6, :cond_3

    const/16 v6, 0xa

    if-lt v4, v6, :cond_1

    .line 570
    :cond_3
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    .line 571
    .local v5, "randomInetAddr":Ljava/net/InetAddress;
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 576
    .end local v2    # "originalInetAddr":Ljava/net/InetAddress;
    .end local v3    # "originalByteAddr":[B
    .end local v4    # "count":I
    .end local v5    # "randomInetAddr":Ljava/net/InetAddress;
    :cond_4
    :goto_1
    goto :goto_2

    .line 574
    :catch_0
    move-exception v2

    .line 575
    .local v2, "e":Ljava/net/UnknownHostException;
    iget-object v3, p0, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Converting from String to InetAddress : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/epdg/Logger/Log;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 577
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :goto_2
    return-object v0
.end method

.method private initIpSecClient(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 164
    invoke-static {p1}, Lcom/sec/erisclient/ErisClient;->getInstance(Landroid/content/Context;)Lcom/sec/erisclient/ErisClient;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->mIPsecClient:Lcom/sec/erisclient/ErisClient;

    .line 165
    invoke-virtual {v0, p0}, Lcom/sec/erisclient/ErisClient;->setListener(Lcom/sec/erisclient/IErisListener;)V

    .line 166
    invoke-direct {p0}, Lcom/sec/epdg/IPSecAdapterForEris;->startService()V

    .line 168
    return-void
.end method

.method private isSamePrefixOfIpv6(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "ip1"    # Ljava/lang/String;
    .param p2, "ip2"    # Ljava/lang/String;

    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, "ip1InetAddr":Ljava/net/InetAddress;
    const/4 v1, 0x0

    .line 607
    .local v1, "ip2InetAddr":Ljava/net/InetAddress;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    move-object v0, v3

    .line 608
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 612
    nop

    .line 614
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    .line 615
    .local v3, "ip1ByteAddr":[B
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 617
    .local v4, "ip2ByteAddr":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v6, 0x8

    if-ge v5, v6, :cond_1

    .line 618
    aget-byte v6, v3, v5

    aget-byte v7, v4, v5

    if-eq v6, v7, :cond_0

    .line 619
    iget-object v6, p0, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    const-string v7, "isSamePrefixOfIpv6 : false"

    invoke-static {v6, v7}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    return v2

    .line 617
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 623
    .end local v5    # "i":I
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 609
    .end local v3    # "ip1ByteAddr":[B
    .end local v4    # "ip2ByteAddr":[B
    :catch_0
    move-exception v3

    .line 610
    .local v3, "e":Ljava/net/UnknownHostException;
    iget-object v4, p0, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    const-string v5, "Error: Converting from String to InetAddress"

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    return v2
.end method

.method private isServiceStarted()Z
    .locals 2

    .line 414
    sget-boolean v0, Lcom/sec/epdg/IPSecAdapterForEris;->mbStarted:Z

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    const-string v1, "IPSecService is not connected yet"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const/4 v0, 0x0

    return v0

    .line 418
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isValidIid([B)Z
    .locals 12
    .param p1, "ipAddr"    # [B

    .line 587
    const/16 v0, 0x8

    aget-byte v1, p1, v0

    const/16 v2, 0xff

    and-int/2addr v1, v2

    const/16 v3, 0xf

    const/16 v4, 0xe

    const/16 v5, 0xd

    const/16 v6, 0xc

    const/16 v7, 0x9

    const/4 v8, 0x0

    const/16 v9, 0xb

    const/16 v10, 0xa

    const/16 v11, 0xfd

    if-ne v1, v11, :cond_0

    aget-byte v1, p1, v7

    and-int/2addr v1, v2

    aget-byte v11, p1, v10

    and-int/2addr v11, v2

    and-int/2addr v1, v11

    aget-byte v11, p1, v9

    and-int/2addr v11, v2

    and-int/2addr v1, v11

    aget-byte v11, p1, v6

    and-int/2addr v11, v2

    and-int/2addr v1, v11

    aget-byte v11, p1, v5

    and-int/2addr v11, v2

    and-int/2addr v1, v11

    aget-byte v11, p1, v4

    and-int/2addr v11, v2

    and-int/2addr v1, v11

    if-ne v1, v2, :cond_0

    aget-byte v1, p1, v3

    and-int/2addr v1, v2

    const/16 v11, 0x80

    if-ne v1, v11, :cond_0

    .line 590
    return v8

    .line 591
    :cond_0
    aget-byte v0, p1, v0

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    aget-byte v0, p1, v7

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    .line 592
    aget-byte v0, p1, v10

    and-int/2addr v0, v2

    const/16 v1, 0x5e

    if-ne v0, v1, :cond_1

    aget-byte v0, p1, v9

    and-int/2addr v0, v2

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_1

    .line 593
    return v8

    .line 594
    :cond_1
    aget-byte v0, p1, v10

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    aget-byte v0, p1, v9

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    aget-byte v0, p1, v6

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    aget-byte v0, p1, v5

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    aget-byte v0, p1, v4

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    aget-byte v0, p1, v3

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    .line 596
    return v8

    .line 599
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private mapIwlanSettingToIPsecConnection(Lcom/sec/epdg/IWlanApnSetting;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lcom/sec/erisclient/IPSecConnection;
    .locals 27
    .param p1, "iwlanSetting"    # Lcom/sec/epdg/IWlanApnSetting;
    .param p2, "ipv4HandoverAddr"    # Ljava/lang/String;
    .param p3, "ipv6HandoverAddr"    # Ljava/lang/String;
    .param p4, "cid"    # I
    .param p5, "phoneId"    # I
    .param p6, "operator"    # Ljava/lang/String;
    .param p7, "pduSessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 198
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    const-string v7, "mapIwlanSettingToIPsecConnection(): IOException "

    const/4 v0, 0x0

    .line 199
    .local v0, "inetAddress":Ljava/net/InetAddress;
    new-instance v8, Lcom/sec/erisclient/IPSecConnection;

    invoke-direct {v8}, Lcom/sec/erisclient/IPSecConnection;-><init>()V

    .line 200
    .local v8, "connection":Lcom/sec/erisclient/IPSecConnection;
    invoke-static/range {p5 .. p5}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgServerSelection;->getEpdgServerIp()Ljava/net/InetAddress;

    move-result-object v9

    .line 201
    .end local v0    # "inetAddress":Ljava/net/InetAddress;
    .local v9, "inetAddress":Ljava/net/InetAddress;
    const/4 v0, 0x0

    .line 203
    .local v0, "hostAddress":Ljava/lang/String;
    invoke-virtual {v8, v5}, Lcom/sec/erisclient/IPSecConnection;->setConnID(I)V

    .line 204
    invoke-virtual {v8, v6}, Lcom/sec/erisclient/IPSecConnection;->setPhoneId(I)V

    .line 205
    move-object/from16 v10, p6

    invoke-virtual {v8, v10}, Lcom/sec/erisclient/IPSecConnection;->setOperator(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/sec/erisclient/IPSecConnection;->setName(Ljava/lang/String;)V

    .line 207
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p5 .. p5}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/epdg/EpdgUtils;->getEpdgInterfacePrefix()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v5, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/sec/erisclient/IPSecConnection;->setVirtualAdapterName(Ljava/lang/String;)V

    .line 209
    invoke-static/range {p5 .. p5}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/epdg/EpdgUtils;->isTmoSASupport()Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v11

    const-string v13, "ims"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 210
    invoke-virtual {v8, v12}, Lcom/sec/erisclient/IPSecConnection;->setN1Mode(Z)V

    .line 211
    move/from16 v11, p7

    invoke-virtual {v8, v11}, Lcom/sec/erisclient/IPSecConnection;->setPduSessionId(I)V

    .line 212
    iget-object v13, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    const-string v14, "set N1 mode param."

    invoke-static {v13, v14}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_0
    move/from16 v11, p7

    .line 215
    :goto_0
    const/4 v13, 0x0

    if-nez v9, :cond_1

    .line 216
    iget-object v7, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    const-string v12, "Error, wifi is connected still epdg server ip is null, returning null"

    invoke-static {v7, v12}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-object v13

    .line 220
    :cond_1
    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    .line 221
    .end local v0    # "hostAddress":Ljava/lang/String;
    .local v14, "hostAddress":Ljava/lang/String;
    iget-object v0, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "epdg fqdn is already resolved, setting gateway, epdg ip is: "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    invoke-static {v15, v0, v13}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 224
    if-eqz v14, :cond_22

    instance-of v0, v9, Ljava/net/Inet4Address;

    if-nez v0, :cond_2

    instance-of v0, v9, Ljava/net/Inet6Address;

    if-eqz v0, :cond_22

    .line 226
    :cond_2
    invoke-virtual {v8, v14}, Lcom/sec/erisclient/IPSecConnection;->setGateway(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v8, v15}, Lcom/sec/erisclient/IPSecConnection;->setUserAuthentication(Z)V

    .line 233
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpSecIpType()Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/sec/erisclient/IPSecConnection;->setSubnetType(Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;)V

    .line 236
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmOwnUriType()Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

    move-result-object v0

    iget-object v13, v1, Lcom/sec/epdg/IPSecAdapterForEris;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v13, v6}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecOwnUri(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v0, v13}, Lcom/sec/erisclient/IPSecConnection;->setOwnIdentity(Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmRemoteUriType()Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v0, v13}, Lcom/sec/erisclient/IPSecConnection;->setRemoteIdentity(Lcom/sec/epdg/DataType/IWlanEnum$IdentityType;Ljava/lang/String;)V

    .line 238
    iget-object v0, v1, Lcom/sec/epdg/IPSecAdapterForEris;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v6}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecOwnUri(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/sec/erisclient/IPSecConnection;->setUsername(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeEapType()Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/sec/erisclient/IPSecConnection;->setEapMethod(Lcom/sec/epdg/DataType/IWlanEnum$IkeEapType;)V

    .line 241
    invoke-static/range {p5 .. p5}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v13, "DIGI_HU"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    iget-object v0, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    const-string v13, "Disable EAP only authentication as per Digi Hungary\'s requirement"

    invoke-static {v0, v13}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v8, v15}, Lcom/sec/erisclient/IPSecConnection;->setEapOnlyAuthentication(Z)V

    .line 247
    :cond_3
    iget-object v0, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "PFS for: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIWlanSettingName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "is: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmPfsval()Lcom/sec/epdg/DataType/IWlanEnum$PfsState;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmPfsval()Lcom/sec/epdg/DataType/IWlanEnum$PfsState;

    move-result-object v0

    sget-object v12, Lcom/sec/epdg/DataType/IWlanEnum$PfsState;->ENABLED:Lcom/sec/epdg/DataType/IWlanEnum$PfsState;

    if-ne v0, v12, :cond_4

    .line 249
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Lcom/sec/erisclient/IPSecConnection;->setPerfectForwardSecrecy(Z)V

    const/4 v12, 0x0

    goto :goto_1

    .line 250
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmPfsval()Lcom/sec/epdg/DataType/IWlanEnum$PfsState;

    move-result-object v0

    sget-object v12, Lcom/sec/epdg/DataType/IWlanEnum$PfsState;->DISABLED:Lcom/sec/epdg/DataType/IWlanEnum$PfsState;

    if-ne v0, v12, :cond_5

    .line 251
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/sec/erisclient/IPSecConnection;->setPerfectForwardSecrecy(Z)V

    goto :goto_1

    .line 250
    :cond_5
    const/4 v12, 0x0

    .line 253
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpSecauthType()Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/sec/erisclient/IPSecConnection;->setHostAuthentication(Lcom/sec/epdg/DataType/IWlanEnum$IPSecAuthType;)V

    .line 254
    invoke-virtual {v8, v12}, Lcom/sec/erisclient/IPSecConnection;->setGlobalDnsConfiguration(Z)V

    .line 255
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIpsecsetting()Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->getmTunnelMode()Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/sec/erisclient/IPSecConnection;->setTunnelMode(Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;)V

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIpsecsetting()Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->getmIpSecEncryptionType()Ljava/util/ArrayList;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 257
    .local v12, "ipsecEnc":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 258
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v8, v0}, Lcom/sec/erisclient/IPSecConnection;->addIPsecEncryption(Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;)V

    goto :goto_2

    .line 261
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIpsecsetting()Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->getmIpSecIntegrityType()Ljava/util/ArrayList;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 262
    .local v13, "ipsecInt":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 263
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v8, v0}, Lcom/sec/erisclient/IPSecConnection;->addIPsecIntegrity(Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;)V

    goto :goto_3

    .line 266
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIpsecsetting()Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->getmIpSecDHGroup()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 267
    .local v2, "ipsecGr":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 268
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v8, v0}, Lcom/sec/erisclient/IPSecConnection;->addIPsecGroup(Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;)V

    goto :goto_4

    .line 272
    :cond_8
    move-object/from16 v16, v2

    const/4 v2, 0x1

    .end local v2    # "ipsecGr":Ljava/util/Iterator;
    .local v16, "ipsecGr":Ljava/util/Iterator;
    invoke-virtual {v8, v2}, Lcom/sec/erisclient/IPSecConnection;->setIPsecAntiReplay(Z)V

    .line 273
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIpsecsetting()Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->getmIpSecLifeTimeType()Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;

    move-result-object v0

    .line 274
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIpsecsetting()Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->getmIpSecLifeval()I

    move-result v2

    .line 273
    invoke-virtual {v8, v0, v2}, Lcom/sec/erisclient/IPSecConnection;->setIPsecLife(Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;I)V

    .line 276
    invoke-static/range {p5 .. p5}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->isUsingCaCertificate()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 277
    const/4 v2, 0x0

    .line 278
    .local v2, "caCert":Ljava/security/cert/X509Certificate;
    const/16 v17, 0x0

    .line 279
    .local v17, "input":Ljava/io/FileInputStream;
    invoke-static/range {p5 .. p5}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    move-object/from16 v18, v2

    .end local v2    # "caCert":Ljava/security/cert/X509Certificate;
    .local v18, "caCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->caCertificatePath()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "ca":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v17, v0

    .line 282
    :try_start_1
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 283
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    move-object/from16 v19, v2

    move-object/from16 v2, v17

    .end local v17    # "input":Ljava/io/FileInputStream;
    .local v2, "input":Ljava/io/FileInputStream;
    .local v19, "ca":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v17

    check-cast v17, Ljava/security/cert/X509Certificate;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 290
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v18    # "caCert":Ljava/security/cert/X509Certificate;
    .local v17, "caCert":Ljava/security/cert/X509Certificate;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 293
    move-object/from16 v20, v2

    goto :goto_5

    .line 291
    :catch_0
    move-exception v0

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    .line 292
    .local v0, "eio":Ljava/io/IOException;
    move-object/from16 v20, v2

    .end local v2    # "input":Ljava/io/FileInputStream;
    .local v20, "input":Ljava/io/FileInputStream;
    iget-object v2, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .end local v0    # "eio":Ljava/io/IOException;
    nop

    .line 296
    .end local v20    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    :goto_5
    move-object/from16 v2, v17

    move-object/from16 v17, v20

    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local v20    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_b

    .line 289
    .end local v17    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v20    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    .restart local v18    # "caCert":Ljava/security/cert/X509Certificate;
    :catchall_0
    move-exception v0

    move-object/from16 v20, v2

    move-object v2, v0

    move-object/from16 v17, v20

    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local v20    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_d

    .line 286
    .end local v20    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object/from16 v20, v2

    move-object/from16 v17, v20

    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local v20    # "input":Ljava/io/FileInputStream;
    goto :goto_6

    .line 284
    .end local v20    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    move-object/from16 v20, v2

    move-object/from16 v17, v20

    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local v20    # "input":Ljava/io/FileInputStream;
    goto :goto_7

    .line 289
    .end local v19    # "ca":Ljava/lang/String;
    .end local v20    # "input":Ljava/io/FileInputStream;
    .local v2, "ca":Ljava/lang/String;
    .local v17, "input":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v20, v17

    move-object v2, v0

    .end local v2    # "ca":Ljava/lang/String;
    .end local v17    # "input":Ljava/io/FileInputStream;
    .restart local v19    # "ca":Ljava/lang/String;
    .restart local v20    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_d

    .line 286
    .end local v19    # "ca":Ljava/lang/String;
    .end local v20    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "ca":Ljava/lang/String;
    .restart local v17    # "input":Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v20, v17

    .end local v2    # "ca":Ljava/lang/String;
    .end local v17    # "input":Ljava/io/FileInputStream;
    .restart local v19    # "ca":Ljava/lang/String;
    .restart local v20    # "input":Ljava/io/FileInputStream;
    goto :goto_6

    .line 284
    .end local v19    # "ca":Ljava/lang/String;
    .end local v20    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "ca":Ljava/lang/String;
    .restart local v17    # "input":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v20, v17

    .end local v2    # "ca":Ljava/lang/String;
    .end local v17    # "input":Ljava/io/FileInputStream;
    .restart local v19    # "ca":Ljava/lang/String;
    .restart local v20    # "input":Ljava/io/FileInputStream;
    goto :goto_7

    .line 289
    .end local v19    # "ca":Ljava/lang/String;
    .end local v20    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "ca":Ljava/lang/String;
    .restart local v17    # "input":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v0

    move-object/from16 v19, v2

    move-object v2, v0

    .end local v2    # "ca":Ljava/lang/String;
    .restart local v19    # "ca":Ljava/lang/String;
    goto/16 :goto_d

    .line 286
    .end local v19    # "ca":Ljava/lang/String;
    .restart local v2    # "ca":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v19, v2

    .line 287
    .end local v2    # "ca":Ljava/lang/String;
    .local v0, "e2":Ljava/io/IOException;
    .restart local v19    # "ca":Ljava/lang/String;
    :goto_6
    :try_start_4
    iget-object v2, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 290
    .end local v0    # "e2":Ljava/io/IOException;
    if-eqz v17, :cond_9

    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_9

    .line 291
    :catch_6
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 292
    .local v0, "eio":Ljava/io/IOException;
    iget-object v2, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_8

    .line 284
    .end local v0    # "eio":Ljava/io/IOException;
    .end local v19    # "ca":Ljava/lang/String;
    .restart local v2    # "ca":Ljava/lang/String;
    :catch_7
    move-exception v0

    move-object/from16 v19, v2

    .line 285
    .end local v2    # "ca":Ljava/lang/String;
    .local v0, "e":Ljava/security/cert/CertificateException;
    .restart local v19    # "ca":Ljava/lang/String;
    :goto_7
    :try_start_6
    iget-object v2, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mapIwlanSettingToIPsecConnection(): CertificateException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 290
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    if-eqz v17, :cond_9

    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_9

    .line 291
    :catch_8
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 292
    .local v0, "eio":Ljava/io/IOException;
    iget-object v2, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_8
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .end local v0    # "eio":Ljava/io/IOException;
    goto :goto_a

    .line 293
    :cond_9
    :goto_9
    nop

    .line 296
    :goto_a
    move-object/from16 v2, v18

    .end local v18    # "caCert":Ljava/security/cert/X509Certificate;
    .local v2, "caCert":Ljava/security/cert/X509Certificate;
    :goto_b
    if-eqz v2, :cond_b

    .line 297
    :try_start_8
    invoke-virtual {v8, v2}, Lcom/sec/erisclient/IPSecConnection;->setCaCertWithVerifying(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 298
    iget-object v0, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    const-string v5, "Success to setCaCertWithVerifying"

    invoke-static {v0, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 300
    :cond_a
    iget-object v0, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    const-string v5, "Error while setCaCertWithVerifying"

    invoke-static {v0, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_8 .. :try_end_8} :catch_9

    goto :goto_c

    .line 302
    :catch_9
    move-exception v0

    .line 303
    .local v0, "e1":Ljava/security/cert/CertificateEncodingException;
    iget-object v5, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mapIwlanSettingToIPsecConnection(): CertificateEncodingException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 304
    .end local v0    # "e1":Ljava/security/cert/CertificateEncodingException;
    :cond_b
    :goto_c
    goto :goto_10

    .line 289
    .end local v2    # "caCert":Ljava/security/cert/X509Certificate;
    .restart local v18    # "caCert":Ljava/security/cert/X509Certificate;
    :catchall_3
    move-exception v0

    move-object v2, v0

    .line 290
    :goto_d
    if-eqz v17, :cond_c

    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_e

    .line 291
    :catch_a
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 292
    .local v0, "eio":Ljava/io/IOException;
    iget-object v5, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 293
    .end local v0    # "eio":Ljava/io/IOException;
    :cond_c
    :goto_e
    nop

    .line 294
    :goto_f
    throw v2

    .line 310
    .end local v17    # "input":Ljava/io/FileInputStream;
    .end local v18    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v19    # "ca":Ljava/lang/String;
    :cond_d
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeversion()Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/sec/erisclient/IPSecConnection;->setIkeVersion(Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;)V

    .line 311
    invoke-static/range {p5 .. p5}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v2, "Zain_KW"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 312
    iget-object v0, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    const-string v2, "Change PRF algorithm as per Zain Kuwait\'s requirement"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;->IKE_PRF_HMAC_MD5:Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    invoke-virtual {v8, v0}, Lcom/sec/erisclient/IPSecConnection;->setIkePrfAlgo(Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;)V

    .line 315
    :cond_e
    invoke-static/range {p5 .. p5}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v2, "MOBILY_SA"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 316
    iget-object v0, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    const-string v2, "Change PRF algorithm as per Mobily KSA\'s requirement"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;->IKE_PRF_HMAC_SHA2_256:Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    invoke-virtual {v8, v0}, Lcom/sec/erisclient/IPSecConnection;->setIkePrfAlgo(Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;)V

    .line 319
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeIntergrity()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 320
    .local v0, "ikeInt":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 321
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    invoke-virtual {v8, v2}, Lcom/sec/erisclient/IPSecConnection;->addIkeIntegrity(Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;)V

    goto :goto_11

    .line 324
    :cond_10
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeEncryptType()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 325
    .local v2, "ikeEnc":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 326
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;

    invoke-virtual {v8, v5}, Lcom/sec/erisclient/IPSecConnection;->addIkeEncryption(Lcom/sec/epdg/DataType/IWlanEnum$IkeEncryption;)V

    goto :goto_12

    .line 329
    :cond_11
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeDhGroup()Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 330
    .local v5, "ikeGr":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 331
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v8, v6}, Lcom/sec/erisclient/IPSecConnection;->addGroup(Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;)V

    goto :goto_13

    .line 334
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeLife()I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/sec/erisclient/IPSecConnection;->setIkeLife(I)V

    .line 335
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeWindowSize()I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/sec/erisclient/IPSecConnection;->setIkeWindowSize(I)V

    .line 336
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeConnectionTimeOut()I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/sec/erisclient/IPSecConnection;->setConnectTimeout(I)V

    .line 338
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeDpdTimeOut()I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/sec/erisclient/IPSecConnection;->setDpdTimeout(I)V

    .line 339
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeNatValue()I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/sec/erisclient/IPSecConnection;->setNattKeepaliveTimeout(I)V

    .line 341
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmIkeVirtualAdapterConf()Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/sec/erisclient/IPSecConnection;->setVirtualAdapterConfiguration(Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;)V

    .line 345
    iget-object v6, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    .end local v0    # "ikeInt":Ljava/util/Iterator;
    .local v17, "ikeInt":Ljava/util/Iterator;
    const-string v0, "HandOverL2W Requesting ipv4:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ipv6:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-static {v7, v6, v0}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/sec/epdg/IPSecAdapterForEris;->IPV6PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "ipv6HandoverAddrWidPrefix":Ljava/lang/String;
    invoke-virtual {v8, v3}, Lcom/sec/erisclient/IPSecConnection;->setRequestedRacIPv4Address(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v8, v0}, Lcom/sec/erisclient/IPSecConnection;->setRequestedRacIPv6Address(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getPcscfattributes()Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    move-result-object v6

    .line 354
    .local v6, "pcscfattribute":Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;
    iget-object v7, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    .end local v0    # "ipv6HandoverAddrWidPrefix":Ljava/lang/String;
    .local v18, "ipv6HandoverAddrWidPrefix":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v2

    .end local v2    # "ikeEnc":Ljava/util/Iterator;
    .local v19, "ikeEnc":Ljava/util/Iterator;
    const-string v2, "Vendor Attribute is to PCSCF_CONF "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;->PCSCF_CONF_NONE:Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    if-eq v6, v0, :cond_15

    .line 356
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;->PCSCF_CONF_V4:Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    if-ne v6, v0, :cond_13

    .line 357
    invoke-static/range {p5 .. p5}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->getPcscfv4VendorAttr()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/sec/erisclient/IPSecConnection;->setPcscfv4VendorAttr(I)V

    goto :goto_14

    .line 358
    :cond_13
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;->PCSCF_CONF_V6:Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    if-ne v6, v0, :cond_14

    .line 359
    invoke-static/range {p5 .. p5}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->getPcscfv6VendorAttr()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/sec/erisclient/IPSecConnection;->setPcscfv6VendorAttr(I)V

    goto :goto_14

    .line 361
    :cond_14
    invoke-static/range {p5 .. p5}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->getPcscfv4VendorAttr()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/sec/erisclient/IPSecConnection;->setPcscfv4VendorAttr(I)V

    .line 362
    invoke-static/range {p5 .. p5}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->getPcscfv6VendorAttr()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/sec/erisclient/IPSecConnection;->setPcscfv6VendorAttr(I)V

    .line 366
    :cond_15
    :goto_14
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getImeiVendorAttrVal()Lcom/sec/epdg/DataType/IWlanEnum$Imei;

    move-result-object v0

    .line 367
    .local v0, "imeiVendorAttrVal":Lcom/sec/epdg/DataType/IWlanEnum$Imei;
    iget-object v2, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vendor Attribute is to IMEI "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$Imei;->DEVICE_IMEI:Lcom/sec/epdg/DataType/IWlanEnum$Imei;

    if-ne v2, v0, :cond_18

    .line 369
    invoke-static/range {p5 .. p5}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgUtils;->getImeiVendorAttributeType()I

    move-result v2

    .line 370
    .local v2, "imeiVendorAttrType":I
    invoke-static/range {p5 .. p5}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v3

    iget-object v7, v1, Lcom/sec/epdg/IPSecAdapterForEris;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Lcom/sec/epdg/EpdgUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, "imeiVendorAttrValue":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 372
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v8, v2, v7}, Lcom/sec/erisclient/IPSecConnection;->setImeiVendorAttr(I[B)V

    .line 373
    iget-object v7, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    .end local v0    # "imeiVendorAttrVal":Lcom/sec/epdg/DataType/IWlanEnum$Imei;
    .local v20, "imeiVendorAttrVal":Lcom/sec/epdg/DataType/IWlanEnum$Imei;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v3

    .end local v3    # "imeiVendorAttrValue":Ljava/lang/String;
    .local v21, "imeiVendorAttrValue":Ljava/lang/String;
    const-string v3, "IMEI VendorAttributeType:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "IMEI VendorAttributeValue:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-static {}, Lcom/sec/epdg/Logger/Log;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "Suppressed"

    goto :goto_15

    :cond_16
    move-object/from16 v3, v21

    :goto_15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-static {v7, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 371
    .end local v20    # "imeiVendorAttrVal":Lcom/sec/epdg/DataType/IWlanEnum$Imei;
    .end local v21    # "imeiVendorAttrValue":Ljava/lang/String;
    .restart local v0    # "imeiVendorAttrVal":Lcom/sec/epdg/DataType/IWlanEnum$Imei;
    .restart local v3    # "imeiVendorAttrValue":Ljava/lang/String;
    :cond_17
    move-object/from16 v20, v0

    move-object/from16 v21, v3

    .end local v0    # "imeiVendorAttrVal":Lcom/sec/epdg/DataType/IWlanEnum$Imei;
    .end local v3    # "imeiVendorAttrValue":Ljava/lang/String;
    .restart local v20    # "imeiVendorAttrVal":Lcom/sec/epdg/DataType/IWlanEnum$Imei;
    .restart local v21    # "imeiVendorAttrValue":Ljava/lang/String;
    goto :goto_16

    .line 368
    .end local v2    # "imeiVendorAttrType":I
    .end local v20    # "imeiVendorAttrVal":Lcom/sec/epdg/DataType/IWlanEnum$Imei;
    .end local v21    # "imeiVendorAttrValue":Ljava/lang/String;
    .restart local v0    # "imeiVendorAttrVal":Lcom/sec/epdg/DataType/IWlanEnum$Imei;
    :cond_18
    move-object/from16 v20, v0

    .line 378
    .end local v0    # "imeiVendorAttrVal":Lcom/sec/epdg/DataType/IWlanEnum$Imei;
    .restart local v20    # "imeiVendorAttrVal":Lcom/sec/epdg/DataType/IWlanEnum$Imei;
    :goto_16
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getPeriodicDpdTimer()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/sec/erisclient/IPSecConnection;->setPeriodicDpdTimer(I)V

    .line 379
    invoke-static/range {p5 .. p5}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->getIwlanInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/sec/erisclient/IPSecConnection;->addInterface(Ljava/lang/String;)V

    .line 381
    iget-object v0, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MOBIKE for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIWlanSettingName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getMobikeattributes()Lcom/sec/epdg/DataType/IWlanEnum$Mobike;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 381
    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getMobikeattributes()Lcom/sec/epdg/DataType/IWlanEnum$Mobike;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$Mobike;->ENABLED:Lcom/sec/epdg/DataType/IWlanEnum$Mobike;

    if-ne v0, v2, :cond_19

    .line 384
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lcom/sec/erisclient/IPSecConnection;->setMobike(Z)V

    goto :goto_17

    .line 385
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getMobikeattributes()Lcom/sec/epdg/DataType/IWlanEnum$Mobike;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$Mobike;->DISABLED:Lcom/sec/epdg/DataType/IWlanEnum$Mobike;

    if-ne v0, v2, :cond_1a

    .line 386
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/sec/erisclient/IPSecConnection;->setMobike(Z)V

    .line 387
    :cond_1a
    :goto_17
    iget-object v0, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fast re-auth for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIWlanSettingName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getFastReauth()Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 387
    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getFastReauth()Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;->ENABLED:Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;

    if-ne v0, v2, :cond_1b

    .line 390
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lcom/sec/erisclient/IPSecConnection;->setFastReauthencation(Z)V

    goto :goto_18

    .line 391
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getFastReauth()Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;->DISABLED:Lcom/sec/epdg/DataType/IWlanEnum$FastReauth;

    if-ne v0, v2, :cond_1c

    .line 392
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/sec/erisclient/IPSecConnection;->setFastReauthencation(Z)V

    .line 394
    :cond_1c
    :goto_18
    iget-object v0, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEVICE_IDENTITY for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIWlanSettingName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getDeviceIdentity()Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 394
    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getDeviceIdentity()Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;->ENABLED:Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;

    if-ne v0, v2, :cond_1d

    .line 397
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lcom/sec/erisclient/IPSecConnection;->setEnableDeviceIdentity(Z)V

    goto :goto_19

    .line 398
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getDeviceIdentity()Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;->DISABLED:Lcom/sec/epdg/DataType/IWlanEnum$DeviceIdentity;

    if-ne v0, v2, :cond_1e

    .line 399
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/sec/erisclient/IPSecConnection;->setEnableDeviceIdentity(Z)V

    .line 402
    :cond_1e
    :goto_19
    invoke-static/range {p5 .. p5}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v21, "Orange_PL"

    const-string v22, "Orange_FR"

    const-string v23, "Orange_RO"

    const-string v24, "Orange_SK"

    const-string v25, "Orange_BE"

    const-string v26, "Orange_LU"

    filled-new-array/range {v21 .. v26}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 403
    const/16 v0, 0x30

    invoke-virtual {v8, v0}, Lcom/sec/erisclient/IPSecConnection;->setIkeDscp(I)V

    goto :goto_1a

    .line 404
    :cond_1f
    invoke-static/range {p5 .. p5}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v2, "Swisscom_CH"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 405
    const/16 v0, 0x22

    invoke-virtual {v8, v0}, Lcom/sec/erisclient/IPSecConnection;->setIkeDscp(I)V

    goto :goto_1a

    .line 406
    :cond_20
    invoke-static/range {p5 .. p5}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    const-string v2, "SFR_FR"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 407
    const/16 v0, 0x2e

    invoke-virtual {v8, v0}, Lcom/sec/erisclient/IPSecConnection;->setIkeDscp(I)V

    .line 410
    :cond_21
    :goto_1a
    return-object v8

    .line 228
    .end local v5    # "ikeGr":Ljava/util/Iterator;
    .end local v6    # "pcscfattribute":Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;
    .end local v12    # "ipsecEnc":Ljava/util/Iterator;
    .end local v13    # "ipsecInt":Ljava/util/Iterator;
    .end local v16    # "ipsecGr":Ljava/util/Iterator;
    .end local v17    # "ikeInt":Ljava/util/Iterator;
    .end local v18    # "ipv6HandoverAddrWidPrefix":Ljava/lang/String;
    .end local v19    # "ikeEnc":Ljava/util/Iterator;
    .end local v20    # "imeiVendorAttrVal":Lcom/sec/epdg/DataType/IWlanEnum$Imei;
    :cond_22
    iget-object v0, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    const-string v2, "Error, wifi is connected still epdg server ip is not valid, returning null"

    invoke-static {v0, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x0

    return-object v0
.end method

.method private onCheckConnectionRequestRecv(II)V
    .locals 6
    .param p1, "cid"    # I
    .param p2, "timeout"    # I

    .line 501
    invoke-direct {p0}, Lcom/sec/epdg/IPSecAdapterForEris;->isServiceStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    return-void

    .line 505
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapterForEris;->getIpSecConnectionbyCid(I)Lcom/sec/erisclient/IPSecConnection;

    move-result-object v0

    .line 506
    .local v0, "conn":Lcom/sec/erisclient/IPSecConnection;
    if-eqz v0, :cond_2

    .line 507
    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkConnection cid ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ) - timeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    .line 510
    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    int-to-long v2, p2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :cond_1
    goto :goto_0

    .line 512
    :catch_0
    move-exception v1

    .line 513
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCheckConnectionRequestRecv(): RuntimeException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    sget-object v1, Lcom/sec/epdg/IPSecAdapterForEris;->mIPsecClient:Lcom/sec/erisclient/ErisClient;

    invoke-virtual {v1, v0, p2}, Lcom/sec/erisclient/ErisClient;->checkConnection(Lcom/sec/erisclient/IPSecConnection;I)Lcom/sec/erisclient/ErisError;

    .line 517
    :cond_2
    return-void
.end method

.method private onConnectRequestRecv(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;II)V
    .locals 16
    .param p1, "info"    # Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;
    .param p2, "cid"    # I
    .param p3, "phoneId"    # I

    .line 423
    move-object/from16 v9, p0

    move/from16 v10, p2

    iget-object v0, v9, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect(): cid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const/4 v11, 0x0

    .line 425
    .local v11, "ipsecconn":Lcom/sec/erisclient/IPSecConnection;
    invoke-static/range {p1 .. p1}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->access$600(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;)Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v12

    .line 427
    .local v12, "iwlanSetting":Lcom/sec/epdg/IWlanApnSetting;
    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/IPSecAdapterForEris;->isServiceStarted()Z

    move-result v0

    const/16 v13, 0x32

    const/4 v14, 0x0

    const/4 v15, -0x1

    if-nez v0, :cond_0

    .line 428
    iget-object v0, v9, Lcom/sec/epdg/IPSecAdapterForEris;->mOemHandler:[Landroid/os/Handler;

    aget-object v0, v0, p3

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 429
    .local v0, "msg":Landroid/os/Message;
    iput v13, v0, Landroid/os/Message;->what:I

    .line 430
    iput v10, v0, Landroid/os/Message;->arg1:I

    .line 431
    new-instance v1, Lcom/sec/epdg/IWlanConnectResult;

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    .line 432
    invoke-direct {v9, v2, v15, v10}, Lcom/sec/epdg/IPSecAdapterForEris;->getIWlanErrorFromErisError(Lcom/sec/erisclient/ErisError;II)Lcom/sec/epdg/ErrorCode/IWlanError;

    move-result-object v2

    invoke-direct {v1, v10, v14, v2, v15}, Lcom/sec/epdg/IWlanConnectResult;-><init>(ILjava/lang/Object;Lcom/sec/epdg/ErrorCode/IWlanError;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 433
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 434
    return-void

    .line 438
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->access$700(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;)Ljava/lang/String;

    move-result-object v3

    .line 439
    invoke-static/range {p1 .. p1}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->access$800(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->access$900(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->access$1000(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;)I

    move-result v8

    .line 438
    move-object/from16 v1, p0

    move-object v2, v12

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/sec/epdg/IPSecAdapterForEris;->mapIwlanSettingToIPsecConnection(Lcom/sec/epdg/IWlanApnSetting;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lcom/sec/erisclient/IPSecConnection;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v0

    .line 443
    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/text/ParseException;
    iget-object v1, v9, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnectRequestRecv(): ParseException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 445
    .end local v0    # "e":Ljava/text/ParseException;
    :goto_0
    if-nez v11, :cond_1

    .line 446
    iget-object v0, v9, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectRequestRecv(): ipsecconn is null, so posting ERROR event for cid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v0, v9, Lcom/sec/epdg/IPSecAdapterForEris;->mOemHandler:[Landroid/os/Handler;

    aget-object v0, v0, p3

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 448
    .local v0, "msg":Landroid/os/Message;
    iput v13, v0, Landroid/os/Message;->what:I

    .line 449
    iput v10, v0, Landroid/os/Message;->arg1:I

    .line 450
    new-instance v1, Lcom/sec/epdg/IWlanConnectResult;

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    .line 451
    invoke-direct {v9, v2, v15, v10}, Lcom/sec/epdg/IPSecAdapterForEris;->getIWlanErrorFromErisError(Lcom/sec/erisclient/ErisError;II)Lcom/sec/epdg/ErrorCode/IWlanError;

    move-result-object v2

    invoke-direct {v1, v10, v14, v2, v15}, Lcom/sec/epdg/IWlanConnectResult;-><init>(ILjava/lang/Object;Lcom/sec/epdg/ErrorCode/IWlanError;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 452
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 453
    return-void

    .line 455
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->mIPsecClient:Lcom/sec/erisclient/ErisClient;

    invoke-virtual {v0, v11}, Lcom/sec/erisclient/ErisClient;->connect(Lcom/sec/erisclient/IPSecConnection;)Lcom/sec/erisclient/ErisError;

    move-result-object v0

    .line 457
    .local v0, "result":Lcom/sec/erisclient/ErisError;
    iget-object v1, v9, Lcom/sec/epdg/IPSecAdapterForEris;->mOemHandler:[Landroid/os/Handler;

    aget-object v1, v1, p3

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 458
    .local v1, "msg":Landroid/os/Message;
    iput v10, v1, Landroid/os/Message;->arg1:I

    .line 459
    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    if-ne v0, v2, :cond_2

    .line 460
    invoke-direct {v9, v10, v11}, Lcom/sec/epdg/IPSecAdapterForEris;->addIPsecConnectionDb(ILcom/sec/erisclient/IPSecConnection;)V

    goto :goto_1

    .line 462
    :cond_2
    iget-object v2, v9, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/16 v2, 0x30

    iput v2, v1, Landroid/os/Message;->what:I

    .line 464
    new-instance v2, Lcom/sec/epdg/IWlanConnectResult;

    invoke-direct {v9, v0, v15, v10}, Lcom/sec/epdg/IPSecAdapterForEris;->getIWlanErrorFromErisError(Lcom/sec/erisclient/ErisError;II)Lcom/sec/epdg/ErrorCode/IWlanError;

    move-result-object v3

    invoke-direct {v2, v10, v14, v3, v15}, Lcom/sec/epdg/IWlanConnectResult;-><init>(ILjava/lang/Object;Lcom/sec/epdg/ErrorCode/IWlanError;I)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 465
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 467
    :goto_1
    return-void
.end method

.method private onDisconnectRequestRecv(II)V
    .locals 2
    .param p1, "cid"    # I
    .param p2, "phoneId"    # I

    .line 478
    invoke-direct {p0}, Lcom/sec/epdg/IPSecAdapterForEris;->isServiceStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/IPSecAdapterForEris;->sendIPSecServiceConnectionErrorEvent(II)V

    .line 480
    return-void

    .line 483
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapterForEris;->getIpSecConnectionbyCid(I)Lcom/sec/erisclient/IPSecConnection;

    move-result-object v0

    .line 484
    .local v0, "conn":Lcom/sec/erisclient/IPSecConnection;
    if-eqz v0, :cond_1

    .line 485
    sget-object v1, Lcom/sec/epdg/IPSecAdapterForEris;->mIPsecClient:Lcom/sec/erisclient/ErisClient;

    invoke-virtual {v1, v0}, Lcom/sec/erisclient/ErisClient;->disconnect(Lcom/sec/erisclient/IPSecConnection;)Lcom/sec/erisclient/ErisError;

    .line 487
    :cond_1
    return-void
.end method

.method private onIpSecAdapterConnectionStatusChanged(Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;)V
    .locals 17
    .param p1, "eventInfo"    # Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;

    .line 791
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;->event:Lcom/sec/erisclient/ErisEvent;

    .line 792
    .local v3, "event":Lcom/sec/erisclient/ErisEvent;
    iget-object v4, v2, Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;->data:Lcom/sec/erisclient/ErisEventData;

    .line 793
    .local v4, "data":Lcom/sec/erisclient/ErisEventData;
    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getConnection()Lcom/sec/erisclient/IPSecConnection;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sec/epdg/IPSecAdapterForEris;->getCidfromConnDb(Lcom/sec/erisclient/IPSecConnection;)I

    move-result v5

    .line 794
    .local v5, "cid":I
    iget-object v0, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onIpSecAdapterConnectionStatusChanged received : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " cid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const/4 v0, -0x1

    if-ne v5, v0, :cond_0

    .line 796
    return-void

    .line 799
    :cond_0
    invoke-direct {v1, v5}, Lcom/sec/epdg/IPSecAdapterForEris;->getIpSecConnectionbyCid(I)Lcom/sec/erisclient/IPSecConnection;

    move-result-object v6

    .line 800
    .local v6, "conn":Lcom/sec/erisclient/IPSecConnection;
    const/4 v0, 0x0

    .line 801
    .local v0, "phoneId":I
    if-eqz v6, :cond_1

    .line 802
    invoke-virtual {v6}, Lcom/sec/erisclient/IPSecConnection;->getPhoneId()I

    move-result v0

    move v7, v0

    goto :goto_0

    .line 801
    :cond_1
    move v7, v0

    .line 805
    .end local v0    # "phoneId":I
    .local v7, "phoneId":I
    :goto_0
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_IKE_KEYS:Lcom/sec/erisclient/ErisEvent;

    if-ne v3, v0, :cond_2

    .line 806
    invoke-static {v7}, Lcom/sec/epdg/Logger/EpdgDumpState;->getInstance(I)Lcom/sec/epdg/Logger/EpdgDumpState;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getIkeSpiI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getIkeSpiR()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getIkeSKei()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getIkeSKer()Ljava/lang/String;

    move-result-object v12

    .line 807
    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getIkeSKai()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getIkeSKar()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getIkeEA()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getIkeIA()Ljava/lang/String;

    move-result-object v16

    .line 806
    invoke-virtual/range {v8 .. v16}, Lcom/sec/epdg/Logger/EpdgDumpState;->addIkeKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    return-void

    .line 809
    :cond_2
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_ESP_KEYS:Lcom/sec/erisclient/ErisEvent;

    if-ne v3, v0, :cond_3

    .line 810
    invoke-static {v7}, Lcom/sec/epdg/Logger/EpdgDumpState;->getInstance(I)Lcom/sec/epdg/Logger/EpdgDumpState;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getEspSpiI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getEspSpiR()Ljava/lang/String;

    move-result-object v10

    .line 811
    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getEspEKi()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getEspEKr()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getEspAKi()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getEspAKr()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getEspEA()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getEspAA()Ljava/lang/String;

    move-result-object v16

    .line 810
    invoke-virtual/range {v8 .. v16}, Lcom/sec/epdg/Logger/EpdgDumpState;->addEspKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    return-void

    .line 815
    :cond_3
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_ESP_SEQ:Lcom/sec/erisclient/ErisEvent;

    if-ne v3, v0, :cond_5

    .line 816
    iget-object v0, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMaxEspSeq : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getMaxEspSeq()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " getMinEspSeq : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getMinEspSeq()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " getTotalRxPackets : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getTotalRxPackets()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const/4 v0, 0x0

    .line 818
    .local v0, "hasEspLoss":Z
    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getMaxEspSeq()I

    move-result v8

    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getMinEspSeq()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getTotalRxPackets()I

    move-result v9

    if-eq v8, v9, :cond_4

    .line 819
    const/4 v0, 0x1

    .line 821
    :cond_4
    iget-object v8, v1, Lcom/sec/epdg/IPSecAdapterForEris;->mOemHandler:[Landroid/os/Handler;

    aget-object v8, v8, v7

    invoke-static {v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v8

    .line 822
    .local v8, "msg":Landroid/os/Message;
    iput v5, v8, Landroid/os/Message;->arg1:I

    .line 823
    const/16 v9, 0x65

    iput v9, v8, Landroid/os/Message;->what:I

    .line 824
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 825
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 826
    return-void

    .line 829
    .end local v0    # "hasEspLoss":Z
    .end local v8    # "msg":Landroid/os/Message;
    :cond_5
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_ACTIVE:Lcom/sec/erisclient/ErisEvent;

    const-string v8, "onIpSecAdapterConnectionStatusChanged(): RuntimeException "

    if-ne v3, v0, :cond_7

    .line 832
    :try_start_0
    iget-object v0, v1, Lcom/sec/epdg/IPSecAdapterForEris;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/sec/epdg/IPSecAdapterForEris;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 833
    iget-object v0, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    const-string v9, "checkConnection wake lock release : IPSEC_EVENT_CONNECTION_ACTIVE"

    invoke-static {v0, v9}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v0, v1, Lcom/sec/epdg/IPSecAdapterForEris;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    :cond_6
    goto :goto_1

    .line 836
    :catch_0
    move-exception v0

    .line 837
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v9, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    invoke-static {v7}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->ENHANCEDVOWIFI20:Z

    if-nez v0, :cond_7

    .line 841
    return-void

    .line 844
    :cond_7
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_PEER_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    if-eq v3, v0, :cond_8

    sget-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    if-ne v3, v0, :cond_a

    .line 846
    :cond_8
    :try_start_1
    iget-object v0, v1, Lcom/sec/epdg/IPSecAdapterForEris;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/sec/epdg/IPSecAdapterForEris;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 847
    iget-object v0, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    const-string v9, "checkConnection wake lock release : IPSEC_EVENT_PEER_DISCONNECTED"

    invoke-static {v0, v9}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-object v0, v1, Lcom/sec/epdg/IPSecAdapterForEris;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 852
    :cond_9
    goto :goto_2

    .line 850
    :catch_1
    move-exception v0

    .line 851
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    iget-object v9, v1, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_a
    :goto_2
    iget-object v0, v1, Lcom/sec/epdg/IPSecAdapterForEris;->mOemHandler:[Landroid/os/Handler;

    aget-object v0, v0, v7

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 855
    .local v0, "msg":Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->arg1:I

    .line 856
    invoke-direct {v1, v3}, Lcom/sec/epdg/IPSecAdapterForEris;->getIWlanEventbyIPSecEvent(Lcom/sec/erisclient/ErisEvent;)I

    move-result v8

    iput v8, v0, Landroid/os/Message;->what:I

    .line 859
    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getError()Lcom/sec/erisclient/ErisError;

    move-result-object v8

    sget-object v9, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    const/4 v10, 0x0

    if-eq v8, v9, :cond_b

    .line 860
    new-instance v8, Lcom/sec/epdg/IWlanConnectResult;

    .line 861
    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getError()Lcom/sec/erisclient/ErisError;

    move-result-object v9

    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getIkeErrorValue()I

    move-result v11

    invoke-direct {v1, v9, v11, v5}, Lcom/sec/epdg/IPSecAdapterForEris;->getIWlanErrorFromErisError(Lcom/sec/erisclient/ErisError;II)Lcom/sec/epdg/ErrorCode/IWlanError;

    move-result-object v9

    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getBackoffTimer()I

    move-result v11

    invoke-direct {v8, v5, v10, v9, v11}, Lcom/sec/epdg/IWlanConnectResult;-><init>(ILjava/lang/Object;Lcom/sec/epdg/ErrorCode/IWlanError;I)V

    iput-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 862
    invoke-static {v7}, Lcom/sec/epdg/Logger/EpdgDumpState;->getInstance(I)Lcom/sec/epdg/Logger/EpdgDumpState;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getConnection()Lcom/sec/erisclient/IPSecConnection;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/erisclient/IPSecConnection;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getError()Lcom/sec/erisclient/ErisError;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/erisclient/ErisError;->name()Ljava/lang/String;

    move-result-object v10

    .line 863
    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getIkeErrorValue()I

    move-result v11

    invoke-static {v11}, Lcom/sec/epdg/ErrorCode/RfcIkeError;->printRfcIkeErrorCode(I)Ljava/lang/String;

    move-result-object v11

    .line 862
    invoke-virtual {v8, v9, v10, v11}, Lcom/sec/epdg/Logger/EpdgDumpState;->addIpsecFailMsgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 865
    :cond_b
    sget-object v8, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTED:Lcom/sec/erisclient/ErisEvent;

    if-ne v3, v8, :cond_d

    .line 866
    invoke-static {v7}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgUtils;->isTmoSASupport()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 867
    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getSnssaiValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sec/erisclient/ErisEventData;->getPlmnIdValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v7, v5, v8, v9}, Lcom/sec/epdg/IPSecAdapterForEris;->getConnectionInformation(IILjava/lang/String;Ljava/lang/String;)Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;

    move-result-object v8

    iput-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_3

    .line 869
    :cond_c
    const-string v8, ""

    invoke-direct {v1, v7, v5, v8, v8}, Lcom/sec/epdg/IPSecAdapterForEris;->getConnectionInformation(IILjava/lang/String;Ljava/lang/String;)Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;

    move-result-object v8

    iput-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_3

    .line 872
    :cond_d
    iput-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 875
    :goto_3
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 876
    return-void
.end method

.method private declared-synchronized onIpSecAdapterServiceStatusChanged(Lcom/sec/erisclient/ErisError;)V
    .locals 3
    .param p1, "event"    # Lcom/sec/erisclient/ErisError;

    monitor-enter p0

    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIpSecAdapterServiceStatusChanged() event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    if-ne p1, v0, :cond_0

    .line 546
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/epdg/IPSecAdapterForEris;->mbStarted:Z

    goto :goto_0

    .line 547
    .end local p0    # "this":Lcom/sec/epdg/IPSecAdapterForEris;
    :cond_0
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_DAEMON_STOPPED:Lcom/sec/erisclient/ErisError;

    if-ne p1, v0, :cond_1

    .line 548
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/epdg/IPSecAdapterForEris;->mbStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 543
    .end local p1    # "event":Lcom/sec/erisclient/ErisError;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onLocalDisconnectRequestRecv(II)V
    .locals 2
    .param p1, "cid"    # I
    .param p2, "phoneId"    # I

    .line 490
    invoke-direct {p0}, Lcom/sec/epdg/IPSecAdapterForEris;->isServiceStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/IPSecAdapterForEris;->sendIPSecServiceConnectionErrorEvent(II)V

    .line 492
    return-void

    .line 494
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapterForEris;->getIpSecConnectionbyCid(I)Lcom/sec/erisclient/IPSecConnection;

    move-result-object v0

    .line 495
    .local v0, "conn":Lcom/sec/erisclient/IPSecConnection;
    if-eqz v0, :cond_1

    .line 496
    sget-object v1, Lcom/sec/epdg/IPSecAdapterForEris;->mIPsecClient:Lcom/sec/erisclient/ErisClient;

    invoke-virtual {v1, v0}, Lcom/sec/erisclient/ErisClient;->silentDisconnect(Lcom/sec/erisclient/IPSecConnection;)Lcom/sec/erisclient/ErisError;

    .line 498
    :cond_1
    return-void
.end method

.method private onStartCheckEspRequestRecv(II)V
    .locals 4
    .param p1, "cid"    # I
    .param p2, "interval"    # I

    .line 520
    invoke-direct {p0}, Lcom/sec/epdg/IPSecAdapterForEris;->isServiceStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    return-void

    .line 524
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapterForEris;->getIpSecConnectionbyCid(I)Lcom/sec/erisclient/IPSecConnection;

    move-result-object v0

    .line 525
    .local v0, "conn":Lcom/sec/erisclient/IPSecConnection;
    if-eqz v0, :cond_1

    .line 526
    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCheckEspRequestRecv cid ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ) - interval : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    sget-object v1, Lcom/sec/epdg/IPSecAdapterForEris;->mIPsecClient:Lcom/sec/erisclient/ErisClient;

    invoke-virtual {v1, v0, p2}, Lcom/sec/erisclient/ErisClient;->startEspCheck(Lcom/sec/erisclient/IPSecConnection;I)Lcom/sec/erisclient/ErisError;

    .line 529
    :cond_1
    return-void
.end method

.method private onStopCheckEspRequestRecv(I)V
    .locals 4
    .param p1, "cid"    # I

    .line 532
    invoke-direct {p0}, Lcom/sec/epdg/IPSecAdapterForEris;->isServiceStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    return-void

    .line 536
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapterForEris;->getIpSecConnectionbyCid(I)Lcom/sec/erisclient/IPSecConnection;

    move-result-object v0

    .line 537
    .local v0, "conn":Lcom/sec/erisclient/IPSecConnection;
    if-eqz v0, :cond_1

    .line 538
    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStopCheckEspRequestRecv cid ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    sget-object v1, Lcom/sec/epdg/IPSecAdapterForEris;->mIPsecClient:Lcom/sec/erisclient/ErisClient;

    invoke-virtual {v1, v0}, Lcom/sec/erisclient/ErisClient;->stopEspCheck(Lcom/sec/erisclient/IPSecConnection;)Lcom/sec/erisclient/ErisError;

    .line 541
    :cond_1
    return-void
.end method

.method private sendIPSecServiceConnectionErrorEvent(II)V
    .locals 5
    .param p1, "cid"    # I
    .param p2, "phoneId"    # I

    .line 470
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mOemHandler:[Landroid/os/Handler;

    aget-object v0, v0, p2

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 471
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x32

    iput v1, v0, Landroid/os/Message;->what:I

    .line 472
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 473
    new-instance v1, Lcom/sec/epdg/IWlanConnectResult;

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3, p1}, Lcom/sec/epdg/IPSecAdapterForEris;->getIWlanErrorFromErisError(Lcom/sec/erisclient/ErisError;II)Lcom/sec/epdg/ErrorCode/IWlanError;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, p1, v4, v2, v3}, Lcom/sec/epdg/IWlanConnectResult;-><init>(ILjava/lang/Object;Lcom/sec/epdg/ErrorCode/IWlanError;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 474
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 475
    return-void
.end method

.method private startService()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->TAG:Ljava/lang/String;

    const-string v1, "Starting IPSec Service"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->mIPsecClient:Lcom/sec/erisclient/ErisClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/erisclient/ErisClient;->startService(Z)V

    .line 174
    return-void
.end method


# virtual methods
.method public deInit()V
    .locals 2

    .line 177
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->mIPsecClient:Lcom/sec/erisclient/ErisClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/erisclient/ErisClient;->setListener(Lcom/sec/erisclient/IErisListener;)V

    .line 178
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mHandler:Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 180
    :cond_1
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->mIPsecClient:Lcom/sec/erisclient/ErisClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/erisclient/ErisClient;->deInitialize(Z)V

    .line 181
    return-void
.end method

.method public deinitialize()V
    .locals 1

    .line 996
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->mInstance:Lcom/sec/epdg/IPSecAdapterForEris;

    if-eqz v0, :cond_0

    .line 997
    invoke-virtual {v0}, Lcom/sec/epdg/IPSecAdapterForEris;->deInit()V

    .line 999
    :cond_0
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->mConnectionDb:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 1000
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1002
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->mIPsecClient:Lcom/sec/erisclient/ErisClient;

    .line 1003
    sput-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->mInstance:Lcom/sec/epdg/IPSecAdapterForEris;

    .line 1004
    return-void
.end method

.method public getEnableHwKeepalive()Z
    .locals 1

    .line 879
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->mIPsecClient:Lcom/sec/erisclient/ErisClient;

    invoke-virtual {v0}, Lcom/sec/erisclient/ErisClient;->getEnableHwKeepalive()Z

    move-result v0

    return v0
.end method

.method public onConnectionChanged(Lcom/sec/erisclient/ErisEvent;Lcom/sec/erisclient/ErisEventData;)V
    .locals 3
    .param p1, "event"    # Lcom/sec/erisclient/ErisEvent;
    .param p2, "data"    # Lcom/sec/erisclient/ErisEventData;

    .line 985
    new-instance v0, Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;-><init>(Lcom/sec/epdg/IPSecAdapterForEris$1;)V

    .line 986
    .local v0, "eventInfo":Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;
    iput-object p1, v0, Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;->event:Lcom/sec/erisclient/ErisEvent;

    .line 987
    iput-object p2, v0, Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;->data:Lcom/sec/erisclient/ErisEventData;

    .line 989
    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mHandler:Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 990
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 991
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 992
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 993
    return-void
.end method

.method public onServiceChanged(Lcom/sec/erisclient/ErisError;)V
    .locals 2
    .param p1, "error"    # Lcom/sec/erisclient/ErisError;

    .line 972
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mHandler:Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 973
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 974
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 975
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 976
    return-void
.end method

.method public postCheckConnectionMessage(IILjava/lang/Object;)V
    .locals 2
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mHandler:Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 137
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 138
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 139
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 140
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 141
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 142
    return-void
.end method

.method public postConnectMessage(IILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "operator"    # Ljava/lang/String;
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "ipv4addr"    # Ljava/lang/String;
    .param p6, "ipv6addr"    # Ljava/lang/String;
    .param p7, "pdusessionid"    # I

    .line 103
    new-instance v0, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;-><init>(Lcom/sec/epdg/IPSecAdapterForEris$1;)V

    .line 104
    .local v0, "info":Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;
    move-object v1, p4

    check-cast v1, Lcom/sec/epdg/IWlanApnSetting;

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->access$100(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;Lcom/sec/epdg/IWlanApnSetting;)V

    .line 105
    invoke-static {v0, p5}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->access$200(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;Ljava/lang/String;)V

    .line 106
    invoke-static {v0, p6}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->access$300(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;Ljava/lang/String;)V

    .line 107
    invoke-static {v0, p3}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->access$400(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;Ljava/lang/String;)V

    .line 108
    invoke-static {v0, p7}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->access$500(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;I)V

    .line 109
    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mHandler:Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 110
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 111
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 112
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 113
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 114
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 115
    return-void
.end method

.method public postDisconnectMessage(IILjava/lang/Object;)V
    .locals 2
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mHandler:Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 119
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 120
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 121
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 122
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 124
    return-void
.end method

.method public postLocalDisconnectMessage(IILjava/lang/Object;)V
    .locals 2
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mHandler:Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 128
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 129
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 130
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 131
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 132
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 133
    return-void
.end method

.method public postStartCheckEspMessage(IILjava/lang/Object;)V
    .locals 2
    .param p1, "cid"    # I
    .param p2, "interval"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mHandler:Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 146
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 147
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 148
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 149
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 150
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 152
    return-void
.end method

.method public postStopCheckEspMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "cid"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mHandler:Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 156
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 157
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 158
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 161
    return-void
.end method

.method public setHandler(ILandroid/os/Handler;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "hdlr"    # Landroid/os/Handler;

    .line 98
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mOemHandler:[Landroid/os/Handler;

    aput-object p2, v0, p1

    .line 99
    return-void
.end method
