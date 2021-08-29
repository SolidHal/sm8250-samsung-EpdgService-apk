.class public Lcom/sec/epdg/EpdgPeriodicDns;
.super Ljava/lang/Object;
.source "EpdgPeriodicDns.java"


# static fields
.field private static SUB_TAG:Ljava/lang/String;

.field private static mInstance:Lcom/sec/epdg/EpdgPeriodicDns;

.field private static mInstance2:Lcom/sec/epdg/EpdgPeriodicDns;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mPhoneId:I

.field private mRetryManager:Lcom/sec/epdg/utils/RetryManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-string v0, "[EpdgPeriodicDns]"

    sput-object v0, Lcom/sec/epdg/EpdgPeriodicDns;->SUB_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILandroid/content/Context;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/EpdgPeriodicDns;->TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/epdg/EpdgPeriodicDns;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgPeriodicDns;->TAG:Ljava/lang/String;

    .line 26
    iput p1, p0, Lcom/sec/epdg/EpdgPeriodicDns;->mPhoneId:I

    .line 27
    iput-object p2, p0, Lcom/sec/epdg/EpdgPeriodicDns;->mContext:Landroid/content/Context;

    .line 28
    const-string v0, "alarm"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/sec/epdg/EpdgPeriodicDns;->mAlarmManager:Landroid/app/AlarmManager;

    .line 29
    new-instance v0, Lcom/sec/epdg/utils/RetryManager;

    invoke-direct {v0}, Lcom/sec/epdg/utils/RetryManager;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/EpdgPeriodicDns;->mRetryManager:Lcom/sec/epdg/utils/RetryManager;

    .line 30
    const-string v1, "max_retries=infinite,30000,60000,120000,300000,900000"

    invoke-virtual {v0, v1}, Lcom/sec/epdg/utils/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgPeriodicDns;->TAG:Ljava/lang/String;

    const-string v1, "Error in DNS retry timer config: max_retries=infinite,30000,60000,120000,300000,900000"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error in DNS retry timer config"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized createInstance(ILandroid/content/Context;)Lcom/sec/epdg/EpdgPeriodicDns;
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    const-class v0, Lcom/sec/epdg/EpdgPeriodicDns;

    monitor-enter v0

    .line 41
    if-nez p0, :cond_0

    .line 42
    :try_start_0
    new-instance v1, Lcom/sec/epdg/EpdgPeriodicDns;

    invoke-direct {v1, p0, p1}, Lcom/sec/epdg/EpdgPeriodicDns;-><init>(ILandroid/content/Context;)V

    sput-object v1, Lcom/sec/epdg/EpdgPeriodicDns;->mInstance:Lcom/sec/epdg/EpdgPeriodicDns;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit v0

    return-object v1

    .line 45
    :cond_0
    :try_start_1
    new-instance v1, Lcom/sec/epdg/EpdgPeriodicDns;

    invoke-direct {v1, p0, p1}, Lcom/sec/epdg/EpdgPeriodicDns;-><init>(ILandroid/content/Context;)V

    sput-object v1, Lcom/sec/epdg/EpdgPeriodicDns;->mInstance2:Lcom/sec/epdg/EpdgPeriodicDns;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    monitor-exit v0

    return-object v1

    .line 40
    .end local p0    # "phoneId":I
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static deinitialize(I)V
    .locals 1
    .param p0, "phoneId"    # I

    .line 95
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 96
    sput-object v0, Lcom/sec/epdg/EpdgPeriodicDns;->mInstance:Lcom/sec/epdg/EpdgPeriodicDns;

    goto :goto_0

    .line 98
    :cond_0
    sput-object v0, Lcom/sec/epdg/EpdgPeriodicDns;->mInstance2:Lcom/sec/epdg/EpdgPeriodicDns;

    .line 100
    :goto_0
    return-void
.end method

