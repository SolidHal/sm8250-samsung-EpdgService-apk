.class public Lcom/sec/epdg/Logger/LoggingHelper;
.super Ljava/lang/Object;
.source "LoggingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;,
        Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;
    }
.end annotation


# static fields
.field private static final CALL_TAG:Ljava/lang/String; = "[CALLCHANGE]"

.field private static final HO_TAG:Ljava/lang/String; = "[OH_CRITERIA]"

.field private static final LAZER_TAG:Ljava/lang/String; = "#EPDG"

.field private static LatencyThRoveIn:I = 0x0

.field private static LatencyThRoveOut:I = 0x0

.field private static LossRateThRoveIn:I = 0x0

.field private static LossRateThRoveOut:I = 0x0

.field private static final NET_TAG:Ljava/lang/String; = "[NETCHANGE]"

.field private static final OPTI_TAG:Ljava/lang/String; = "[HO_OPTIMIZATION]"

.field private static WifiRssiLast:I

.field private static WifiRssiThRoveIn:I

.field private static WifiRssiThRoveOut:I

.field private static call_status:Ljava/lang/String;

.field private static enableLatencyCheck:Z

.field private static firstLteCheck:Z

.field private static lteAvailable:Z

.field private static lteConnected:Z

.field private static lteRsrpLast:I

.field private static lteRsrpThRoveIn:I

.field private static lteRsrpThRoveOut:I

.field private static lteRsrqLast:I

.field private static lteRsrqThRoveIn:I

.field private static lteRsrqThRoveOut:I

.field private static pingLatencyLast_L2W:I

.field private static pingLatencyLast_W2L:I

.field private static pingLossRateLast_L2W:I

.field private static pingLossRateLast_W2L:I

.field private static rtpLossRateLast:F

.field private static wifiConnected:Z

.field private static wlanAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    const/4 v0, 0x0

    sput v0, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrpThRoveIn:I

    .line 11
    sput v0, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrpThRoveOut:I

    .line 12
    sput v0, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrpLast:I

    .line 13
    sput v0, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrqThRoveIn:I

    .line 14
    sput v0, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrqThRoveOut:I

    .line 15
    sput v0, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrqLast:I

    .line 16
    sput v0, Lcom/sec/epdg/Logger/LoggingHelper;->WifiRssiThRoveIn:I

    .line 17
    sput v0, Lcom/sec/epdg/Logger/LoggingHelper;->WifiRssiThRoveOut:I

    .line 18
    sput v0, Lcom/sec/epdg/Logger/LoggingHelper;->WifiRssiLast:I

    .line 19
    sput v0, Lcom/sec/epdg/Logger/LoggingHelper;->LatencyThRoveIn:I

    .line 20
    sput v0, Lcom/sec/epdg/Logger/LoggingHelper;->LossRateThRoveIn:I

    .line 21
    sput v0, Lcom/sec/epdg/Logger/LoggingHelper;->LatencyThRoveOut:I

    .line 22
    sput v0, Lcom/sec/epdg/Logger/LoggingHelper;->LossRateThRoveOut:I

    .line 23
    sput v0, Lcom/sec/epdg/Logger/LoggingHelper;->pingLatencyLast_L2W:I

    .line 24
    sput v0, Lcom/sec/epdg/Logger/LoggingHelper;->pingLossRateLast_L2W:I

    .line 25
    sput v0, Lcom/sec/epdg/Logger/LoggingHelper;->pingLatencyLast_W2L:I

    .line 26
    sput v0, Lcom/sec/epdg/Logger/LoggingHelper;->pingLossRateLast_W2L:I

    .line 27
    const/4 v1, 0x0

    sput v1, Lcom/sec/epdg/Logger/LoggingHelper;->rtpLossRateLast:F

    .line 30
    sput-boolean v0, Lcom/sec/epdg/Logger/LoggingHelper;->wlanAvailable:Z

    .line 31
    sput-boolean v0, Lcom/sec/epdg/Logger/LoggingHelper;->wifiConnected:Z

    .line 32
    sput-boolean v0, Lcom/sec/epdg/Logger/LoggingHelper;->enableLatencyCheck:Z

    .line 33
    sput-boolean v0, Lcom/sec/epdg/Logger/LoggingHelper;->lteAvailable:Z

    .line 34
    sput-boolean v0, Lcom/sec/epdg/Logger/LoggingHelper;->lteConnected:Z

    .line 35
    sput-boolean v0, Lcom/sec/epdg/Logger/LoggingHelper;->firstLteCheck:Z

    .line 36
    const-string v0, ""

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper;->call_status:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static lteAvailableStatusPrint(Z)V
    .locals 7
    .param p0, "status"    # Z

    .line 219
    const-string v0, "[OH_CRITERIA]RSRQ ("

    const-string v1, "[OH_CRITERIA]RSRP ("

    const-string v2, ")"

    const-string v3, "[HO_OPTIMIZATION]"

    if-eqz p0, :cond_2

    .line 220
    sget v4, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrpLast:I

    if-eqz v4, :cond_5

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrpLast:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") >= TH ("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/sec/epdg/Logger/LoggingHelper;->firstLteCheck:Z

    if-eqz v5, :cond_0

    sget v5, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrpThRoveOut:I

    goto :goto_0

    :cond_0
    sget v5, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrpThRoveIn:I

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget v4, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrqLast:I

    if-eqz v4, :cond_5

    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrqLast:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/sec/epdg/Logger/LoggingHelper;->firstLteCheck:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrqThRoveOut:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrqThRoveIn:I

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 227
    :cond_2
    sget-boolean v4, Lcom/sec/epdg/Logger/LoggingHelper;->lteConnected:Z

    if-nez v4, :cond_3

    .line 228
    const-string v0, "[OH_CRITERIA]LTE is not connected"

    invoke-static {v3, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 230
    :cond_3
    sget v4, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrpLast:I

    const-string v5, ") < TH ("

    if-eqz v4, :cond_4

    sget v6, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrpThRoveOut:I

    if-ge v4, v6, :cond_4

    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrpLast:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrpThRoveOut:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_4
    sget v1, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrqLast:I

    if-eqz v1, :cond_5

    sget v4, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrqThRoveOut:I

    if-ge v1, v4, :cond_5

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrqLast:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrqThRoveOut:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_5
    :goto_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/epdg/Logger/LoggingHelper;->firstLteCheck:Z

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OH_CRITERIA]LTE is available :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_6

    const-string v1, "true"

    goto :goto_3

    :cond_6
    const-string v1, "false"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    sput-boolean p0, Lcom/sec/epdg/Logger/LoggingHelper;->lteAvailable:Z

    .line 241
    return-void
