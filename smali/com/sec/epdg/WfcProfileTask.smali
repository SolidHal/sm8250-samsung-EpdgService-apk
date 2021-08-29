.class Lcom/sec/epdg/WfcProfileTask;
.super Landroid/os/AsyncTask;
.source "WfcProfileTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mPhoneId:I

.field private mSsid:Ljava/lang/String;

.field private mSubScription:Lcom/sec/epdg/EpdgSubScription;

.field private mWfcDetectorListener:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/sec/epdg/EpdgSubScription;Ljava/lang/String;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "epdgSubScription"    # Lcom/sec/epdg/EpdgSubScription;
    .param p4, "ssid"    # Ljava/lang/String;
    .param p5, "phoneId"    # I

    .line 25
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 101
    new-instance v0, Lcom/sec/epdg/WfcProfileTask$1;

    invoke-direct {v0, p0}, Lcom/sec/epdg/WfcProfileTask$1;-><init>(Lcom/sec/epdg/WfcProfileTask;)V

    iput-object v0, p0, Lcom/sec/epdg/WfcProfileTask;->mWfcDetectorListener:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [WfcProfileTask]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/WfcProfileTask;->TAG:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/sec/epdg/WfcProfileTask;->mHandler:Landroid/os/Handler;

    .line 28
    iput-object p2, p0, Lcom/sec/epdg/WfcProfileTask;->mContext:Landroid/content/Context;

    .line 29
    iput-object p3, p0, Lcom/sec/epdg/WfcProfileTask;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 30
    iput-object p4, p0, Lcom/sec/epdg/WfcProfileTask;->mSsid:Ljava/lang/String;

    .line 31
    iput p5, p0, Lcom/sec/epdg/WfcProfileTask;->mPhoneId:I

    .line 33
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/sec/epdg/WfcProfileTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/sec/epdg/WfcProfileTask;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/WfcProfileTask;

    .line 17
    iget-object v0, p0, Lcom/sec/epdg/WfcProfileTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/epdg/WfcProfileTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/WfcProfileTask;

    .line 17
    iget-object v0, p0, Lcom/sec/epdg/WfcProfileTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/epdg/WfcProfileTask;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/WfcProfileTask;

    .line 17
    iget v0, p0, Lcom/sec/epdg/WfcProfileTask;->mPhoneId:I

    return v0
.end method

.method private detectCountryUsingEpdg(Ljava/lang/String;)V
    .locals 6
    .param p1, "ssid"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/sec/epdg/WfcProfileTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/WfcLocationDetector;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/WfcLocationDetector;

    move-result-object v0

    .line 91
    .local v0, "detector":Lcom/sec/epdg/WfcLocationDetector;
    invoke-virtual {v0}, Lcom/sec/epdg/WfcLocationDetector;->getDetectedCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "countryIso":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 93
    iget-object v2, p0, Lcom/sec/epdg/WfcProfileTask;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/epdg/WfcProfileTask;->mPhoneId:I

    const/4 v4, 0x1

    const-string v5, "COUNTRY_DETECTED"

    invoke-static {v2, v3, v5, v4, v1}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUpdateUnifiedWfcEvent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/WfcProfileTask;->TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/epdg/WfcProfileTask;->mWfcDetectorListener:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener;

    invoke-virtual {v0, v2, v3}, Lcom/sec/epdg/WfcLocationDetector;->registerDetectorListener(Ljava/lang/String;Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener;)V

    .line 96
    invoke-virtual {v0, p1}, Lcom/sec/epdg/WfcLocationDetector;->startLocatingTask(Ljava/lang/String;)V

    .line 98
    :goto_0
    return-void
.end method

.method private doExec()Ljava/lang/Boolean;
    .locals 8

    .line 37
    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/WfcProfileTask;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getVowifiSetting()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    monitor-exit p0

    return-object v0

    .line 41
    :cond_0
    sget-object v0, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    .line 42
    .local v0, "status":Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .local v2, "newAp":Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_start_1
    invoke-static {}, Lcom/sec/epdg/WfcController/WfcActivityController;->getInstance()Lcom/sec/epdg/WfcController/WfcActivityController;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/epdg/WfcProfileTask;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/epdg/WfcProfileTask;->mPhoneId:I

    invoke-virtual {v3, v4, v5}, Lcom/sec/epdg/WfcController/WfcActivityController;->getWfcComponent(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "componentName":[Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgWfcProfileReader;->getInstance()Lcom/sec/epdg/EpdgWfcProfileReader;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/epdg/WfcProfileTask;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/epdg/WfcProfileTask;->mSsid:Ljava/lang/String;

    aget-object v7, v3, v1

    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/sec/epdg/EpdgWfcProfileReader;->checkWfcProfileStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    move-result-object v4

    move-object v0, v4

    .line 47
    iget-object v4, p0, Lcom/sec/epdg/WfcProfileTask;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->isWifiConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/epdg/WfcProfileTask;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSubScription;->isVoWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 50
    iget-object v4, p0, Lcom/sec/epdg/WfcProfileTask;->TAG:Ljava/lang/String;

    const-string v5, "New AP: "

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v4, p0, Lcom/sec/epdg/WfcProfileTask;->mSsid:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/sec/epdg/WfcProfileTask;->detectCountryUsingEpdg(Ljava/lang/String;)V

    .line 54
    :cond_1
    sget-object v4, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-ne v0, v4, :cond_2

    .line 57
    sget-object v4, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v4

    .line 61
    .end local v3    # "componentName":[Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 59
    :catch_0
    move-exception v3

    .line 60
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 62
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v3, p0, Lcom/sec/epdg/WfcProfileTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WfcProfileTask:doInBackground - completed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v3, Ljava/lang/Boolean;

    sget-object v4, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    if-ne v0, v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-direct {v3, v1}, Ljava/lang/Boolean;-><init>(Z)V

    monitor-exit p0

    return-object v3

    .line 64
    .end local v0    # "status":Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    .end local v2    # "newAp":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Void;

    .line 69
    invoke-static {}, Lcom/sec/epdg/EpdgService;->incrementThreadCounter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/sec/epdg/WfcProfileTask;->doExec()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/epdg/WfcProfileTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 77
    invoke-static {}, Lcom/sec/epdg/EpdgService;->decrementThreadCounter()V

    .line 78
    iget-object v0, p0, Lcom/sec/epdg/WfcProfileTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WfcProfileTask:onPostExecute: result is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/sec/epdg/WfcProfileTask;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 83
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x4b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 84
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 85
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 86
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/epdg/WfcProfileTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