.method public static declared-synchronized getInstance(I)Lcom/sec/epdg/EpdgPeriodicDns;
    .locals 2
    .param p0, "phoneId"    # I

    const-class v0, Lcom/sec/epdg/EpdgPeriodicDns;

    monitor-enter v0

    .line 51
    if-nez p0, :cond_0

    .line 52
    :try_start_0
    sget-object v1, Lcom/sec/epdg/EpdgPeriodicDns;->mInstance:Lcom/sec/epdg/EpdgPeriodicDns;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 54
    :cond_0
    :try_start_1
    sget-object v1, Lcom/sec/epdg/EpdgPeriodicDns;->mInstance2:Lcom/sec/epdg/EpdgPeriodicDns;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 50
    .end local p0    # "phoneId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getPeriodicDnsPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.epdg.PERIODIC_DNS_TIMER_EXPIRED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    iget v1, p0, Lcom/sec/epdg/EpdgPeriodicDns;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    iget-object v1, p0, Lcom/sec/epdg/EpdgPeriodicDns;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Lcom/sec/epdg/EpdgUtils;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public declared-synchronized removePeriodicDnsPendingIntent()V
    .locals 3

    monitor-enter p0

    .line 83
    :try_start_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgPeriodicDns;->getPeriodicDnsPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 84
    .local v0, "pIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/sec/epdg/EpdgPeriodicDns;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 85
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgPeriodicDns;->resetTimerForPeriodicDns()V

    .line 86
    iget-object v1, p0, Lcom/sec/epdg/EpdgPeriodicDns;->TAG:Ljava/lang/String;

    const-string v2, "Periodic DNS intent is cancelled"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 82
    .end local v0    # "pIntent":Landroid/app/PendingIntent;
    .end local p0    # "this":Lcom/sec/epdg/EpdgPeriodicDns;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetTimerForPeriodicDns()V
    .locals 2

    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgPeriodicDns;->mRetryManager:Lcom/sec/epdg/utils/RetryManager;

    invoke-virtual {v0}, Lcom/sec/epdg/utils/RetryManager;->resetRetryCount()V

    .line 91
    iget-object v0, p0, Lcom/sec/epdg/EpdgPeriodicDns;->TAG:Ljava/lang/String;

    const-string v1, "resetTimerForPeriodicDns: Reset DNS retry counter"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 89
    .end local p0    # "this":Lcom/sec/epdg/EpdgPeriodicDns;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startTimerForPeriodicDns()V
    .locals 7

    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgPeriodicDns;->mRetryManager:Lcom/sec/epdg/utils/RetryManager;

    invoke-virtual {v0}, Lcom/sec/epdg/utils/RetryManager;->getRetryTimer()I

    move-result v0

    int-to-long v0, v0

    .line 60
    .local v0, "dnsRetryInterval":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 61
    .local v2, "alarmExpTime":J
    iget-object v4, p0, Lcom/sec/epdg/EpdgPeriodicDns;->mRetryManager:Lcom/sec/epdg/utils/RetryManager;

    invoke-virtual {v4}, Lcom/sec/epdg/utils/RetryManager;->increaseRetryCount()V

    .line 62
    iget-object v4, p0, Lcom/sec/epdg/EpdgPeriodicDns;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startTimerForPeriodicDns: dnsRetryInterval is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " alarmExpTime is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/sec/epdg/EpdgPeriodicDns;->getPeriodicDnsPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    .line 68
    .local v4, "pIntent":Landroid/app/PendingIntent;
    if-eqz v4, :cond_0

    .line 69
    iget-object v5, p0, Lcom/sec/epdg/EpdgPeriodicDns;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v5, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 71
    .end local p0    # "this":Lcom/sec/epdg/EpdgPeriodicDns;
    :cond_0
    iget-object v5, p0, Lcom/sec/epdg/EpdgPeriodicDns;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 58
    .end local v0    # "dnsRetryInterval":J
    .end local v2    # "alarmExpTime":J
    .end local v4    # "pIntent":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
