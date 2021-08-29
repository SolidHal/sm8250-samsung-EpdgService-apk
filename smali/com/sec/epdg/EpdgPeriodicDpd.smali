.class public Lcom/sec/epdg/EpdgPeriodicDpd;
.super Ljava/lang/Object;
.source "EpdgPeriodicDpd.java"


# static fields
.field private static final KEY_CBS:I = 0x2

.field private static final KEY_DEFAULT:I = 0x6

.field private static final KEY_EMERGENCY:I = 0x5

.field private static final KEY_IMS:I = 0x1

.field private static final KEY_MAX:I = 0x7

.field private static final KEY_MMS:I = 0x3

.field private static final KEY_XCAP:I = 0x4

.field private static SUB_TAG:Ljava/lang/String;

.field private static mInstance:Lcom/sec/epdg/EpdgPeriodicDpd;

.field private static mInstance2:Lcom/sec/epdg/EpdgPeriodicDpd;

.field private static mNextDpdTime:J


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mIsRunningImsDdp:Z

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-string v0, "[EpdgPeriodicDpd]"

    sput-object v0, Lcom/sec/epdg/EpdgPeriodicDpd;->SUB_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILandroid/content/Context;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/epdg/EpdgPeriodicDpd;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->TAG:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mContext:Landroid/content/Context;

    .line 34
    const-string v0, "alarm"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mAlarmManager:Landroid/app/AlarmManager;

    .line 35
    iput p1, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mPhoneId:I

    .line 36
    return-void
.end method

.method public static declared-synchronized createInstance(ILandroid/content/Context;)Lcom/sec/epdg/EpdgPeriodicDpd;
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    const-class v0, Lcom/sec/epdg/EpdgPeriodicDpd;

    monitor-enter v0

    .line 43
    if-nez p0, :cond_0

    .line 44
    :try_start_0
    new-instance v1, Lcom/sec/epdg/EpdgPeriodicDpd;

    invoke-direct {v1, p0, p1}, Lcom/sec/epdg/EpdgPeriodicDpd;-><init>(ILandroid/content/Context;)V

    sput-object v1, Lcom/sec/epdg/EpdgPeriodicDpd;->mInstance:Lcom/sec/epdg/EpdgPeriodicDpd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit v0

    return-object v1

    .line 47
    :cond_0
    :try_start_1
    new-instance v1, Lcom/sec/epdg/EpdgPeriodicDpd;

    invoke-direct {v1, p0, p1}, Lcom/sec/epdg/EpdgPeriodicDpd;-><init>(ILandroid/content/Context;)V

    sput-object v1, Lcom/sec/epdg/EpdgPeriodicDpd;->mInstance2:Lcom/sec/epdg/EpdgPeriodicDpd;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    monitor-exit v0

    return-object v1

    .line 42
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

    .line 177
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 178
    sput-object v0, Lcom/sec/epdg/EpdgPeriodicDpd;->mInstance:Lcom/sec/epdg/EpdgPeriodicDpd;

    goto :goto_0

    .line 180
    :cond_0
    sput-object v0, Lcom/sec/epdg/EpdgPeriodicDpd;->mInstance2:Lcom/sec/epdg/EpdgPeriodicDpd;

    .line 182
    :goto_0
    return-void
.end method

.method private getDpdPendingIntentKey(Ljava/lang/String;)I
    .locals 6
    .param p1, "apnType"    # Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "emergency"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "xcap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_4
    const-string v0, "ims"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_5
    const-string v0, "cbs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    .line 124
    const/4 v0, 0x7

    .local v0, "key":I
    goto :goto_2

    .line 121
    .end local v0    # "key":I
    :cond_1
    const/4 v0, 0x6

    .line 122
    .restart local v0    # "key":I
    goto :goto_2

    .line 118
    .end local v0    # "key":I
    :cond_2
    const/4 v0, 0x5

    .line 119
    .restart local v0    # "key":I
    goto :goto_2

    .line 115
    .end local v0    # "key":I
    :cond_3
    const/4 v0, 0x4

    .line 116
    .restart local v0    # "key":I
    goto :goto_2

    .line 112
    .end local v0    # "key":I
    :cond_4
    const/4 v0, 0x3

    .line 113
    .restart local v0    # "key":I
    goto :goto_2

    .line 109
    .end local v0    # "key":I
    :cond_5
    const/4 v0, 0x2

    .line 110
    .restart local v0    # "key":I
    goto :goto_2

    .line 106
    .end local v0    # "key":I
    :cond_6
    const/4 v0, 0x1

    .line 107
    .restart local v0    # "key":I
    nop

    .line 128
    :goto_2
    iget-object v1, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDpdPendingIntentKey apntype : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget v1, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mPhoneId:I

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v0

    return v1

    :sswitch_data_0
    .sparse-switch
        0x17ff4 -> :sswitch_5
        0x197cf -> :sswitch_4
        0x1a6d3 -> :sswitch_3
        0x380c5a -> :sswitch_2
        0x5c13d641 -> :sswitch_1
        0x6118c591 -> :sswitch_0
    .end sparse-switch
.end method

.method public static declared-synchronized getInstance(I)Lcom/sec/epdg/EpdgPeriodicDpd;
    .locals 2
    .param p0, "phoneId"    # I

    const-class v0, Lcom/sec/epdg/EpdgPeriodicDpd;

    monitor-enter v0

    .line 53
    if-nez p0, :cond_0

    .line 54
    :try_start_0
    sget-object v1, Lcom/sec/epdg/EpdgPeriodicDpd;->mInstance:Lcom/sec/epdg/EpdgPeriodicDpd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 56
    :cond_0
    :try_start_1
    sget-object v1, Lcom/sec/epdg/EpdgPeriodicDpd;->mInstance2:Lcom/sec/epdg/EpdgPeriodicDpd;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 52
    .end local p0    # "phoneId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getPeriodicDpdIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .line 89
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.epdg.PERIODIC_DPD_TIMER_EXPIRED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    return-object v0
.end method