.end method

.method public static printLazerLogging(Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "type"    # Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "step"    # Ljava/lang/String;

    .line 293
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$1;->$SwitchMap$com$sec$epdg$Logger$LoggingHelper$LazerLogType:[I

    invoke-virtual {p0}, Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, ", apnType : "

    const-string v3, "#EPDG"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 307
    const-string v0, "default"

    invoke-static {v3, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IPSEC_CONNECTION :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    goto :goto_0

    .line 295
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WIFI_TO_LTE_HO :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    nop

    .line 310
    :goto_0
    return-void
.end method

.method public static printLoggingAndSet(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;Ljava/lang/String;)V
    .locals 2
    .param p0, "type"    # Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;
    .param p1, "status"    # Ljava/lang/String;

    .line 267
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$1;->$SwitchMap$com$sec$epdg$Logger$LoggingHelper$LoggingType:[I

    invoke-virtual {p0}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper;->call_status:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CALLCHANGE]CALL_STATUS_CHANGE to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HO_OPTIMIZATION]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sput-object p1, Lcom/sec/epdg/Logger/LoggingHelper;->call_status:Ljava/lang/String;

    .line 278
    :cond_1
    :goto_0
    return-void
.end method

.method public static printLoggingAndSet(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;Z)V
    .locals 2
    .param p0, "type"    # Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;
    .param p1, "status"    # Z

    .line 244
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$1;->$SwitchMap$com$sec$epdg$Logger$LoggingHelper$LoggingType:[I

    invoke-virtual {p0}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 256
    :cond_0
    sget-boolean v0, Lcom/sec/epdg/Logger/LoggingHelper;->wifiConnected:Z

    if-eq p1, v0, :cond_4

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NETCHANGE]WIFI is connected :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v1, "true"

    goto :goto_0

    :cond_1
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HO_OPTIMIZATION]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    sput-boolean p1, Lcom/sec/epdg/Logger/LoggingHelper;->wifiConnected:Z

    goto :goto_1

    .line 251
    :cond_2
    sget-boolean v0, Lcom/sec/epdg/Logger/LoggingHelper;->lteAvailable:Z

    if-eq p1, v0, :cond_4

    .line 252
    invoke-static {p1}, Lcom/sec/epdg/Logger/LoggingHelper;->lteAvailableStatusPrint(Z)V

    goto :goto_1

    .line 246
    :cond_3
    sget-boolean v0, Lcom/sec/epdg/Logger/LoggingHelper;->wlanAvailable:Z

    if-eq p1, v0, :cond_4

    .line 247
    invoke-static {p1}, Lcom/sec/epdg/Logger/LoggingHelper;->wlanAvailableStatusPrint(Z)V

    .line 264
    :cond_4
    :goto_1
    return-void
.end method

.method public static printLoggingAndSet(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;ZJ)V
    .locals 2
    .param p0, "type"    # Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;
    .param p1, "success"    # Z
    .param p2, "value"    # J

    .line 281
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$1;->$SwitchMap$com$sec$epdg$Logger$LoggingHelper$LoggingType:[I

    invoke-virtual {p0}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 283
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HIGH RTP LOSS detected : Latency Check Result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v1, "true"

    goto :goto_0

    :cond_1
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " RSSI ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/sec/epdg/Logger/LoggingHelper;->WifiRssiLast:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") RTP lossrate ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/sec/epdg/Logger/LoggingHelper;->rtpLossRateLast:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") Latency "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    if-eqz p1, :cond_2

    const-string v1, "is "

    goto :goto_1

    :cond_2
    const-string v1, " greater than "

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    const-string v1, "[HO_OPTIMIZATION]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    nop

    .line 290
    :goto_2
    return-void
.end method

.method public static setLoggingField(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;F)V
    .locals 2
    .param p0, "type"    # Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;
    .param p1, "value"    # F

    .line 176
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$1;->$SwitchMap$com$sec$epdg$Logger$LoggingHelper$LoggingType:[I

    invoke-virtual {p0}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    sput p1, Lcom/sec/epdg/Logger/LoggingHelper;->rtpLossRateLast:F

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HIGH RTP LOSS detected : RSSI ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/sec/epdg/Logger/LoggingHelper;->WifiRssiLast:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") RTP lossrate ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/sec/epdg/Logger/LoggingHelper;->rtpLossRateLast:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HO_OPTIMIZATION]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    nop

    .line 185
    :goto_0
    return-void
.end method

.method public static setLoggingField(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;I)V
    .locals 2
    .param p0, "type"    # Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;
    .param p1, "ivalue"    # I

    .line 101
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$1;->$SwitchMap$com$sec$epdg$Logger$LoggingHelper$LoggingType:[I

    invoke-virtual {p0}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 167
    :pswitch_0
    sput p1, Lcom/sec/epdg/Logger/LoggingHelper;->pingLossRateLast_W2L:I

    .line 168
    goto :goto_0

    .line 163
    :pswitch_1
    sput p1, Lcom/sec/epdg/Logger/LoggingHelper;->pingLatencyLast_W2L:I

    .line 164
    goto :goto_0

    .line 159
    :pswitch_2
    sput p1, Lcom/sec/epdg/Logger/LoggingHelper;->pingLossRateLast_L2W:I

    .line 160
    goto :goto_0

    .line 155
    :pswitch_3
    sput p1, Lcom/sec/epdg/Logger/LoggingHelper;->pingLatencyLast_L2W:I

    .line 156
    goto :goto_0

    .line 151
    :pswitch_4
    sput p1, Lcom/sec/epdg/Logger/LoggingHelper;->LossRateThRoveOut:I

    .line 152
    goto :goto_0

    .line 147
    :pswitch_5
    sput p1, Lcom/sec/epdg/Logger/LoggingHelper;->LatencyThRoveOut:I

    .line 148
    goto :goto_0

    .line 143
    :pswitch_6
    sput p1, Lcom/sec/epdg/Logger/LoggingHelper;->LossRateThRoveIn:I

    .line 144
    goto :goto_0

    .line 139
    :pswitch_7
    sput p1, Lcom/sec/epdg/Logger/LoggingHelper;->LatencyThRoveIn:I

    .line 140
    goto :goto_0

    .line 135
    :pswitch_8
    sput p1, Lcom/sec/epdg/Logger/LoggingHelper;->WifiRssiLast:I

    .line 136
    goto :goto_0

    .line 131
    :pswitch_9
    sput p1, Lcom/sec/epdg/Logger/LoggingHelper;->WifiRssiThRoveOut:I

    .line 132
    goto :goto_0

    .line 127
    :pswitch_a
    sput p1, Lcom/sec/epdg/Logger/LoggingHelper;->WifiRssiThRoveIn:I

    .line 128
    goto :goto_0

    .line 123
    :pswitch_b
    sput p1, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrqLast:I

    .line 124
    goto :goto_0

    .line 119
    :pswitch_c
    sput p1, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrqThRoveOut:I

    .line 120
    goto :goto_0

    .line 115
    :pswitch_d
    sput p1, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrqThRoveIn:I

    .line 116
    goto :goto_0

    .line 111
    :pswitch_e
    sput p1, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrpLast:I

    .line 112
    goto :goto_0

    .line 107
    :pswitch_f
    sput p1, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrpThRoveOut:I

    .line 108
    goto :goto_0

    .line 103
    :pswitch_10
    sput p1, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrpThRoveIn:I

    .line 104
    nop

    .line 173
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setLoggingField(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;Z)V
    .locals 2
    .param p0, "type"    # Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;
    .param p1, "value"    # Z

    .line 73
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$1;->$SwitchMap$com$sec$epdg$Logger$LoggingHelper$LoggingType:[I

    invoke-virtual {p0}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    sput-boolean p1, Lcom/sec/epdg/Logger/LoggingHelper;->firstLteCheck:Z

    .line 94
    goto :goto_0

    .line 87
    :cond_1
    sput-boolean p1, Lcom/sec/epdg/Logger/LoggingHelper;->lteConnected:Z

    .line 88
    const/4 v0, 0x0

    sput v0, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrpLast:I

    .line 89
    sput v0, Lcom/sec/epdg/Logger/LoggingHelper;->lteRsrqLast:I

    .line 90
    goto :goto_0

    .line 83
    :cond_2
    sput-boolean p1, Lcom/sec/epdg/Logger/LoggingHelper;->lteAvailable:Z

    .line 84
    goto :goto_0

    .line 79
    :cond_3
    sput-boolean p1, Lcom/sec/epdg/Logger/LoggingHelper;->enableLatencyCheck:Z

    .line 80
    goto :goto_0

    .line 75
    :cond_4
    sput-boolean p1, Lcom/sec/epdg/Logger/LoggingHelper;->wlanAvailable:Z

    .line 76
    nop

    .line 98
    :goto_0
    return-void
.end method

.method private static wlanAvailableStatusPrint(Z)V
    .locals 6
    .param p0, "status"    # Z

    .line 189
    const-string v0, "[OH_CRITERIA]Latency ("

    const-string v1, "[OH_CRITERIA]lossRate ("

    const-string v2, "[OH_CRITERIA]RSSI ("

    const-string v3, ")"

    const-string v4, "[HO_OPTIMIZATION]"

    if-eqz p0, :cond_1

    .line 190
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/sec/epdg/Logger/LoggingHelper;->WifiRssiLast:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") >= TH ("

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/sec/epdg/Logger/LoggingHelper;->WifiRssiThRoveIn:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    sget-boolean v2, Lcom/sec/epdg/Logger/LoggingHelper;->enableLatencyCheck:Z

    if-eqz v2, :cond_4

    .line 192
    sget v2, Lcom/sec/epdg/Logger/LoggingHelper;->LatencyThRoveIn:I

    if-eqz v2, :cond_0

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/sec/epdg/Logger/LoggingHelper;->pingLatencyLast_L2W:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") <= THlatency RoveIn("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/sec/epdg/Logger/LoggingHelper;->LatencyThRoveIn:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/sec/epdg/Logger/LoggingHelper;->pingLossRateLast_L2W:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") <= THlossrate RoveIn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/sec/epdg/Logger/LoggingHelper;->LossRateThRoveIn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 199
    :cond_1
    sget-boolean v5, Lcom/sec/epdg/Logger/LoggingHelper;->wifiConnected:Z

    if-eqz v5, :cond_4

    .line 200
    sget v5, Lcom/sec/epdg/Logger/LoggingHelper;->WifiRssiLast:I

    if-eqz v5, :cond_2

    .line 201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/sec/epdg/Logger/LoggingHelper;->WifiRssiLast:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") < TH ("

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/sec/epdg/Logger/LoggingHelper;->WifiRssiThRoveOut:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_2
    sget-boolean v2, Lcom/sec/epdg/Logger/LoggingHelper;->enableLatencyCheck:Z

    if-eqz v2, :cond_4

    sget v2, Lcom/sec/epdg/Logger/LoggingHelper;->pingLatencyLast_W2L:I

    if-eqz v2, :cond_4

    .line 204
    sget v5, Lcom/sec/epdg/Logger/LoggingHelper;->LatencyThRoveOut:I

    if-le v2, v5, :cond_3

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/sec/epdg/Logger/LoggingHelper;->pingLatencyLast_W2L:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") > THlatency RoveOut("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/sec/epdg/Logger/LoggingHelper;->LatencyThRoveOut:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_3
    sget v0, Lcom/sec/epdg/Logger/LoggingHelper;->pingLossRateLast_W2L:I

    sget v2, Lcom/sec/epdg/Logger/LoggingHelper;->LossRateThRoveOut:I

    if-le v0, v2, :cond_4

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/sec/epdg/Logger/LoggingHelper;->pingLossRateLast_W2L:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") > THlossrate RoveOut("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/sec/epdg/Logger/LoggingHelper;->LossRateThRoveOut:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OH_CRITERIA] WLAN is available :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_5

    const-string v1, "true"

    goto :goto_1

    :cond_5
    const-string v1, "false"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sput-boolean p0, Lcom/sec/epdg/Logger/LoggingHelper;->wlanAvailable:Z

    .line 215
    return-void
.end method
