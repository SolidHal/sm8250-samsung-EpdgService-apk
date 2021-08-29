.class public Lcom/sec/epdg/throttle/ThrottleManager;
.super Ljava/lang/Object;
.source "ThrottleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;
    }
.end annotation


# static fields
.field private static final CLEANUP_INTERVAL:J = 0x5265c00L

.field private static final MAX_SSID_SUPPORTED:I = 0x14

.field private static final MIN_RETRY_INTERVAL:I

.field private static SUB_TAG:Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentSsid:Ljava/lang/String;

.field private mCurrentTimer:Lcom/sec/epdg/throttle/ThrottleTimer;

.field private mEpdgHandler:Landroid/os/Handler;

.field private mIsRetryEnabled:Z

.field private mIsThrottleEnabled:Z

.field private mPermanentThrottleMgr:Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;

.field private mPhoneId:I

.field private mTimerList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/sec/epdg/throttle/ThrottleTimer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-string v0, "[THROTTLEMANAGER]"

    sput-object v0, Lcom/sec/epdg/throttle/ThrottleManager;->SUB_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZILandroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isRetryEnabled"    # Z
    .param p3, "isThrottleEnabled"    # Z
    .param p4, "phoneid"    # I
    .param p5, "hdr"    # Landroid/os/Handler;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->TAG:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/epdg/throttle/ThrottleManager;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->TAG:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mContext:Landroid/content/Context;

    .line 77
    iput p4, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPhoneId:I

    .line 78
    iput-object p5, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mEpdgHandler:Landroid/os/Handler;

    .line 79
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    .line 81
    new-instance v0, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;-><init>(Lcom/sec/epdg/throttle/ThrottleManager;Lcom/sec/epdg/throttle/ThrottleManager$1;)V

    iput-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPermanentThrottleMgr:Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;

    .line 82
    iput-boolean p2, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mIsRetryEnabled:Z

    .line 83
    iput-boolean p3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mIsThrottleEnabled:Z

    .line 84
    invoke-static {p1}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    .line 85
    return-void
.end method

