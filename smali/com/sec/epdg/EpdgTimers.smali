.class public Lcom/sec/epdg/EpdgTimers;
.super Ljava/lang/Object;
.source "EpdgTimers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgTimers$EpdgTimer;,
        Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
    }
.end annotation


# static fields
.field private static final EPDG_RATE_LIMIT_TICK:I = 0x2710

.field public static final EPDG_TIMER_TEPDG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[EPDGTimers]"

.field private static mEdpgTimers:Lcom/sec/epdg/EpdgTimers;

.field private static mEdpgTimers2:Lcom/sec/epdg/EpdgTimers;


# instance fields
.field private mPhoneId:I

.field private mTimerValue:[I

.field private mTimers:[Lcom/sec/epdg/EpdgTimers$EpdgTimer;

.field private final mePdgHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/EpdgTimers;->mEdpgTimers:Lcom/sec/epdg/EpdgTimers;

    .line 17
    sput-object v0, Lcom/sec/epdg/EpdgTimers;->mEdpgTimers2:Lcom/sec/epdg/EpdgTimers;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "hdlr"    # Landroid/os/Handler;
    .param p2, "phoneId"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0xa

    new-array v1, v0, [Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    iput-object v1, p0, Lcom/sec/epdg/EpdgTimers;->mTimers:[Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    .line 19
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/epdg/EpdgTimers;->mTimerValue:[I

    .line 36
    iput-object p1, p0, Lcom/sec/epdg/EpdgTimers;->mePdgHandler:Landroid/os/Handler;

    .line 37
    iput p2, p0, Lcom/sec/epdg/EpdgTimers;->mPhoneId:I

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/sec/epdg/EpdgTimers;Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgTimers;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 11
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgTimers;->onTimerFinished(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    return-void
.end method

.method public static deinitialize(I)V
    .locals 1
    .param p0, "phoneId"    # I

    .line 176
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 177
    sput-object v0, Lcom/sec/epdg/EpdgTimers;->mEdpgTimers:Lcom/sec/epdg/EpdgTimers;

    goto :goto_0

    .line 179
    :cond_0
    sput-object v0, Lcom/sec/epdg/EpdgTimers;->mEdpgTimers2:Lcom/sec/epdg/EpdgTimers;

    .line 181
    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/os/Handler;IIIIIIIIIII)Lcom/sec/epdg/EpdgTimers;
    .locals 14
    .param p0, "hdlr"    # Landroid/os/Handler;
    .param p1, "phoneId"    # I
    .param p2, "tepdg"    # I
    .param p3, "tLte"    # I
    .param p4, "hoDelayWifi"    # I
    .param p5, "hoDelay"    # I
    .param p6, "tWifiIpConfig"    # I
    .param p7, "tEpdgLteMeasurement"    # I
    .param p8, "tEpdgWifiMeasurement"    # I
    .param p9, "callPopup"    # I
    .param p10, "rtpHandinRetry"    # I
    .param p11, "tCs"    # I

    .line 42
    move-object v0, p0

    move v1, p1

    if-nez v1, :cond_1

    .line 43
    sget-object v2, Lcom/sec/epdg/EpdgTimers;->mEdpgTimers:Lcom/sec/epdg/EpdgTimers;

    if-nez v2, :cond_0

    new-instance v2, Lcom/sec/epdg/EpdgTimers;

    invoke-direct {v2, p0, p1}, Lcom/sec/epdg/EpdgTimers;-><init>(Landroid/os/Handler;I)V

    sput-object v2, Lcom/sec/epdg/EpdgTimers;->mEdpgTimers:Lcom/sec/epdg/EpdgTimers;

    .line 44
    :cond_0
    sget-object v3, Lcom/sec/epdg/EpdgTimers;->mEdpgTimers:Lcom/sec/epdg/EpdgTimers;

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-direct/range {v3 .. v13}, Lcom/sec/epdg/EpdgTimers;->setTimerValue(IIIIIIIIII)V

    .line 46
    sget-object v2, Lcom/sec/epdg/EpdgTimers;->mEdpgTimers:Lcom/sec/epdg/EpdgTimers;

    return-object v2

    .line 48
    :cond_1
    sget-object v2, Lcom/sec/epdg/EpdgTimers;->mEdpgTimers2:Lcom/sec/epdg/EpdgTimers;

    if-nez v2, :cond_2

    new-instance v2, Lcom/sec/epdg/EpdgTimers;

    invoke-direct {v2, p0, p1}, Lcom/sec/epdg/EpdgTimers;-><init>(Landroid/os/Handler;I)V

    sput-object v2, Lcom/sec/epdg/EpdgTimers;->mEdpgTimers2:Lcom/sec/epdg/EpdgTimers;

    .line 49
    :cond_2
    sget-object v3, Lcom/sec/epdg/EpdgTimers;->mEdpgTimers2:Lcom/sec/epdg/EpdgTimers;

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-direct/range {v3 .. v13}, Lcom/sec/epdg/EpdgTimers;->setTimerValue(IIIIIIIIII)V

    .line 51
    sget-object v2, Lcom/sec/epdg/EpdgTimers;->mEdpgTimers2:Lcom/sec/epdg/EpdgTimers;

    return-object v2
.end method

.method private onTimerFinished(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V
    .locals 2
    .param p1, "tType"    # Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 107
    iget-object v0, p0, Lcom/sec/epdg/EpdgTimers;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 108
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->getTimerCommand()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 109
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 110
    return-void
.end method

.method private setTimerValue(IIIIIIIIII)V
    .locals 2
    .param p1, "tepdg"    # I
    .param p2, "tLte"    # I
    .param p3, "hoDelayWifi"    # I
    .param p4, "hoDelay"    # I
    .param p5, "tWifiIpConfig"    # I
    .param p6, "tEpdgLteMeasurement"    # I
    .param p7, "tEpdgWifiMeasurement"    # I
    .param p8, "callPopup"    # I
    .param p9, "rtpHandinRetry"    # I
    .param p10, "tCs"    # I

    .line 63
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    const/4 v1, 0x4

    aput p5, v0, v1

    const/4 v1, 0x5

    aput p6, v0, v1

    const/4 v1, 0x6

    aput p7, v0, v1

    const/4 v1, 0x7

    aput p8, v0, v1

    const/16 v1, 0x8

    aput p9, v0, v1

    const/16 v1, 0x9

    aput p10, v0, v1

    iput-object v0, p0, Lcom/sec/epdg/EpdgTimers;->mTimerValue:[I

    .line 64
    return-void
.end method


# virtual methods
.method public isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z
    .locals 4
    .param p1, "tType"    # Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 67
    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->getTimerId()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 68
    .local v0, "index":I
    iget-object v2, p0, Lcom/sec/epdg/EpdgTimers;->mTimers:[Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    aget-object v2, v2, v0

    .line 69
    invoke-virtual {v2}, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->getTimerType()Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->getTimerId()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->getTimerId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " timer is running"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[EPDGTimers]"

    invoke-static {v3, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return v1

    .line 73
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setTimerValue(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;I)V
    .locals 2
    .param p1, "tType"    # Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
    .param p2, "epdgTimerValue"    # I

    .line 57
    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->getTimerId()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 58
    .local v0, "index":I
    iget-object v1, p0, Lcom/sec/epdg/EpdgTimers;->mTimerValue:[I

    aput p2, v1, v0

    .line 59
    return-void
.end method

.method public startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z
    .locals 12
    .param p1, "tType"    # Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 77
    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->getTimerId()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 78
    .local v0, "index":I
    const/4 v1, 0x0

    .line 79
    .local v1, "result":Z
    iget-object v2, p0, Lcom/sec/epdg/EpdgTimers;->mTimers:[Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    aget-object v2, v2, v0

    .line 80
    invoke-virtual {v2}, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->getTimerType()Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->NOTDEFINED:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    if-ne v2, v3, :cond_2

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/EpdgTimers;->mTimerValue:[I

    aget v2, v2, v0

    const-string v3, "[EPDGTimers]"

    if-nez v2, :cond_1

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " timer value is 0. NOT started"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return v1

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/EpdgTimers;->mTimers:[Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    new-instance v11, Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    iget-object v4, p0, Lcom/sec/epdg/EpdgTimers;->mTimerValue:[I

    aget v4, v4, v0

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long v7, v4, v6

    const-wide/16 v9, 0x2710

    move-object v4, v11

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v4 .. v10}, Lcom/sec/epdg/EpdgTimers$EpdgTimer;-><init>(Lcom/sec/epdg/EpdgTimers;Lcom/sec/epdg/EpdgTimers$EpdgTimerType;JJ)V

    aput-object v11, v2, v0

    .line 87
    iget-object v2, p0, Lcom/sec/epdg/EpdgTimers;->mTimers:[Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->start()Landroid/os/CountDownTimer;

    .line 88
    const/4 v1, 0x1

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " timer started"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/16 v2, 0x1f4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 92
    :cond_2
    return v1
.end method

.method public stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V
    .locals 4
    .param p1, "tType"    # Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 96
    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->getTimerId()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 97
    .local v0, "index":I
    iget-object v1, p0, Lcom/sec/epdg/EpdgTimers;->mTimers:[Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    aget-object v1, v1, v0

    .line 98
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->getTimerType()Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->getTimerId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->getTimerId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 99
    iget-object v1, p0, Lcom/sec/epdg/EpdgTimers;->mTimers:[Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->cancel()V

    .line 100
    iget-object v1, p0, Lcom/sec/epdg/EpdgTimers;->mTimers:[Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " timer stopped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[EPDGTimers]"

    invoke-static {v2, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/16 v1, 0x1f4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " stop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 104
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 25
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 26
    .local v0, "status":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Lcom/sec/epdg/EpdgTimers;->mTimers:[Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 27
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 28
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->getTimerType()Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->NOTDEFINED:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    if-eq v2, v3, :cond_0

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nEpdg TimerType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/EpdgTimers;->mTimers:[Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->getTimerType()Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Running"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    .end local v1    # "index":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
