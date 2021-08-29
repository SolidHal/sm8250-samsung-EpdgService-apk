.class public Lcom/sec/epdg/WifiInterface/RssiNotifier;
.super Ljava/lang/Object;
.source "RssiNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/WifiInterface/RssiNotifier$PollRssi;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/sec/epdg/WifiInterface/RssiNotifier;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mIsRunning:Z

.field private needStop:Z

.field private pollRssiListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/epdg/WifiInterface/PollRssiListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-string v0, "SIM# [RssiNotifier]"

    sput-object v0, Lcom/sec/epdg/WifiInterface/RssiNotifier;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/WifiInterface/RssiNotifier;->pollRssiListenerList:Ljava/util/List;

    .line 18
    invoke-static {}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->setupInterfaceForWifiRssi()Z

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/sec/epdg/WifiInterface/RssiNotifier;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/WifiInterface/RssiNotifier;

    .line 10
    iget-boolean v0, p0, Lcom/sec/epdg/WifiInterface/RssiNotifier;->needStop:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/epdg/WifiInterface/RssiNotifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/WifiInterface/RssiNotifier;

    .line 10
    invoke-direct {p0}, Lcom/sec/epdg/WifiInterface/RssiNotifier;->notifyRssi()V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/epdg/WifiInterface/RssiNotifier;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/WifiInterface/RssiNotifier;
    .param p1, "x1"    # Z

    .line 10
    iput-boolean p1, p0, Lcom/sec/epdg/WifiInterface/RssiNotifier;->mIsRunning:Z

    return p1
.end method

.method public static getInstance()Lcom/sec/epdg/WifiInterface/RssiNotifier;
    .locals 1

    .line 22
    sget-object v0, Lcom/sec/epdg/WifiInterface/RssiNotifier;->INSTANCE:Lcom/sec/epdg/WifiInterface/RssiNotifier;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/sec/epdg/WifiInterface/RssiNotifier;

    invoke-direct {v0}, Lcom/sec/epdg/WifiInterface/RssiNotifier;-><init>()V

    sput-object v0, Lcom/sec/epdg/WifiInterface/RssiNotifier;->INSTANCE:Lcom/sec/epdg/WifiInterface/RssiNotifier;

    .line 25
    :cond_0
    sget-object v0, Lcom/sec/epdg/WifiInterface/RssiNotifier;->INSTANCE:Lcom/sec/epdg/WifiInterface/RssiNotifier;

    return-object v0
.end method

.method private notifyRssi()V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/sec/epdg/WifiInterface/RssiNotifier;->pollRssiListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/WifiInterface/PollRssiListener;

    .line 48
    .local v1, "listener":Lcom/sec/epdg/WifiInterface/PollRssiListener;
    invoke-static {}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->pollWifiRssi()I

    move-result v2

    .line 49
    .local v2, "rssi":I
    invoke-interface {v1, v2}, Lcom/sec/epdg/WifiInterface/PollRssiListener;->pollRssi(I)V

    .line 50
    .end local v1    # "listener":Lcom/sec/epdg/WifiInterface/PollRssiListener;
    .end local v2    # "rssi":I
    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method protected static resetInstance()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/WifiInterface/RssiNotifier;->INSTANCE:Lcom/sec/epdg/WifiInterface/RssiNotifier;

    .line 30
    return-void
.end method


# virtual methods
.method public registerPollRssiListener(Lcom/sec/epdg/WifiInterface/PollRssiListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/epdg/WifiInterface/PollRssiListener;

    .line 33
    iget-object v0, p0, Lcom/sec/epdg/WifiInterface/RssiNotifier;->pollRssiListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-boolean v0, p0, Lcom/sec/epdg/WifiInterface/RssiNotifier;->mIsRunning:Z

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/sec/epdg/WifiInterface/RssiNotifier;->startPollRssi()V

    .line 37
    :cond_0
    return-void
.end method

.method public startPollRssi()V
    .locals 1

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/epdg/WifiInterface/RssiNotifier;->mIsRunning:Z

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/WifiInterface/RssiNotifier;->needStop:Z

    .line 56
    new-instance v0, Lcom/sec/epdg/WifiInterface/RssiNotifier$PollRssi;

    invoke-direct {v0, p0}, Lcom/sec/epdg/WifiInterface/RssiNotifier$PollRssi;-><init>(Lcom/sec/epdg/WifiInterface/RssiNotifier;)V

    .line 57
    .local v0, "pollRssi":Lcom/sec/epdg/WifiInterface/RssiNotifier$PollRssi;
    invoke-virtual {v0}, Lcom/sec/epdg/WifiInterface/RssiNotifier$PollRssi;->start()Landroid/os/CountDownTimer;

    .line 58
    return-void
.end method

.method public stopPollRssi()V
    .locals 1

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/epdg/WifiInterface/RssiNotifier;->needStop:Z

    .line 62
    return-void
.end method

.method public unregisterPollRssiListener(Lcom/sec/epdg/WifiInterface/PollRssiListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/epdg/WifiInterface/PollRssiListener;

    .line 40
    iget-object v0, p0, Lcom/sec/epdg/WifiInterface/RssiNotifier;->pollRssiListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/sec/epdg/WifiInterface/RssiNotifier;->pollRssiListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/sec/epdg/WifiInterface/RssiNotifier;->stopPollRssi()V

    .line 44
    :cond_0
    return-void
.end method