.method static synthetic access$100(Lcom/sec/epdg/throttle/ThrottleManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/throttle/ThrottleManager;

    .line 34
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addOrGetTimer(Ljava/lang/String;I)V
    .locals 8
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "reqTimerType"    # I

    .line 115
    invoke-static {p2}, Lcom/sec/epdg/Constants/ThrottleConstants;->getRetryTimeConfig(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "timerConfig":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addOrGetTimer apnType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " timerConfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 118
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->TAG:Ljava/lang/String;

    const-string v2, "addOrGetTimer(): existing timer case"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/sec/epdg/throttle/ThrottleTimer;

    iput-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentTimer:Lcom/sec/epdg/throttle/ThrottleTimer;

    .line 120
    invoke-virtual {v1}, Lcom/sec/epdg/throttle/ThrottleTimer;->getTimerType()I

    move-result v1

    if-eq p2, v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addOrGetTimer resetting the timer config reqTimerType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " currentTimerType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentTimer:Lcom/sec/epdg/throttle/ThrottleTimer;

    invoke-virtual {v3}, Lcom/sec/epdg/throttle/ThrottleTimer;->getTimerType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v1, Lcom/sec/epdg/throttle/ThrottleTimer;

    invoke-direct {v1, v0, p2}, Lcom/sec/epdg/throttle/ThrottleTimer;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentTimer:Lcom/sec/epdg/throttle/ThrottleTimer;

    .line 125
    iget-object v2, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPermanentThrottleMgr:Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;

    invoke-virtual {v1}, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->resetPermanentThrottleErrorCount()V

    .line 129
    :cond_0
    iget-boolean v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mIsThrottleEnabled:Z

    if-eqz v1, :cond_5

    .line 131
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentTimer:Lcom/sec/epdg/throttle/ThrottleTimer;

    invoke-virtual {v1}, Lcom/sec/epdg/throttle/ThrottleTimer;->getTimeLeft()J

    move-result-wide v1

    .line 134
    .local v1, "time":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const-string v4, "Suppressed"

    if-lez v3, :cond_3

    .line 135
    iget-object v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOrGetTimer(): time left for existing ssid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-static {}, Lcom/sec/epdg/Logger/Log;->isUserBinary()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " time: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v1, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " sec"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 135
    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleManager;->getRetryPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 139
    .local v3, "mPendingIntent":Landroid/app/PendingIntent;
    if-eqz v3, :cond_2

    .line 140
    iget-object v4, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v6, v1

    .line 140
    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 143
    :cond_2
    iget-object v4, p0, Lcom/sec/epdg/throttle/ThrottleManager;->TAG:Ljava/lang/String;

    const-string v5, "addOrGetTimer(): RetryPendingIntent is null."

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .end local v3    # "mPendingIntent":Landroid/app/PendingIntent;
    :goto_1
    goto :goto_3

    .line 146
    :cond_3
    iget-object v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOrGetTimer(): timer expired for ssid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-static {}, Lcom/sec/epdg/Logger/Log;->isUserBinary()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " time "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 146
    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .end local v1    # "time":J
    :cond_5
    :goto_3
    return-void

    .line 155
    :cond_6
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_7

    .line 156
    invoke-virtual {p0}, Lcom/sec/epdg/throttle/ThrottleManager;->cleanup()V

    .line 158
    :cond_7
    new-instance v1, Lcom/sec/epdg/throttle/ThrottleTimer;

    invoke-direct {v1, v0, p2}, Lcom/sec/epdg/throttle/ThrottleTimer;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentTimer:Lcom/sec/epdg/throttle/ThrottleTimer;

    .line 159
    iget-object v2, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-void
.end method

.method private getDataRetryIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;

    .line 520
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 521
    .local v0, "intent":Landroid/content/Intent;
    if-nez p1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->TAG:Ljava/lang/String;

    const-string v2, "getDataRetryIntent apnType is null."

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const/4 v1, 0x0

    return-object v1

    .line 525
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.sec.epdg.RETRY_TIMER_EXPIRED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    return-object v0
.end method

.method private getRetryPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "apnType"    # Ljava/lang/String;

    .line 530
    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleManager;->getDataRetryIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 531
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 532
    const-string v1, "apntype"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    const-string v2, "ssid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 535
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {v1, v2, v0, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1

    .line 538
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getRetryTimerForSpecificOperator(II)I
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "type"    # I

    .line 206
    move v0, p2

    .line 207
    .local v0, "reqTimerType":I
    iget v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorOrangeGlobal()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 209
    const/16 v1, 0x18

    if-eq p1, v1, :cond_2

    const/16 v1, 0x2328

    if-eq p1, v1, :cond_1

    const/16 v1, 0x232e

    if-eq p1, v1, :cond_0

    const/16 v1, 0x2af9

    if-eq p1, v1, :cond_1

    const/16 v1, 0x2b03

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 223
    :cond_0
    const/16 v0, 0x9

    .line 224
    goto :goto_0

    .line 220
    :cond_1
    const/16 v0, 0x8

    .line 221
    goto :goto_0

    .line 211
    :cond_2
    iget v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    const-string v2, "Orange_ES"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 212
    const/4 v0, 0x7

    goto :goto_0

    .line 214
    :cond_3
    const/4 v0, 0x6

    .line 229
    :cond_4
    :goto_0
    return v0
.end method

.method private increasePermanentCountForNonUSCarrier(IZ)Z
    .locals 8
    .param p1, "ikeErrorCode"    # I
    .param p2, "increase"    # Z

    .line 398
    move v0, p2

    .line 399
    .local v0, "incrPermThrottleCounter":Z
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "increasePermanentCountForNonUSCarrier ikeErrorCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    const-string v2, "Telefonica_DE"

    const-string v3, "SFR_FR"

    const-string v4, "Proximus_BE"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/16 v2, 0x2b03

    const/16 v3, 0x2af9

    const/16 v4, 0x232e

    if-eqz v1, :cond_1

    .line 401
    if-eq p1, v4, :cond_0

    if-eq p1, v3, :cond_0

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 413
    goto/16 :goto_0

    .line 409
    :cond_0
    :pswitch_0
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPermanentThrottleMgr:Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;

    invoke-virtual {v1}, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->setPermanentThrottleErrorCountMax()V

    .line 410
    const/4 v0, 0x1

    .line 411
    goto/16 :goto_0

    .line 415
    :cond_1
    iget v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorOrangeGlobal()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/16 v5, 0x18

    if-eqz v1, :cond_3

    .line 417
    if-eq p1, v5, :cond_2

    const/16 v1, 0x2328

    if-eq p1, v1, :cond_2

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_2

    .line 426
    goto/16 :goto_0

    .line 423
    :cond_2
    const/4 v0, 0x0

    .line 424
    goto/16 :goto_0

    .line 428
    :cond_3
    iget v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    const-string v2, "EE_GB"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 430
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 431
    :cond_4
    iget v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    const-string v2, "Orange_FR"

    const-string v3, "Orange_ES"

    const-string v4, "Orange_PL"

    const-string v6, "Orange_RO"

    const-string v7, "Vodafone_GB"

    filled-new-array {v2, v3, v4, v6, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 432
    if-ne p1, v5, :cond_9

    .line 433
    const/4 v0, 0x0

    goto :goto_0

    .line 435
    :cond_5
    iget v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    const-string v2, "MTS_RU"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 436
    const/16 v1, 0x24

    if-ne p1, v1, :cond_9

    .line 437
    const/4 v0, 0x1

    goto :goto_0

    .line 439
    :cond_6
    iget v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    const-string v2, "Virgin_GB"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/16 v2, 0x232a

    if-eqz v1, :cond_8

    .line 441
    const/16 v1, 0x2000

    if-eq p1, v1, :cond_7

    const/16 v1, 0x2001

    if-eq p1, v1, :cond_7

    if-eq p1, v2, :cond_7

    const/16 v1, 0x2710

    if-eq p1, v1, :cond_7

    const/16 v1, 0x2904

    if-eq p1, v1, :cond_7

    .line 450
    goto :goto_0

    .line 447
    :cond_7
    const/4 v0, 0x1

    .line 448
    goto :goto_0

    .line 452
    :cond_8
    iget v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    const-string v3, "Telefonica_ES"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 454
    if-ne p1, v2, :cond_9

    .line 455
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPermanentThrottleMgr:Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;

    invoke-virtual {v1}, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->setPermanentThrottleErrorCountMax()V

    .line 456
    const/4 v0, 0x1

    .line 460
    :cond_9
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x2328
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private increasePermanentCountForSepcificCarrier(IZ)Z
    .locals 2
    .param p1, "ikeErrorCode"    # I
    .param p2, "increase"    # Z

    .line 464
    move v0, p2

    .line 465
    .local v0, "incrPermThrottleCounter":Z
    iget v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/throttle/ThrottleManager;->increasePermanentCountForNonUSCarrier(IZ)Z

    move-result v0

    goto :goto_1

    .line 466
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/throttle/ThrottleManager;->increasePermanentCountForUSCarrier(IZ)Z

    move-result v0

    .line 470
    :goto_1
    return v0
.end method

.method private increasePermanentCountForUSCarrier(IZ)Z
    .locals 4
    .param p1, "ikeErrorCode"    # I
    .param p2, "increase"    # Z

    .line 379
    move v0, p2

    .line 380
    .local v0, "incrPermThrottleCounter":Z
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "increasePermanentCountForUSCarrier: ikeErrorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    const/16 v1, 0x2001

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    const/16 v1, 0x2000

    if-ne p1, v1, :cond_3

    .line 384
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPermanentThrottleMgr:Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;

    invoke-virtual {v1}, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->setPermanentThrottleErrorCountMax()V

    .line 385
    const/4 v0, 0x1

    goto :goto_0

    .line 387
    :cond_1
    iget v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 388
    const/16 v1, 0x2af9

    if-ne p1, v1, :cond_2

    .line 389
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPermanentThrottleMgr:Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;

    invoke-virtual {v1}, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->setPermanentThrottleErrorCountMax()V

    goto :goto_0

    .line 390
    :cond_2
    const/16 v1, 0x2af8

    if-ne p1, v1, :cond_3

    .line 391
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPermanentThrottleMgr:Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;

    invoke-virtual {v1}, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->setPermanentThrottleErrorCountMax()V

    .line 394
    :cond_3
    :goto_0
    return v0
.end method

.method private updatePermanentThrottleState(Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError;I)V
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/sec/epdg/ErrorCode/IWlanError;
    .param p3, "backoffTimer"    # I

    .line 474
    const/4 v0, 0x0

    .line 475
    .local v0, "incrPermThrottleCounter":Z
    const/4 v1, 0x0

    .line 476
    .local v1, "ikeErrorCode":I
    if-nez p2, :cond_0

    .line 477
    iget-object v2, p0, Lcom/sec/epdg/throttle/ThrottleManager;->TAG:Ljava/lang/String;

    const-string v3, "IWlanError null."

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return-void

    .line 480
    :cond_0
    invoke-virtual {p2}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 481
    invoke-virtual {p2}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v1

    .line 483
    const v2, 0x7fffffff

    if-ne p3, v2, :cond_1

    .line 484
    iget-object v2, p0, Lcom/sec/epdg/throttle/ThrottleManager;->TAG:Ljava/lang/String;

    const-string v3, "Received deactivation - No retry"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v2, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPermanentThrottleMgr:Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;

    invoke-virtual {v2}, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->setPermanentThrottleErrorCountMax()V

    .line 486
    return-void

    .line 489
    :cond_1
    const/16 v2, 0x18

    if-eq v1, v2, :cond_2

    const/16 v2, 0x232b

    if-eq v1, v2, :cond_2

    const/16 v2, 0x232e

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2b03

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2b29

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2328

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2329

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2358

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2359

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    .line 506
    const/4 v0, 0x0

    goto :goto_0

    .line 503
    :cond_2
    :pswitch_0
    const/4 v0, 0x1

    .line 504
    nop

    .line 510
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/sec/epdg/throttle/ThrottleManager;->increasePermanentCountForSepcificCarrier(IZ)Z

    move-result v0

    .line 511
    if-eqz v0, :cond_3

    .line 512
    iget-object v2, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPermanentThrottleMgr:Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;

    invoke-virtual {v2}, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->incrementPermanentThrottleCounter()V

    goto :goto_1

    .line 514
    :cond_3
    iget-object v2, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPermanentThrottleMgr:Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;

    invoke-virtual {v2}, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->resetPermanentThrottleErrorCount()V

    .line 517
    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2af8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cleanup()V
    .locals 10

    .line 91
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 92
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 95
    .local v1, "currentTimestamp":J
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 97
    .local v3, "ssid":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 98
    .local v4, "timestamp":J
    sub-long v6, v1, v4

    const-wide/32 v8, 0x5265c00

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 99
    iget-object v6, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v3    # "ssid":Ljava/lang/String;
    .end local v4    # "timestamp":J
    :cond_0
    goto :goto_0

    .line 104
    :cond_1
    goto :goto_1

    .line 102
    :catch_0
    move-exception v3

    .line 103
    .local v3, "cme":Ljava/util/ConcurrentModificationException;
    invoke-virtual {v3}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    .line 105
    .end local v3    # "cme":Ljava/util/ConcurrentModificationException;
    :goto_1
    return-void
.end method

.method public getPermanentErrorCount()I
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPermanentThrottleMgr:Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;

    invoke-virtual {v0}, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->getPermanentThrottleErrorCount()I

    move-result v0

    return v0
.end method

.method public getThrottleInterval()I
    .locals 3

    .line 347
    iget-boolean v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mIsThrottleEnabled:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 348
    return v1

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/sec/epdg/throttle/ThrottleTimer;

    invoke-virtual {v0}, Lcom/sec/epdg/throttle/ThrottleTimer;->getThrottleInterval()I

    move-result v0

    return v0

    .line 353
    :cond_1
    return v1
.end method

.method public getThrottleLeftTime()I
    .locals 4

    .line 358
    iget-boolean v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mIsThrottleEnabled:Z

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 359
    return v1

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 362
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/sec/epdg/throttle/ThrottleTimer;

    invoke-virtual {v0}, Lcom/sec/epdg/throttle/ThrottleTimer;->getTimeLeft()J

    move-result-wide v0

    .line 363
    .local v0, "mLeftTime":J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    goto :goto_0

    .line 366
    :cond_1
    long-to-int v2, v0

    return v2

    .line 364
    :cond_2
    :goto_0
    const v2, 0x5265c00

    return v2

    .line 369
    .end local v0    # "mLeftTime":J
    :cond_3
    return v1
.end method

.method public getThrottleTimerCount()I
    .locals 3

    .line 337
    iget-boolean v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mIsThrottleEnabled:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 338
    return v1

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/sec/epdg/throttle/ThrottleTimer;

    invoke-virtual {v0}, Lcom/sec/epdg/throttle/ThrottleTimer;->getThrottleCount()I

    move-result v0

    return v0

    .line 343
    :cond_1
    return v1
.end method

.method public isRetryThrottled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .line 163
    iget-boolean v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mIsThrottleEnabled:Z

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x0

    return v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPermanentThrottleMgr:Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;

    invoke-virtual {v0}, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->isRetryThrottled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    const/4 v0, 0x1

    return v0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentTimer:Lcom/sec/epdg/throttle/ThrottleTimer;

    if-nez v0, :cond_3

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "reqTimerType":I
    iget v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    const/4 v0, 0x2

    .line 175
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/sec/epdg/throttle/ThrottleManager;->addOrGetTimer(Ljava/lang/String;I)V

    .line 177
    .end local v0    # "reqTimerType":I
    :cond_3
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentTimer:Lcom/sec/epdg/throttle/ThrottleTimer;

    invoke-virtual {v0}, Lcom/sec/epdg/throttle/ThrottleTimer;->isRetryThrottled()Z

    move-result v0

    return v0
.end method

.method public isThrottleRequired(Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError;)Z
    .locals 5
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/sec/epdg/ErrorCode/IWlanError;

    .line 181
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 182
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/epdg/ErrorCode/IWlanError;->getError()Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Details: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/epdg/ErrorCode/IWlanError;->getDetails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-boolean v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mIsThrottleEnabled:Z

    if-nez v1, :cond_0

    .line 187
    return v0

    .line 192
    :cond_0
    iget v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    const-string v2, "EE_GB"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "Throttling require for this error."

    if-eqz v1, :cond_2

    .line 193
    invoke-virtual {p2}, Lcom/sec/epdg/ErrorCode/IWlanError;->getError()Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    move-result-object v1

    sget-object v4, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->IKE_NEGOTIATION_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    if-ne v1, v4, :cond_1

    .line 194
    invoke-virtual {p2}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v1

    const/16 v4, 0x18

    if-ne v1, v4, :cond_1

    .line 195
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return v2

    .line 199
    :cond_1
    return v0

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return v2

    .line 184
    :cond_3
    return v0
.end method

.method public onSimChanged()V
    .locals 1

    .line 373
    iget-boolean v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mIsThrottleEnabled:Z

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/sec/epdg/throttle/ThrottleManager;->resetThrottlingTimer()V

    .line 376
    :cond_0
    return-void
.end method

.method public onWifiConnected(Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;

    .line 333
    iput-object p1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public onWifiDisconnected(Ljava/lang/String;)V
    .locals 5
    .param p1, "apnType"    # Ljava/lang/String;

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentTimer:Lcom/sec/epdg/throttle/ThrottleTimer;

    .line 319
    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleManager;->getDataRetryIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 320
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 321
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {v1, v2, v0, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 323
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 325
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method public resetThrottlingTimer()V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mTimerList:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentTimer:Lcom/sec/epdg/throttle/ThrottleTimer;

    .line 309
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPermanentThrottleMgr:Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;

    invoke-virtual {v0}, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->resetPermanentThrottleErrorCount()V

    .line 310
    return-void
.end method

.method public startTimerOrIncrementCounter(Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError;I)V
    .locals 7
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/sec/epdg/ErrorCode/IWlanError;
    .param p3, "backoffTimer"    # I

    .line 239
    invoke-virtual {p2}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ike error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    const/4 v0, 0x0

    .line 244
    .local v0, "reqTimerType":I
    iget v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    const/4 v0, 0x2

    .line 248
    :cond_1
    iget-boolean v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mIsRetryEnabled:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mIsThrottleEnabled:Z

    if-nez v1, :cond_2

    .line 249
    return-void

    .line 252
    :cond_2
    iget-boolean v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mIsThrottleEnabled:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/sec/epdg/throttle/ThrottleManager;->isThrottleRequired(Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 253
    return-void

    .line 256
    :cond_3
    invoke-virtual {p2}, Lcom/sec/epdg/ErrorCode/IWlanError;->getError()Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->IKE_NEGOTIATION_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    if-ne v1, v2, :cond_7

    invoke-virtual {p2}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 257
    invoke-virtual {p2}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_4

    .line 258
    iget v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    const-string v2, "Vodafone_GB"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 259
    const/4 v0, 0x3

    goto :goto_0

    .line 261
    :cond_4
    invoke-virtual {p2}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v1

    const/16 v2, 0x2904

    if-ne v1, v2, :cond_5

    .line 262
    const/4 v0, 0x1

    goto :goto_0

    .line 263
    :cond_5
    invoke-virtual {p2}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v1

    const/16 v2, 0x2710

    if-ne v1, v2, :cond_6

    .line 264
    iget v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 265
    const/4 v0, 0x5

    .line 268
    :cond_6
    :goto_0
    invoke-virtual {p2}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/epdg/throttle/ThrottleManager;->getRetryTimerForSpecificOperator(II)I

    move-result v0

    .line 270
    :cond_7
    invoke-direct {p0, p1, v0}, Lcom/sec/epdg/throttle/ThrottleManager;->addOrGetTimer(Ljava/lang/String;I)V

    .line 272
    iget-boolean v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mIsThrottleEnabled:Z

    if-eqz v1, :cond_8

    .line 273
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/epdg/throttle/ThrottleManager;->updatePermanentThrottleState(Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError;I)V

    .line 276
    :cond_8
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update timer/counter for ssid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentTimer:Lcom/sec/epdg/throttle/ThrottleTimer;

    invoke-virtual {v1, p3}, Lcom/sec/epdg/throttle/ThrottleTimer;->startTimerOrIncrementCounter(I)J

    move-result-wide v1

    const-wide/16 v4, 0x0

    add-long/2addr v1, v4

    .line 279
    .local v1, "alarmExpTime":J
    iget-object v4, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentTimer:Lcom/sec/epdg/throttle/ThrottleTimer;

    invoke-virtual {v4}, Lcom/sec/epdg/throttle/ThrottleTimer;->getThrottleInterval()I

    move-result v4

    if-nez v4, :cond_a

    .line 280
    iget-object v4, p0, Lcom/sec/epdg/throttle/ThrottleManager;->TAG:Ljava/lang/String;

    const-string v5, "Throttle Time is 0, send event directly"

    invoke-static {v3, v4, v5}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 282
    .local v3, "msg":Landroid/os/Message;
    const/16 v4, 0x21

    iput v4, v3, Landroid/os/Message;->what:I

    .line 283
    iget-object v4, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    if-eqz v4, :cond_9

    if-eqz p1, :cond_9

    .line 284
    new-instance v4, Landroid/util/Pair;

    iget-object v5, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    invoke-direct {v4, p1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 285
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 287
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid SSID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", apnType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, "mesg":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/epdg/throttle/ThrottleManager;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "mesg":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 292
    :cond_a
    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleManager;->getRetryPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 293
    .local v4, "mPendingIntent":Landroid/app/PendingIntent;
    if-eqz v4, :cond_b

    .line 294
    iget-object v3, p0, Lcom/sec/epdg/throttle/ThrottleManager;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v1, v2, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_2

    .line 296
    :cond_b
    iget-object v5, p0, Lcom/sec/epdg/throttle/ThrottleManager;->TAG:Ljava/lang/String;

    const-string v6, "startTimerOrIncrementCounter : RetryPendingIntent is null."

    invoke-static {v3, v5, v6}, Lcom/sec/epdg/Logger/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 299
    .end local v4    # "mPendingIntent":Landroid/app/PendingIntent;
    :goto_2
    return-void
.end method