.method private getPeriodicDpdPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .line 95
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgPeriodicDpd;->getPeriodicDpdIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "apntype"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget v1, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mPhoneId:I

    const-string v2, "phoneId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    iget v1, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    iget-object v1, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgPeriodicDpd;->getDpdPendingIntentKey(Ljava/lang/String;)I

    move-result v2

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Lcom/sec/epdg/EpdgUtils;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getPeriodicWiFiScanIntent()Landroid/content/Intent;
    .locals 2

    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 166
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.epdg.INTENT_WIFI_SCAN_TIMER_EXPIRED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    return-object v0
.end method

.method private getPeriodicWiFiScanPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .line 171
    invoke-direct {p0}, Lcom/sec/epdg/EpdgPeriodicDpd;->getPeriodicWiFiScanIntent()Landroid/content/Intent;

    move-result-object v0

    .line 172
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    iget-object v1, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Lcom/sec/epdg/EpdgUtils;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getNextDpdTime(J)J
    .locals 4
    .param p1, "dpdTimer"    # J

    .line 84
    sget-wide v0, Lcom/sec/epdg/EpdgPeriodicDpd;->mNextDpdTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 85
    .local v0, "NextDpdTime":J
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    rem-long v2, v0, v2

    return-wide v2
.end method

.method public declared-synchronized removePeriodicDpdPendingIntent(Ljava/lang/String;)V
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    monitor-enter p0

    .line 133
    if-nez p1, :cond_0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->TAG:Ljava/lang/String;

    const-string v1, "removePeriodicDpdPendingIntent: apnType is null, returning"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    .line 137
    .end local p0    # "this":Lcom/sec/epdg/EpdgPeriodicDpd;
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    iget-object v0, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgPeriodicDpd;->getDpdPendingIntentKey(Ljava/lang/String;)I

    move-result v1

    .line 138
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgPeriodicDpd;->getPeriodicDpdIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    .line 137
    invoke-static {v0, v1, v2, v3}, Lcom/sec/epdg/EpdgUtils;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 139
    .local v0, "pIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removePeriodicDpdPendingIntent apntype : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mIsRunningImsDdp:Z

    .line 141
    iget-object v1, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 132
    .end local v0    # "pIntent":Landroid/app/PendingIntent;
    .end local p1    # "apnType":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized runningImsDdpPending()Z
    .locals 1

    monitor-enter p0

    .line 145
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mIsRunningImsDdp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 145
    .end local p0    # "this":Lcom/sec/epdg/EpdgPeriodicDpd;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startTimerForPeriodicDpd(Ljava/lang/String;J)V
    .locals 6
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "dpdTimer"    # J

    monitor-enter p0

    .line 61
    if-nez p1, :cond_0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->TAG:Ljava/lang/String;

    const-string v1, "startTimerForPeriodicDpd: apnType is null, returning"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 65
    .end local p0    # "this":Lcom/sec/epdg/EpdgPeriodicDpd;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 66
    .local v0, "alarmExpTime":J
    iget-object v2, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startTimerForPeriodicDpd: apnType is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " dpdTimer is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " alarmExpTime is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgPeriodicDpd;->getPeriodicDpdPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 72
    .local v2, "pIntent":Landroid/app/PendingIntent;
    if-eqz v2, :cond_1

    .line 73
    iget-object v3, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 75
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mIsRunningImsDdp:Z

    .line 76
    iget-object v4, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgPeriodicDpd;->getDpdPendingIntentKey(Ljava/lang/String;)I

    move-result v4

    iget v5, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mPhoneId:I

    mul-int/lit8 v5, v5, 0x7

    add-int/2addr v5, v3

    if-ne v4, v5, :cond_2

    .line 79
    sput-wide v0, Lcom/sec/epdg/EpdgPeriodicDpd;->mNextDpdTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :cond_2
    monitor-exit p0

    return-void

    .line 60
    .end local v0    # "alarmExpTime":J
    .end local v2    # "pIntent":Landroid/app/PendingIntent;
    .end local p1    # "apnType":Ljava/lang/String;
    .end local p2    # "dpdTimer":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startTimerForPeriodicWiFiScan()V
    .locals 1

    monitor-enter p0

    .line 149
    const v0, 0x1d4c0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgPeriodicDpd;->startTimerForPeriodicWiFiScan(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 148
    .end local p0    # "this":Lcom/sec/epdg/EpdgPeriodicDpd;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startTimerForPeriodicWiFiScan(I)V
    .locals 5
    .param p1, "PeriodicTimer"    # I

    monitor-enter p0

    .line 153
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 154
    .local v0, "alarmExpTime":J
    iget-object v2, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startTimerForPeriodicWiFiScan: PeriodicTimer is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " alarmExpTime is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Lcom/sec/epdg/EpdgPeriodicDpd;->getPeriodicWiFiScanPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    .line 157
    .local v2, "pIntent":Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    .line 158
    iget-object v3, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 160
    .end local p0    # "this":Lcom/sec/epdg/EpdgPeriodicDpd;
    :cond_0
    iget-object v3, p0, Lcom/sec/epdg/EpdgPeriodicDpd;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 152
    .end local v0    # "alarmExpTime":J
    .end local v2    # "pIntent":Landroid/app/PendingIntent;
    .end local p1    # "PeriodicTimer":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
