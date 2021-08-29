.class public Lcom/sec/epdg/EpdgRunnable;
.super Ljava/lang/Object;
.source "EpdgRunnable.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field public final mInitializeCondition:Ljava/lang/Runnable;

.field private mIsLteAvailable:Z

.field final mL2WHandoverProfilingOn:Lcom/sec/epdg/EpdgServiceRunnable;

.field final mLteMeasurement:Lcom/sec/epdg/EpdgServiceRunnable;

.field final mLteOff:Lcom/sec/epdg/EpdgServiceRunnable;

.field final mLteOn:Lcom/sec/epdg/EpdgServiceRunnable;

.field private mPhoneId:I

.field private mSubScription:Lcom/sec/epdg/EpdgSubScription;

.field final mWiFiMeasurement:Lcom/sec/epdg/EpdgServiceRunnable;

.field final mWifiCallingOff:Lcom/sec/epdg/EpdgServiceRunnable;

.field final mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

.field final mWifiOn:Lcom/sec/epdg/EpdgServiceRunnable;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/EpdgSubScription;I)V
    .locals 2
    .param p1, "epdgSubScription"    # Lcom/sec/epdg/EpdgSubScription;
    .param p2, "phoneId"    # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/sec/epdg/EpdgRunnable$1;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgRunnable$1;-><init>(Lcom/sec/epdg/EpdgRunnable;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgRunnable;->mWifiOn:Lcom/sec/epdg/EpdgServiceRunnable;

    .line 36
    new-instance v0, Lcom/sec/epdg/EpdgRunnable$2;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgRunnable$2;-><init>(Lcom/sec/epdg/EpdgRunnable;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgRunnable;->mWifiOff:Lcom/sec/epdg/EpdgServiceRunnable;

    .line 198
    new-instance v0, Lcom/sec/epdg/EpdgRunnable$3;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgRunnable$3;-><init>(Lcom/sec/epdg/EpdgRunnable;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgRunnable;->mInitializeCondition:Ljava/lang/Runnable;

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgRunnable;->mIsLteAvailable:Z

    .line 223
    new-instance v0, Lcom/sec/epdg/EpdgRunnable$4;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgRunnable$4;-><init>(Lcom/sec/epdg/EpdgRunnable;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgRunnable;->mLteOn:Lcom/sec/epdg/EpdgServiceRunnable;

    .line 249
    new-instance v0, Lcom/sec/epdg/EpdgRunnable$5;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgRunnable$5;-><init>(Lcom/sec/epdg/EpdgRunnable;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgRunnable;->mLteOff:Lcom/sec/epdg/EpdgServiceRunnable;

    .line 292
    new-instance v0, Lcom/sec/epdg/EpdgRunnable$6;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgRunnable$6;-><init>(Lcom/sec/epdg/EpdgRunnable;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgRunnable;->mWifiCallingOff:Lcom/sec/epdg/EpdgServiceRunnable;

    .line 309
    new-instance v0, Lcom/sec/epdg/EpdgRunnable$7;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgRunnable$7;-><init>(Lcom/sec/epdg/EpdgRunnable;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgRunnable;->mL2WHandoverProfilingOn:Lcom/sec/epdg/EpdgServiceRunnable;

    .line 322
    new-instance v0, Lcom/sec/epdg/EpdgRunnable$8;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgRunnable$8;-><init>(Lcom/sec/epdg/EpdgRunnable;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgRunnable;->mLteMeasurement:Lcom/sec/epdg/EpdgServiceRunnable;

    .line 340
    new-instance v0, Lcom/sec/epdg/EpdgRunnable$9;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgRunnable$9;-><init>(Lcom/sec/epdg/EpdgRunnable;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgRunnable;->mWiFiMeasurement:Lcom/sec/epdg/EpdgServiceRunnable;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [EpdgRunnable]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgRunnable;->TAG:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/sec/epdg/EpdgRunnable;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 26
    iput p2, p0, Lcom/sec/epdg/EpdgRunnable;->mPhoneId:I

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/sec/epdg/EpdgRunnable;)Lcom/sec/epdg/EpdgSubScription;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgRunnable;

    .line 18
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/epdg/EpdgRunnable;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgRunnable;

    .line 18
    iget-object v0, p0, Lcom/sec/epdg/EpdgRunnable;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/epdg/EpdgRunnable;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgRunnable;

    .line 18
    iget v0, p0, Lcom/sec/epdg/EpdgRunnable;->mPhoneId:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/epdg/EpdgRunnable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgRunnable;

    .line 18
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgRunnable;->mIsLteAvailable:Z

    return v0
.end method


# virtual methods
.method public declared-synchronized getIsLteAvailable()Z
    .locals 1

    monitor-enter p0

    .line 220
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgRunnable;->mIsLteAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 220
    .end local p0    # "this":Lcom/sec/epdg/EpdgRunnable;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setIsLteAvailable(Z)V
    .locals 0
    .param p1, "value"    # Z

    monitor-enter p0

    .line 216
    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgRunnable;->mIsLteAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    .line 215
    .end local p0    # "this":Lcom/sec/epdg/EpdgRunnable;
    .end local p1    # "value":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
