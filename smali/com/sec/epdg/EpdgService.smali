.class public Lcom/sec/epdg/EpdgService;
.super Landroid/app/Service;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgService$IntentReceiver;,
        Lcom/sec/epdg/EpdgService$EpdgServiceHandler;
    }
.end annotation


# static fields
.field protected static final DB_SYNC_COMPLETED:I = 0x4

.field protected static final DB_SYNC_HOLD:I = 0x2

.field protected static final DB_SYNC_IDLE:I = 0x1

.field protected static final DB_SYNC_INPROGRESS:I = 0x3

.field private static IS_PARTIAL_RUN:Z = false

.field private static LOCAL_THREAD_COUNTER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "[EPDGService]"

.field public static TERMINATING:Z

.field private static mEpdgHandler:Landroid/os/Handler;

.field private static mEpdgManagerStubImpl:[Lcom/sec/epdg/EpdgManagerStubImpl;

.field private static mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;


# instance fields
.field private final PERMISSION:Ljava/lang/String;

.field private final SIMSLOT_0:I

.field private final SIMSLOT_1:I

.field protected final mBinder:Lcom/sec/epdg/IEpdgManager$Stub;

.field private mContext:Landroid/content/Context;

.field private mDBSyncState:[I

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mImsServiceUp:[Z

.field private mInitializingIntent:Landroid/content/Intent;

.field private mInitializingPendingIntent:Landroid/app/PendingIntent;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsDualSim:Z

.field private mIsWaitingSimmoCheck:[Z

.field private mLoadSubscriptionDone:[Z

.field private mNeedUpdateCarrierFeature:[Z

.field private mRetryingAlarmRunning:Z

.field private mSapState:[I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field protected mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVodaProvisionReceiver:Lcom/sec/epdg/VodaProvisionReceiver;

.field private retryInitializeCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/sec/epdg/EpdgSubScription;

    sput-object v1, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    .line 54
    new-array v0, v0, [Lcom/sec/epdg/EpdgManagerStubImpl;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mEpdgManagerStubImpl:[Lcom/sec/epdg/EpdgManagerStubImpl;

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/epdg/EpdgService;->TERMINATING:Z

    .line 68
    sput v0, Lcom/sec/epdg/EpdgService;->LOCAL_THREAD_COUNTER:I

    .line 69
    sput-boolean v0, Lcom/sec/epdg/EpdgService;->IS_PARTIAL_RUN:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 56
    const-string v0, "com.sec.epdg.PERMISSION"

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->PERMISSION:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/EpdgService;->SIMSLOT_0:I

    .line 58
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/epdg/EpdgService;->SIMSLOT_1:I

    .line 59
    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/sec/epdg/EpdgService;->mSapState:[I

    .line 60
    new-array v2, v1, [Z

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/sec/epdg/EpdgService;->mImsServiceUp:[Z

    .line 61
    new-array v2, v1, [Z

    fill-array-data v2, :array_2

    iput-object v2, p0, Lcom/sec/epdg/EpdgService;->mLoadSubscriptionDone:[Z

    .line 62
    iput v0, p0, Lcom/sec/epdg/EpdgService;->retryInitializeCnt:I

    .line 65
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgService;->mRetryingAlarmRunning:Z

    .line 66
    new-array v2, v1, [Z

    fill-array-data v2, :array_3

    iput-object v2, p0, Lcom/sec/epdg/EpdgService;->mNeedUpdateCarrierFeature:[Z

    .line 74
    new-array v2, v1, [I

    fill-array-data v2, :array_4

    iput-object v2, p0, Lcom/sec/epdg/EpdgService;->mDBSyncState:[I

    .line 75
    iput-boolean v0, p0, Lcom/sec/epdg/EpdgService;->mIsDualSim:Z

    .line 77
    new-array v0, v1, [Z

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mIsWaitingSimmoCheck:[Z

    .line 730
    new-instance v0, Lcom/sec/epdg/EpdgService$1;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$1;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mBinder:Lcom/sec/epdg/IEpdgManager$Stub;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/sec/epdg/EpdgService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Landroid/os/Message;

    .line 46
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->handleSimStateChange(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .line 46
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->performEpdgReadinessOperation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/epdg/EpdgService;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->onSimMoStatusChanged(ZI)V

    return-void
.end method

.method static synthetic access$1202(Lcom/sec/epdg/EpdgService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .line 46
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgService;->mRetryingAlarmRunning:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/epdg/EpdgService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .line 46
    iget v0, p0, Lcom/sec/epdg/EpdgService;->retryInitializeCnt:I

    return v0
.end method

.method static synthetic access$1308(Lcom/sec/epdg/EpdgService;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .line 46
    iget v0, p0, Lcom/sec/epdg/EpdgService;->retryInitializeCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/epdg/EpdgService;->retryInitializeCnt:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/epdg/EpdgService;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .line 46
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mNeedUpdateCarrierFeature:[Z

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/epdg/EpdgService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->saveUpdatedCarrierId(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/epdg/EpdgService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .line 46
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->getSavedCarrierId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/epdg/EpdgService;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .line 46
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->getSavedSwVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/epdg/EpdgService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .line 46
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900()[Lcom/sec/epdg/EpdgManagerStubImpl;
    .locals 1

    .line 46
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgManagerStubImpl:[Lcom/sec/epdg/EpdgManagerStubImpl;

    return-object v0
.end method

.method static synthetic access$200()[Lcom/sec/epdg/EpdgSubScription;
    .locals 1

    .line 46
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .line 46
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->checkSimMoStatusForSync(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .line 46
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isReadyForEpdgConnect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .locals 1

    .line 46
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/epdg/EpdgService;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .line 46
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mLoadSubscriptionDone:[Z

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .line 46
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->callLoadSubScription(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/epdg/EpdgService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .line 46
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mDBSyncState:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .line 46
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->terminateEpdgService()V

    return-void
.end method

.method private callLoadSubScription(I)V
    .locals 5
    .param p1, "simSlot"    # I

    .line 470
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v1, v0, :cond_4

    .line 471
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 477
    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getImsManagerHelper()Lcom/sec/epdg/EpdgImsManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgImsManagerHelper;->unregisterSimMobilityStatusListener()V

    .line 479
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isReadyForEpdgConnect()Z

    move-result v0

    const-string v1, "[EPDGService]"

    if-nez v0, :cond_1

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callLoadSubScription, not ready for epdg connect, only sync will be performed for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->syncSettingsDBWithEpdgDB(I)V

    goto :goto_1

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mLoadSubscriptionDone:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_4

    .line 483
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 484
    .local v0, "subIdList":[I
    if-eqz v0, :cond_3

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mImsServiceUp:[Z

    aget-boolean v3, v3, p1

    if-nez v3, :cond_2

    goto :goto_0

    .line 489
    :cond_2
    aget v2, v0, v2

    .line 490
    .local v2, "subId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callLoadSubScription, ready for epdg connect, Loading Epdg SubScription for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    aget-object v1, v1, p1

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mNeedUpdateCarrierFeature:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {v1, v3}, Lcom/sec/epdg/EpdgSubScription;->setCarrierFeatureUpdate(Z)V

    .line 492
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    aget-object v1, v1, p1

    invoke-virtual {v1, p1, v2}, Lcom/sec/epdg/EpdgSubScription;->loadSubScription(II)V

    .line 493
    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mLoadSubscriptionDone:[Z

    const/4 v3, 0x1

    aput-boolean v3, v1, p1

    goto :goto_1

    .line 485
    .end local v2    # "subId":I
    :cond_3
    :goto_0
    const-string v2, "callLoadSubScription, InvalidSubscriptionId or IMS SERVICE up not done yet, retry alarm started.."

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startRetryAlarm()V

    .line 487
    return-void

    .line 496
    .end local v0    # "subIdList":[I
    :cond_4
    :goto_1
    return-void
.end method

.method private checkSimMoStatusForSync(I)V
    .locals 2
    .param p1, "simSlot"    # I

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSimMoStatusForSync, Slot : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[EPDGService]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 444
    .local v0, "simMoMsgForSync":Landroid/os/Message;
    const/16 v1, 0x6c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 445
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 446
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getImsManagerHelper()Lcom/sec/epdg/EpdgImsManagerHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/epdg/EpdgImsManagerHelper;->registerSimMobilityStatusListener(Landroid/os/Message;)V

    .line 447
    return-void
.end method

.method public static declared-synchronized decrementThreadCounter()V
    .locals 2

    const-class v0, Lcom/sec/epdg/EpdgService;

    monitor-enter v0

    .line 187
    :try_start_0
    sget v1, Lcom/sec/epdg/EpdgService;->LOCAL_THREAD_COUNTER:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/sec/epdg/EpdgService;->LOCAL_THREAD_COUNTER:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit v0

    return-void

    .line 186
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected static getEpdgHandler()Landroid/os/Handler;
    .locals 1

    .line 714
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getSavedCarrierId(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 670
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "carrierId_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 671
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "carrierId"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 672
    .local v1, "carrierId":I
    return v1
.end method

.method private getSavedSwVersion(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .line 676
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "carrierId_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 677
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "swversion"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 678
    .local v1, "swVersion":Ljava/lang/String;
    return-object v1
.end method

.method public static declared-synchronized getThreadCounter()I
    .locals 2

    const-class v0, Lcom/sec/epdg/EpdgService;

    monitor-enter v0

    .line 191
    :try_start_0
    sget v1, Lcom/sec/epdg/EpdgService;->LOCAL_THREAD_COUNTER:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 191
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handleSimStateChange(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 385
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 386
    .local v0, "simSlot":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 387
    .local v1, "subscription":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 388
    .local v2, "simState":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM_SLOT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " subscription: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " SIM_STATE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[EPDGService]"

    invoke-static {v4, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", subId: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " STATE: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x1f4

    invoke-static {v5, v3}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 391
    const-string v3, "LOADED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 392
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->callLoadSubScription(I)V

    goto/16 :goto_2

    .line 393
    :cond_0
    const-string v3, "ABSENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "NOT_READY"

    const-string v7, "UNKNOWN"

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-nez v5, :cond_1

    const-string v5, "LOCKED"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_1
    sget-object v5, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    aget-object v5, v5, v0

    if-eqz v5, :cond_9

    .line 396
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 397
    :cond_2
    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mImsServiceUp:[Z

    aput-boolean v9, v3, v0

    .line 399
    :cond_3
    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mLoadSubscriptionDone:[Z

    aput-boolean v9, v3, v0

    .line 400
    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mDBSyncState:[I

    const/4 v5, 0x1

    aput v5, v3, v0

    .line 401
    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->unloadSubScription()V

    .line 402
    iput v9, p0, Lcom/sec/epdg/EpdgService;->retryInitializeCnt:I

    .line 405
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 406
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 407
    .local v3, "ba":Landroid/bluetooth/BluetoothAdapter;
    if-nez v3, :cond_4

    .line 408
    const-string v5, "BluetoothAdapter is null, return"

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return-void

    .line 411
    :cond_4
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v5

    .line 412
    .local v5, "sapStatus":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IntentReceiver( Sim state is UNKNOWN.), SAP status : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    if-ne v5, v8, :cond_5

    .line 414
    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mSapState:[I

    aput v8, v4, v0

    .line 418
    .end local v3    # "ba":Landroid/bluetooth/BluetoothAdapter;
    .end local v5    # "sapStatus":I
    :cond_5
    if-lez v0, :cond_6

    add-int/lit8 v3, v0, -0x1

    goto :goto_0

    :cond_6
    add-int/lit8 v3, v0, 0x1

    .line 419
    .local v3, "otherSimSlot":I
    :goto_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isReadyForEpdgConnect()Z

    move-result v4

    if-nez v4, :cond_a

    .line 420
    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    const/4 v5, 0x5

    if-ne v5, v4, :cond_8

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    const/16 v6, 0x3f4

    .line 421
    invoke-virtual {v4, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mIsWaitingSimmoCheck:[Z

    aget-boolean v4, v4, v3

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mDBSyncState:[I

    aget v6, v4, v3

    const/4 v7, 0x3

    if-eq v6, v7, :cond_7

    aget v4, v4, v3

    if-ne v4, v8, :cond_8

    .line 426
    :cond_7
    invoke-virtual {p0, v5}, Lcom/sec/epdg/EpdgService;->scheduleTerminateEvent(I)V

    goto :goto_1

    .line 428
    :cond_8
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->terminateEpdgService()V

    goto :goto_1

    .line 431
    .end local v3    # "otherSimSlot":I
    :cond_9
    const-string v3, "READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 432
    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mLoadSubscriptionDone:[Z

    aput-boolean v9, v3, v0

    .line 434
    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mSapState:[I

    aget v4, v3, v0

    if-ne v4, v8, :cond_b

    .line 435
    aput v9, v3, v0

    .line 436
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->callLoadSubScription(I)V

    goto :goto_2

    .line 431
    :cond_a
    :goto_1
    nop

    .line 439
    :cond_b
    :goto_2
    return-void
.end method

.method public static declared-synchronized incrementThreadCounter()Z
    .locals 3

    const-class v0, Lcom/sec/epdg/EpdgService;

    monitor-enter v0

    .line 179
    :try_start_0
    sget v1, Lcom/sec/epdg/EpdgService;->LOCAL_THREAD_COUNTER:I

    if-gtz v1, :cond_0

    sget-boolean v1, Lcom/sec/epdg/EpdgService;->TERMINATING:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/sec/epdg/EpdgService;->IS_PARTIAL_RUN:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 180
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 182
    :cond_0
    :try_start_1
    sget v1, Lcom/sec/epdg/EpdgService;->LOCAL_THREAD_COUNTER:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/sec/epdg/EpdgService;->LOCAL_THREAD_COUNTER:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    monitor-exit v0

    return v2

    .line 178
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initializeEpdgService()V
    .locals 8

    .line 195
    const-string v0, "[EPDGService]"

    const-string v1, "initializeEpdgService()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x0

    sput v0, Lcom/sec/epdg/EpdgService;->LOCAL_THREAD_COUNTER:I

    .line 197
    iput-object p0, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    .line 198
    sput-boolean v0, Lcom/sec/epdg/EpdgService;->TERMINATING:Z

    .line 199
    sput-boolean v0, Lcom/sec/epdg/EpdgService;->IS_PARTIAL_RUN:Z

    .line 200
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 201
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EpdgThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 202
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 203
    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgServiceHandler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$EpdgServiceHandler;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Looper;)V

    sput-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    .line 204
    new-instance v0, Lcom/sec/epdg/VodaProvisionReceiver;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/VodaProvisionReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mVodaProvisionReceiver:Lcom/sec/epdg/VodaProvisionReceiver;

    .line 205
    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sec.imsservice.intent.action.EPDG_NAME"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 208
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 209
    iput-boolean v1, p0, Lcom/sec/epdg/EpdgService;->mIsDualSim:Z

    .line 211
    :cond_0
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    new-instance v2, Lcom/sec/epdg/EpdgSubScription;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v0, v4}, Lcom/sec/epdg/EpdgSubScription;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    aput-object v2, v1, v0

    .line 212
    invoke-static {v0}, Lcom/sec/epdg/Logger/EpdgDumpState;->makeInstance(I)Lcom/sec/epdg/Logger/EpdgDumpState;

    .line 213
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgManagerStubImpl:[Lcom/sec/epdg/EpdgManagerStubImpl;

    new-instance v2, Lcom/sec/epdg/EpdgManagerStubImpl;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v0}, Lcom/sec/epdg/EpdgManagerStubImpl;-><init>(Lcom/sec/epdg/EpdgSubScription;Landroid/content/Context;I)V

    aput-object v2, v1, v0

    .line 214
    add-int/lit8 v1, v0, 0x1

    .line 215
    .local v1, "slotId":I
    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifi_call_enable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 216
    .local v2, "enable":I
    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wifi_call_preferred"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 217
    .local v3, "pref":I
    iget-object v5, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wifi_call_when_roaming"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 218
    .local v4, "roamPref":I
    iget-object v5, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, v2, v3, v4}, Lcom/sec/epdg/VoWifiSettings;->savePreviousSimSettings(Landroid/content/Context;IIII)V

    .line 207
    .end local v1    # "slotId":I
    .end local v2    # "enable":I
    .end local v3    # "pref":I
    .end local v4    # "roamPref":I
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 220
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Lcom/sec/epdg/EpdgService$IntentReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$IntentReceiver;-><init>(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$1;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 221
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 222
    .local v0, "IntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    const-string v1, "com.android.ims.IMS_SERVICE_UP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string v1, "com.sec.epdg.EPDG_INITIALIZE_RETRY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    const-string v1, "com.samsung.carrier.action.CARRIER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 228
    const-string v1, "epdgService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_2

    .line 229
    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mBinder:Lcom/sec/epdg/IEpdgManager$Stub;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 231
    :cond_2
    return-void
.end method

.method private isAnySimAvailableWithWfcEnabled()Z
    .locals 4

    .line 521
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ne v2, v0, :cond_1

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    aget-object v0, v0, v1

    .line 522
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isCanOperator()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->isWFCEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    :cond_0
    return v3

    .line 526
    :cond_1
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgService;->mIsDualSim:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    if-ne v2, v0, :cond_3

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    aget-object v0, v0, v3

    .line 527
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isCanOperator()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v3}, Lcom/sec/epdg/EpdgService;->isWFCEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 528
    :cond_2
    return v3

    .line 531
    :cond_3
    return v1
.end method

.method private isReadyForEpdgConnect()Z
    .locals 2

    .line 502
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->TERMINATING:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->IS_PARTIAL_RUN:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 505
    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isUSOperator()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isAnySimAvailableWithWfcEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 503
    :cond_3
    :goto_0
    return v1
.end method

.method private isUSOperator()Z
    .locals 4

    .line 509
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ne v2, v0, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isUSOperator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    return v3

    .line 512
    :cond_0
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgService;->mIsDualSim:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    if-ne v2, v0, :cond_1

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    aget-object v0, v0, v3

    .line 513
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isUSOperator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    return v3

    .line 516
    :cond_1
    return v1
.end method

.method private isWFCEnabled(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 535
    add-int/lit8 v0, p1, 0x1

    .line 536
    .local v0, "slotId":I
    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifi_call_enable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private onSimMoStatusChanged(ZI)V
    .locals 6
    .param p1, "simmo"    # Z
    .param p2, "simSlot"    # I

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSimMoStatusChanged, SimMobility : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Slot : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[EPDGService]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getImsManagerHelper()Lcom/sec/epdg/EpdgImsManagerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgImsManagerHelper;->setSimMobilityStatus(Z)V

    .line 452
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getImsManagerHelper()Lcom/sec/epdg/EpdgImsManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgImsManagerHelper;->unregisterSimMobilityStatusListener()V

    .line 453
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mImsServiceUp:[Z

    const/4 v2, 0x1

    aput-boolean v2, v0, p2

    .line 454
    invoke-direct {p0, p2}, Lcom/sec/epdg/EpdgService;->callLoadSubScription(I)V

    .line 455
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mIsWaitingSimmoCheck:[Z

    aget-boolean v3, v0, p2

    if-eqz v3, :cond_2

    .line 456
    const/4 v3, 0x0

    aput-boolean v3, v0, p2

    .line 457
    aget-boolean v4, v0, v3

    if-nez v4, :cond_2

    aget-boolean v0, v0, v2

    if-nez v0, :cond_2

    .line 458
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mLoadSubscriptionDone:[Z

    aget-boolean v4, v0, v3

    if-nez v4, :cond_2

    aget-boolean v0, v0, v2

    if-nez v0, :cond_2

    .line 459
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mDBSyncState:[I

    aget v4, v0, v3

    const/4 v5, 0x4

    if-eq v4, v2, :cond_0

    aget v0, v0, v3

    if-ne v0, v5, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mDBSyncState:[I

    aget v3, v0, v2

    if-eq v3, v2, :cond_1

    aget v0, v0, v2

    if-ne v0, v5, :cond_2

    .line 461
    :cond_1
    const-string v0, "performEpdgReadinessOperation() termination started.."

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->terminateEpdgService()V

    .line 467
    :cond_2
    return-void
.end method

.method private performEpdgReadinessOperation()V
    .locals 5

    .line 624
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_3

    .line 625
    const/4 v1, 0x5

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 626
    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mImsServiceUp:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_1

    .line 627
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getMnoNameFromDB()Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, "mnoNameFromDB":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    aget-object v3, v3, v0

    .line 629
    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getImsManagerHelper()Lcom/sec/epdg/EpdgImsManagerHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgImsManagerHelper;->getMnoNameFromImsProfile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 630
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->checkSimMoStatusForSync(I)V

    .line 631
    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mIsWaitingSimmoCheck:[Z

    aput-boolean v2, v3, v0

    .line 633
    .end local v1    # "mnoNameFromDB":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 635
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->callLoadSubScription(I)V

    .line 624
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    .end local v0    # "phoneId":I
    :cond_3
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mIsWaitingSimmoCheck:[Z

    const/4 v1, 0x0

    aget-boolean v3, v0, v1

    if-nez v3, :cond_8

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_4

    goto :goto_2

    .line 644
    :cond_4
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mLoadSubscriptionDone:[Z

    aget-boolean v3, v0, v1

    if-nez v3, :cond_7

    aget-boolean v0, v0, v2

    if-nez v0, :cond_7

    .line 645
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mDBSyncState:[I

    aget v3, v0, v1

    const/4 v4, 0x4

    if-eq v3, v2, :cond_5

    aget v0, v0, v1

    if-ne v0, v4, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mDBSyncState:[I

    aget v1, v0, v2

    if-eq v1, v2, :cond_6

    aget v0, v0, v2

    if-ne v0, v4, :cond_7

    .line 647
    :cond_6
    const-string v0, "[EPDGService]"

    const-string v1, "performEpdgReadinessOperation() termination started.."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->terminateEpdgService()V

    .line 651
    :cond_7
    return-void

    .line 641
    :cond_8
    :goto_2
    return-void
.end method

.method private saveUpdatedCarrierId(II)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "carrierId"    # I

    .line 682
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "carrierId_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 683
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 684
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "carrierId"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 685
    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v3, "swversion"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 686
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 687
    return-void
.end method

.method private startRetryAlarm()V
    .locals 6

    .line 654
    const-string v0, "[EPDGService]"

    const-string v1, "startRetryAlarm"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-boolean v1, p0, Lcom/sec/epdg/EpdgService;->mRetryingAlarmRunning:Z

    if-eqz v1, :cond_0

    .line 656
    const-string v1, "Retry Alarm is running. Ignore."

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    return-void

    .line 659
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgService;->mRetryingAlarmRunning:Z

    .line 660
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    .line 661
    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 662
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.epdg.EPDG_INITIALIZE_RETRY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mInitializingIntent:Landroid/content/Intent;

    .line 663
    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {v2, v3, v1, v4, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mInitializingPendingIntent:Landroid/app/PendingIntent;

    .line 665
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mInitializingPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 667
    return-void
.end method

.method private stopRetryAlarm()V
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mInitializingPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 615
    const-string v0, "[EPDGService]"

    const-string v1, "stopRetryAlarm"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 617
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mInitializingPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 618
    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mInitializingPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 619
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mInitializingPendingIntent:Landroid/app/PendingIntent;

    .line 621
    .end local v0    # "am":Landroid/app/AlarmManager;
    :cond_0
    return-void
.end method

.method private syncSettingsDBWithEpdgDB(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 595
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mDBSyncState:[I

    aget v1, v0, p1

    const-string v2, "syncSettingsDBWithEpdgDB "

    const-string v3, "[EPDGService]"

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    aget v1, v0, p1

    const/4 v5, 0x4

    if-ne v1, v5, :cond_0

    goto :goto_0

    .line 599
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mImsServiceUp:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_1

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ims service not up, will retry on iMS Service up event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mDBSyncState:[I

    const/4 v1, 0x2

    aput v1, v0, p1

    .line 602
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startRetryAlarm()V

    .line 603
    return-void

    .line 605
    :cond_1
    aput v4, v0, p1

    .line 606
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 607
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 608
    iput v5, v0, Landroid/os/Message;->arg2:I

    .line 609
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lcom/sec/epdg/EpdgSubScription;->syncSettingsDBwithEpdgDB(Landroid/os/Message;)V

    .line 610
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/sec/epdg/EpdgService;->scheduleTerminateEvent(I)V

    .line 611
    return-void

    .line 596
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " already in sync, so no need to resync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method private terminateEpdgService()V
    .locals 7

    .line 549
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->TERMINATING:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->IS_PARTIAL_RUN:Z

    if-nez v0, :cond_0

    .line 550
    return-void

    .line 553
    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isReadyForEpdgConnect()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 554
    invoke-direct {p0, v2}, Lcom/sec/epdg/EpdgService;->callLoadSubScription(I)V

    .line 555
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgService;->mIsDualSim:Z

    if-eqz v0, :cond_1

    .line 556
    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->callLoadSubScription(I)V

    .line 558
    :cond_1
    return-void

    .line 562
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mIsWaitingSimmoCheck:[Z

    aget-boolean v3, v0, v2

    const/4 v4, 0x5

    if-nez v3, :cond_a

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3

    goto :goto_3

    .line 568
    :cond_3
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mDBSyncState:[I

    aget v3, v0, v2

    const/4 v5, 0x3

    if-eq v3, v5, :cond_9

    aget v3, v0, v2

    const/4 v6, 0x2

    if-eq v3, v6, :cond_9

    aget v3, v0, v1

    if-eq v3, v5, :cond_9

    aget v0, v0, v1

    if-ne v0, v6, :cond_4

    goto :goto_2

    .line 574
    :cond_4
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isPdnIdleStateOverWifi()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/sec/epdg/EpdgService;->mIsDualSim:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    aget-object v0, v0, v1

    .line 575
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->isPdnIdleStateOverWifi()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 581
    :cond_5
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->TERMINATING:Z

    .line 582
    sput-boolean v2, Lcom/sec/epdg/EpdgService;->IS_PARTIAL_RUN:Z

    .line 583
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->stopRetryAlarm()V

    .line 584
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    if-eqz v0, :cond_7

    .line 585
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 586
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    aget-object v3, v1, v0

    if-eqz v3, :cond_6

    .line 587
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->unregisterAll()V

    .line 585
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 591
    .end local v0    # "i":I
    :cond_7
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->notifyTermination()V

    .line 592
    return-void

    .line 576
    :cond_8
    :goto_1
    const-string v0, "[EPDGService]"

    const-string v1, "PDN is not idle yet, wait!!"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgService;->scheduleTerminateEvent(I)V

    .line 578
    return-void

    .line 570
    :cond_9
    :goto_2
    invoke-virtual {p0, v4}, Lcom/sec/epdg/EpdgService;->scheduleTerminateEvent(I)V

    .line 571
    return-void

    .line 563
    :cond_a
    :goto_3
    invoke-virtual {p0, v4}, Lcom/sec/epdg/EpdgService;->scheduleTerminateEvent(I)V

    .line 564
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 691
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 692
    return-void

    .line 695
    :cond_0
    nop

    .line 696
    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump EpdgService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 698
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 701
    return-void

    .line 703
    :cond_1
    const-string v0, "EpdgService Dumpstate"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    .line 705
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    aget-object v2, v1, v0

    if-eqz v2, :cond_2

    .line 706
    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Lcom/sec/epdg/EpdgSubScription;->dump(Ljava/io/PrintWriter;)V

    .line 704
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 709
    .end local v0    # "i":I
    :cond_3
    invoke-static {}, Lcom/sec/epdg/Logger/CriticalLogger;->getInstance()Lcom/sec/epdg/Logger/CriticalLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Logger/CriticalLogger;->flush()V

    .line 710
    return-void
.end method

.method protected getIntentReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method protected getRetryInitializeCnt()I
    .locals 1

    .line 724
    iget v0, p0, Lcom/sec/epdg/EpdgService;->retryInitializeCnt:I

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 88
    const-string v0, "[EPDGService]"

    const-string v1, "onBind()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mBinder:Lcom/sec/epdg/IEpdgManager$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .line 81
    const-string v0, "[EPDGService]"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->initializeEpdgService()V

    .line 84
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    const/16 v1, 0x3f4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 85
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 145
    const-string v0, "[EPDGService]"

    const-string v1, " EPDG Service GRACEFUL TERMINATION STARTED  ==================== "

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->TERMINATING:Z

    .line 147
    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 148
    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    iput-object v2, p0, Lcom/sec/epdg/EpdgService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mVodaProvisionReceiver:Lcom/sec/epdg/VodaProvisionReceiver;

    if-eqz v1, :cond_1

    .line 152
    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 153
    iput-object v2, p0, Lcom/sec/epdg/EpdgService;->mVodaProvisionReceiver:Lcom/sec/epdg/VodaProvisionReceiver;

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->stopRetryAlarm()V

    .line 156
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 157
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 158
    sput-object v2, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 162
    :cond_3
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    if-eqz v1, :cond_5

    .line 163
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 164
    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    aget-object v4, v3, v1

    if-eqz v4, :cond_4

    .line 165
    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->deInitialize()V

    .line 166
    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    aput-object v2, v3, v1

    .line 167
    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgManagerStubImpl:[Lcom/sec/epdg/EpdgManagerStubImpl;

    aput-object v2, v3, v1

    .line 163
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "i":I
    :cond_5
    invoke-static {}, Lcom/sec/epdg/WfcLocationDetector;->deinitialize()V

    .line 172
    invoke-static {}, Lcom/sec/epdg/EpdgUtilExt;->deinitialize()V

    .line 173
    invoke-static {}, Lcom/sec/epdg/WfcController/WfcActivityController;->deinitialize()V

    .line 174
    const-string v1, " EPDG Service GRACEFUL TERMINATION FINISHED ====================:"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 176
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 94
    const-string v0, "[EPDGService]"

    const-string v1, "onStartCommand()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    const/16 v2, 0x3f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 97
    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 98
    const/4 v5, 0x0

    .line 99
    .local v5, "phoneId":I
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x427a9bd1

    const/4 v8, 0x2

    if-eq v6, v7, :cond_3

    const v7, -0x1ff1c7b7

    if-eq v6, v7, :cond_2

    const v7, 0x562f7af8

    if-eq v6, v7, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v6, "com.sec.imsservice.intent.action.EPDG_NAME"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v8

    goto :goto_1

    :cond_2
    const-string v6, "com.samsung.intent.action.SETTINGS_NETWORK_RESET"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v4

    goto :goto_1

    :cond_3
    const-string v6, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v1

    goto :goto_1

    :goto_0
    move v6, v3

    :goto_1
    if-eqz v6, :cond_6

    if-eq v6, v4, :cond_5

    if-eq v6, v8, :cond_4

    goto :goto_3

    .line 115
    :cond_4
    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mVodaProvisionReceiver:Lcom/sec/epdg/VodaProvisionReceiver;

    iget-object v7, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, p1}, Lcom/sec/epdg/VodaProvisionReceiver;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 116
    goto :goto_3

    .line 107
    :cond_5
    const-string v6, "subId"

    invoke-virtual {p1, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 108
    .local v6, "subId":I
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v5

    .line 109
    if-le v5, v3, :cond_7

    .line 110
    sget-object v7, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSubScription;->resetWfcSettings()V

    goto :goto_3

    .line 101
    .end local v6    # "subId":I
    :cond_6
    const/4 v5, 0x0

    :goto_2
    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 102
    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgSubScription:[Lcom/sec/epdg/EpdgSubScription;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSubScription;->resetWfcSettings()V

    .line 101
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 123
    .end local v5    # "phoneId":I
    :cond_7
    :goto_3
    sget-boolean v5, Lcom/sec/epdg/EpdgService;->TERMINATING:Z

    if-eqz v5, :cond_a

    .line 124
    const/4 v5, 0x0

    .restart local v5    # "phoneId":I
    :goto_4
    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 125
    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mDBSyncState:[I

    aput v4, v6, v5

    .line 126
    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mLoadSubscriptionDone:[Z

    aput-boolean v1, v6, v5

    .line 127
    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mImsServiceUp:[Z

    aput-boolean v1, v6, v5

    .line 128
    const/4 v6, 0x5

    iget-object v7, p0, Lcom/sec/epdg/EpdgService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    if-eq v6, v7, :cond_8

    .line 129
    invoke-static {}, Lcom/sec/epdg/WfcController/WfcActivityController;->getInstance()Lcom/sec/epdg/WfcController/WfcActivityController;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5}, Lcom/sec/epdg/WfcController/WfcActivityController;->disableWfcActivity(Landroid/content/Context;I)V

    .line 131
    :cond_8
    add-int/lit8 v6, v5, 0x1

    .line 132
    .local v6, "slotId":I
    iget-object v7, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wifi_call_enable"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 133
    .local v7, "enable":I
    iget-object v8, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wifi_call_preferred"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 134
    .local v8, "pref":I
    iget-object v9, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "wifi_call_when_roaming"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 135
    .local v9, "roamPref":I
    iget-object v10, p0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v10, v5, v7, v8, v9}, Lcom/sec/epdg/VoWifiSettings;->savePreviousSimSettings(Landroid/content/Context;IIII)V

    .line 124
    .end local v6    # "slotId":I
    .end local v7    # "enable":I
    .end local v8    # "pref":I
    .end local v9    # "roamPref":I
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 137
    .end local v5    # "phoneId":I
    :cond_9
    sput-boolean v4, Lcom/sec/epdg/EpdgService;->IS_PARTIAL_RUN:Z

    .line 139
    :cond_a
    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 140
    return v1
.end method

.method protected scheduleTerminateEvent(I)V
    .locals 4
    .param p1, "timeInSecs"    # I

    .line 540
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    return-void

    .line 543
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleTerminateEvent after : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " secs."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[EPDGService]"

    invoke-static {v2, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 545
    return-void
.end method
