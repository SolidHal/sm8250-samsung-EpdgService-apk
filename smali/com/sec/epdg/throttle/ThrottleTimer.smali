.class public final Lcom/sec/epdg/throttle/ThrottleTimer;
.super Ljava/lang/Object;
.source "ThrottleTimer.java"


# static fields
.field private static final DBG:Z = true

.field private static final MAX_COUNTER_FOR_TIMER_START:I = 0x3

.field private static final TAG:Ljava/lang/String; = "[THROTTLETIMER]"


# instance fields
.field private mCount:I

.field private mEndTime:J

.field private mRetryManager:Lcom/sec/epdg/utils/RetryManager;

.field private mStartTime:J

.field private mTimerType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "timerType"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mCount:I

    .line 25
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mStartTime:J

    .line 29
    iput-wide v0, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mEndTime:J

    .line 37
    new-instance v0, Lcom/sec/epdg/utils/RetryManager;

    invoke-direct {v0}, Lcom/sec/epdg/utils/RetryManager;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mRetryManager:Lcom/sec/epdg/utils/RetryManager;

    .line 38
    iput p2, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mTimerType:I

    .line 39
    invoke-virtual {v0, p1}, Lcom/sec/epdg/utils/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in ThrottleTime config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[THROTTLETIMER]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error in ThrottleTimer config"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getThrottleCount()I
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getThrottleCount. returning mCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[THROTTLETIMER]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget v0, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mCount:I

    return v0
.end method

.method public getThrottleInterval()I
    .locals 3

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "throttleInterval":I
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mRetryManager:Lcom/sec/epdg/utils/RetryManager;

    invoke-virtual {v1}, Lcom/sec/epdg/utils/RetryManager;->getRetryTimer()I

    move-result v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "interval is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[THROTTLETIMER]"

    invoke-static {v2, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return v0
.end method

.method public getTimeLeft()J
    .locals 6

    .line 119
    iget-wide v0, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mEndTime:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    sub-long/2addr v4, v0

    .line 123
    .local v4, "throttleInterval":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mStartTime:J

    sub-long/2addr v0, v2

    .line 124
    .local v0, "timeLapsed":J
    sub-long v2, v4, v0

    return-wide v2

    .line 120
    .end local v0    # "timeLapsed":J
    .end local v4    # "throttleInterval":J
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTimerType()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mTimerType:I

    return v0
.end method

.method public isRetryThrottled()Z
    .locals 10

    .line 57
    iget-wide v0, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iget-wide v6, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mEndTime:J

    cmp-long v2, v6, v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    sub-long/2addr v6, v0

    .line 61
    .local v6, "throttleInterval":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mStartTime:J

    sub-long/2addr v0, v2

    .line 63
    .local v0, "timeLapsed":J
    cmp-long v2, v0, v6

    const-string v3, "[THROTTLETIMER]"

    if-ltz v2, :cond_1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New request received after timer has expired for count "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return v5

    .line 70
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request throttled. Time left in counter: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v4, v6, v0

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "  Current time: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-static {v3, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v2, 0x1

    return v2

    .line 58
    .end local v0    # "timeLapsed":J
    .end local v6    # "throttleInterval":J
    :cond_2
    :goto_0
    return v5
.end method

.method public startTimerOrIncrementCounter(I)J
    .locals 9
    .param p1, "backoffTimer"    # I

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 89
    .local v0, "timerExpirationTime":J
    const-wide/16 v2, 0x0

    .line 90
    .local v2, "throttleInterval":J
    const-string v4, "[THROTTLETIMER]"

    const/4 v5, -0x1

    if-ne p1, v5, :cond_2

    .line 91
    iget-object v5, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mRetryManager:Lcom/sec/epdg/utils/RetryManager;

    invoke-virtual {v5}, Lcom/sec/epdg/utils/RetryManager;->increaseRetryCount()V

    .line 92
    iget v5, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mCount:I

    .line 93
    iget v5, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mTimerType:I

    if-eqz v5, :cond_0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 94
    :cond_0
    iget-object v5, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mRetryManager:Lcom/sec/epdg/utils/RetryManager;

    invoke-virtual {v5}, Lcom/sec/epdg/utils/RetryManager;->getRetryCount()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_1

    .line 97
    return-wide v0

    .line 102
    :cond_1
    iget-object v5, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mRetryManager:Lcom/sec/epdg/utils/RetryManager;

    invoke-virtual {v5}, Lcom/sec/epdg/utils/RetryManager;->getRetryTimer()I

    move-result v5

    int-to-long v2, v5

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start timer for Counter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ". Throttle Interval: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iput-wide v0, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mStartTime:J

    .line 107
    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mEndTime:J

    .line 108
    add-long v4, v0, v2

    return-wide v4

    .line 110
    :cond_2
    int-to-long v5, p1

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    .line 111
    .end local v2    # "throttleInterval":J
    .local v5, "throttleInterval":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Throttle Interval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iput-wide v0, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mStartTime:J

    .line 113
    add-long v2, v0, v5

    iput-wide v2, p0, Lcom/sec/epdg/throttle/ThrottleTimer;->mEndTime:J

    .line 114
    add-long v2, v0, v5

    return-wide v2
.end method
