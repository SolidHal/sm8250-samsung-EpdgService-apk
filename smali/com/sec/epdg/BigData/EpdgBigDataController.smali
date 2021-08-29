.class public final Lcom/sec/epdg/BigData/EpdgBigDataController;
.super Ljava/lang/Object;
.source "EpdgBigDataController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;,
        Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;,
        Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;,
        Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataHandler;
    }
.end annotation


# static fields
.field private static final BIGDATA_EPDI_LIST:[Ljava/lang/String;

.field private static final BIGDATA_VWCD_LIST:[Ljava/lang/String;

.field private static final COMPONENT_ID:Ljava/lang/String; = "Telephony"

.field private static final HIT_TYPE:Ljava/lang/String; = "ph"

.field private static final IMSLOGAGENT_AUTHORITY:Ljava/lang/String; = "com.sec.imsservice.log"

.field private static final MANUFACTURE:Ljava/lang/String; = "sec"

.field private static final MAX_USED_TIME:I = 0xf423f

.field private static final PARAMETER_FEATURE_EPDI:Ljava/lang/String; = "EPDI"

.field private static final PARAMETER_FEATURE_VWCD:Ljava/lang/String; = "VWCD"

.field private static final TAG:Ljava/lang/String; = "[EpdgBigDataController]"

.field private static final TRANSLATE_SECOND:I = 0x3e8

.field private static mEpdgBigDataController:Lcom/sec/epdg/BigData/EpdgBigDataController; = null

.field private static mEpdgBigDataController2:Lcom/sec/epdg/BigData/EpdgBigDataController; = null

.field private static final mVersion:Ljava/lang/String; = "2"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mEpdgBigDataHandler:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataHandler;

.field private final mEpdgBigDataHandlerThread:Landroid/os/HandlerThread;

.field private mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

.field private mPhoneId:I

.field private mSemHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 44
    const-string v0, "SREV"

    const-string v1, "MNON"

    const-string v2, "PLMN"

    const-string v3, "OMNW"

    const-string v4, "SLOT"

    const-string v5, "HODI"

    const-string v6, "HOTR"

    const-string v7, "HOFR"

    const-string v8, "THSR"

    const-string v9, "ICEC"

    const-string v10, "IDRE"

    const-string v11, "DQFA"

    const-string v12, "RSSI"

    const-string v13, "RSRP"

    const-string v14, "RSRQ"

    const-string v15, "RTPL"

    const-string v16, "WISE"

    const-string v17, "WCSE"

    const-string v18, "WPSE"

    const-string v19, "APSE"

    filled-new-array/range {v0 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->BIGDATA_EPDI_LIST:[Ljava/lang/String;

    .line 47
    const-string v1, "SREV"

    const-string v2, "MNON"

    const-string v3, "PLMN"

    const-string v4, "OMNW"

    const-string v5, "SLOT"

    const-string v6, "VWCT"

    const-string v7, "VWHT"

    const-string v8, "VWCS"

    const-string v9, "ROAM"

    const-string v10, "VWDT"

    const-string v11, "VWSE"

    const-string v12, "VWDR"

    const-string v13, "RSSI"

    const-string v14, "RSRP"

    const-string v15, "RSRQ"

    const-string v16, "RTPL"

    const-string v17, "WISE"

    const-string v18, "WCSE"

    const-string v19, "WPSE"

    const-string v20, "APSE"

    const-string v21, "BABS"

    const-string v22, "BACT"

    const-string v23, "BAVL"

    filled-new-array/range {v1 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->BIGDATA_VWCD_LIST:[Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataController:Lcom/sec/epdg/BigData/EpdgBigDataController;

    .line 59
    sput-object v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataController2:Lcom/sec/epdg/BigData/EpdgBigDataController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 62
    iput-object p1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mContext:Landroid/content/Context;

    .line 63
    iput p2, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mPhoneId:I

    .line 64
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EpdgHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataHandlerThread:Landroid/os/HandlerThread;

    .line 65
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 66
    new-instance v0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataHandler;

    iget-object v1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataHandler;-><init>(Lcom/sec/epdg/BigData/EpdgBigDataController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataHandler:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataHandler;

    .line 67
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mContext:Landroid/content/Context;

    const-string v1, "HqmManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    iput-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 68
    new-instance v0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-direct {v0, p0}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;-><init>(Lcom/sec/epdg/BigData/EpdgBigDataController;)V

    iput-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/sec/epdg/BigData/EpdgBigDataController;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/BigData/EpdgBigDataController;
    .param p1, "x1"    # Ljava/util/HashMap;
    .param p2, "x2"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->sendEpdgBigDataLog(Ljava/util/HashMap;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/epdg/BigData/EpdgBigDataController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/BigData/EpdgBigDataController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->sendEpdgBigDataLogToIMS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/epdg/BigData/EpdgBigDataController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/BigData/EpdgBigDataController;

    .line 31
    iget v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mPhoneId:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/epdg/BigData/EpdgBigDataController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/BigData/EpdgBigDataController;

    .line 31
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 31
    invoke-static {p0, p1, p2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private calculateAverageOfDpdLatency()V
    .locals 18

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mContext:Landroid/content/Context;

    const-string v2, "epdg_bigdata_preference"

    const-string v3, "TIME_DPD_LATENCY_LEVEL_ALL"

    invoke-static {v1, v2, v3}, Lcom/sec/epdg/BigData/EpdgBigDataController;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 207
    .local v1, "mTimeDpdLatencyLevelAll":I
    iget-object v3, v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mContext:Landroid/content/Context;

    const-string v4, "COUNT_DPD_LATENCY_LEVEL_ALL"

    invoke-static {v3, v2, v4}, Lcom/sec/epdg/BigData/EpdgBigDataController;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 209
    .local v3, "mCountDpdLatencyLevelAll":I
    iget-object v4, v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mContext:Landroid/content/Context;

    const-string v5, "TIME_DPD_LATENCY_LEVEL_1"

    invoke-static {v4, v2, v5}, Lcom/sec/epdg/BigData/EpdgBigDataController;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 211
    .local v4, "mTimeDpdLatencyLevel1":I
    iget-object v5, v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mContext:Landroid/content/Context;

    const-string v6, "COUNT_DPD_LATENCY_LEVEL_1"

    invoke-static {v5, v2, v6}, Lcom/sec/epdg/BigData/EpdgBigDataController;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 213
    .local v5, "mCountDpdLatencyLevel1":I
    iget-object v6, v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mContext:Landroid/content/Context;

    const-string v7, "TIME_DPD_LATENCY_LEVEL_2"

    invoke-static {v6, v2, v7}, Lcom/sec/epdg/BigData/EpdgBigDataController;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 215
    .local v6, "mTimeDpdLatencyLevel2":I
    iget-object v7, v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mContext:Landroid/content/Context;

    const-string v8, "COUNT_DPD_LATENCY_LEVEL_2"

    invoke-static {v7, v2, v8}, Lcom/sec/epdg/BigData/EpdgBigDataController;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 217
    .local v7, "mCountDpdLatencyLevel2":I
    iget-object v8, v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mContext:Landroid/content/Context;

    const-string v9, "TIME_DPD_LATENCY_LEVEL_3"

    invoke-static {v8, v2, v9}, Lcom/sec/epdg/BigData/EpdgBigDataController;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 219
    .local v8, "mTimeDpdLatencyLevel3":I
    iget-object v9, v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mContext:Landroid/content/Context;

    const-string v10, "COUNT_DPD_LATENCY_LEVEL_3"

    invoke-static {v9, v2, v10}, Lcom/sec/epdg/BigData/EpdgBigDataController;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 221
    .local v9, "mCountDpdLatencyLevel3":I
    iget-object v10, v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mContext:Landroid/content/Context;

    const-string v11, "TIME_DPD_LATENCY_LEVEL_4"

    invoke-static {v10, v2, v11}, Lcom/sec/epdg/BigData/EpdgBigDataController;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 223
    .local v10, "mTimeDpdLatencyLevel4":I
    iget-object v11, v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mContext:Landroid/content/Context;

    const-string v12, "COUNT_DPD_LATENCY_LEVEL_4"

    invoke-static {v11, v2, v12}, Lcom/sec/epdg/BigData/EpdgBigDataController;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 226
    .local v2, "mCountDpdLatencyLevel4":I
    const/4 v11, 0x0

    .line 227
    .local v11, "mAverageDpdLatencyLevelAll":I
    const/4 v12, 0x0

    .line 228
    .local v12, "mAverageDpdLatencyLevel1":I
    const/4 v13, 0x0

    .line 229
    .local v13, "mAverageDpdLatencyLevel2":I
    const/4 v14, 0x0

    .line 230
    .local v14, "mAverageDpdLatencyLevel3":I
    const/4 v15, 0x0

    .line 232
    .local v15, "mAverageDpdLatencyLevel4":I
    if-lez v3, :cond_0

    .line 233
    div-int v11, v1, v3

    .line 235
    :cond_0
    if-lez v5, :cond_1

    .line 236
    div-int v12, v4, v5

    .line 238
    :cond_1
    if-lez v7, :cond_2

    .line 239
    div-int v13, v6, v7

    .line 241
    :cond_2
    if-lez v9, :cond_3

    .line 242
    div-int v14, v8, v9

    .line 244
    :cond_3
    if-lez v2, :cond_4

    .line 245
    div-int v15, v10, v2

    .line 248
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v15

    .end local v15    # "mAverageDpdLatencyLevel4":I
    .local v16, "mAverageDpdLatencyLevel4":I
    const-string v15, "calculateAverageOfDpdLatency() : mTimeDpdLatencyLevelAll("

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ") / mCountDpdLatencyLevelAll ("

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ")\n mTimeDpdLatencyLevel1("

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ") / mCountDpdLatencyLevel1 ("

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ")\n mTimeDpdLatencyLevel2("

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ") / mCountDpdLatencyLevel2 ("

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ")\n mTimeDpdLatencyLevel3("

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ") / mCountDpdLatencyLevel3 ("

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ")\n mTimeDpdLatencyLevel4("

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ") / mCountDpdLatencyLevel4 ("

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ")\n mAverageDpdLatencyLevelAll("

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ")\n mAverageDpdLatencyLevel1("

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ")\n mAverageDpdLatencyLevel2("

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ")\n mAverageDpdLatencyLevel3("

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ")\n mAverageDpdLatencyLevel4("

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, v16

    .end local v16    # "mAverageDpdLatencyLevel4":I
    .restart local v15    # "mAverageDpdLatencyLevel4":I
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v16, v1

    .end local v1    # "mTimeDpdLatencyLevelAll":I
    .local v16, "mTimeDpdLatencyLevelAll":I
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[EpdgBigDataController]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v0, "AVERAGE_DPD_LATENCY_LEVEL_ALL"

    const/4 v1, 0x0

    move/from16 v17, v2

    move-object/from16 v2, p0

    .end local v2    # "mCountDpdLatencyLevel4":I
    .local v17, "mCountDpdLatencyLevel4":I
    invoke-virtual {v2, v0, v11, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 260
    const-string v0, "AVERAGE_DPD_LATENCY_LEVEL_1"

    invoke-virtual {v2, v0, v12, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 261
    const-string v0, "AVERAGE_DPD_LATENCY_LEVEL_2"

    invoke-virtual {v2, v0, v13, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 262
    const-string v0, "AVERAGE_DPD_LATENCY_LEVEL_3"

    invoke-virtual {v2, v0, v14, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 263
    const-string v0, "AVERAGE_DPD_LATENCY_LEVEL_4"

    invoke-virtual {v2, v0, v15, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 264
    return-void
.end method

.method public static deinitialize(I)V
    .locals 1
    .param p0, "phoneId"    # I

    .line 928
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 929
    sput-object v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataController:Lcom/sec/epdg/BigData/EpdgBigDataController;

    goto :goto_0

    .line 931
    :cond_0
    sput-object v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataController2:Lcom/sec/epdg/BigData/EpdgBigDataController;

    .line 933
    :goto_0
    return-void
.end method

.method public static getNewEpdgBigDataInstance(Landroid/content/Context;I)Lcom/sec/epdg/BigData/EpdgBigDataController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 72
    if-nez p1, :cond_1

    .line 73
    sget-object v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataController:Lcom/sec/epdg/BigData/EpdgBigDataController;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/sec/epdg/BigData/EpdgBigDataController;

    invoke-direct {v0, p0, p1}, Lcom/sec/epdg/BigData/EpdgBigDataController;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataController:Lcom/sec/epdg/BigData/EpdgBigDataController;

    .line 76
    :cond_0
    sget-object v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataController:Lcom/sec/epdg/BigData/EpdgBigDataController;

    return-object v0

    .line 78
    :cond_1
    sget-object v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataController2:Lcom/sec/epdg/BigData/EpdgBigDataController;

    if-nez v0, :cond_2

    .line 79
    new-instance v0, Lcom/sec/epdg/BigData/EpdgBigDataController;

    invoke-direct {v0, p0, p1}, Lcom/sec/epdg/BigData/EpdgBigDataController;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataController2:Lcom/sec/epdg/BigData/EpdgBigDataController;

    .line 81
    :cond_2
    sget-object v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataController2:Lcom/sec/epdg/BigData/EpdgBigDataController;

    return-object v0
.end method

.method private static getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "prefName"    # Ljava/lang/String;

    .line 416
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 417
    .local v1, "mPreference":Landroid/content/SharedPreferences;
    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 418
    .local v0, "mValue":I
    return v0
.end method

.method private normalizeLog(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4
    .param p1, "log"    # Lorg/json/JSONObject;

    .line 199
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "replacedLog":Ljava/lang/String;
    const-string v1, "\\{"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\}"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    const-string v3, "^"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    return-object v0
.end method

.method private sendEpdgBigDataLog(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 19
    .param p2, "FeaureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 86
    .local p1, "BigDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v1, p0

    move-object/from16 v12, p2

    const-string v0, "]"

    const/4 v2, 0x0

    .line 87
    .local v2, "mEpdgBigDatajson":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 89
    .local v3, "mEpdgBigDataList":[Ljava/lang/String;
    iget-object v4, v1, Lcom/sec/epdg/BigData/EpdgBigDataController;->mSemHqmManager:Landroid/os/SemHqmManager;

    const-string v13, "[EpdgBigDataController]"

    if-nez v4, :cond_0

    .line 90
    const-string v0, "sendEpdgBigDataLog() : mSemHqmManager is null"

    invoke-static {v13, v0}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void

    .line 95
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5

    move-object v14, v4

    .line 98
    .end local v2    # "mEpdgBigDatajson":Lorg/json/JSONObject;
    .local v14, "mEpdgBigDatajson":Lorg/json/JSONObject;
    :try_start_1
    new-instance v2, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;

    invoke-direct {v2, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;-><init>(Lcom/sec/epdg/BigData/EpdgBigDataController;)V

    move-object v15, v2

    .line 101
    .local v15, "mEpdgBigDataCommonHeader":Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;
    const-string v2, "SREV"

    invoke-virtual {v15}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;->getRevisionOfBigData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string v2, "MNON"

    invoke-virtual {v15}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;->getMnoNameBasedOnSimPlmn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string v2, "PLMN"

    invoke-virtual {v15}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;->getPlmn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v2, "OMNW"

    invoke-virtual {v15}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;->getOmcNetworkCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v2, "SLOT"

    invoke-virtual {v15}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;->getCurrentSimSlot()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v2, "EPDI"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    sget-object v2, Lcom/sec/epdg/BigData/EpdgBigDataController;->BIGDATA_EPDI_LIST:[Ljava/lang/String;

    move-object v11, v2

    .end local v3    # "mEpdgBigDataList":[Ljava/lang/String;
    .local v2, "mEpdgBigDataList":[Ljava/lang/String;
    goto :goto_0

    .line 109
    .end local v2    # "mEpdgBigDataList":[Ljava/lang/String;
    .restart local v3    # "mEpdgBigDataList":[Ljava/lang/String;
    :cond_1
    const-string v2, "VWCD"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 110
    sget-object v2, Lcom/sec/epdg/BigData/EpdgBigDataController;->BIGDATA_VWCD_LIST:[Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v11, v2

    .line 117
    .end local v3    # "mEpdgBigDataList":[Ljava/lang/String;
    .local v11, "mEpdgBigDataList":[Ljava/lang/String;
    :goto_0
    :try_start_2
    array-length v2, v11
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    :try_start_3
    aget-object v4, v11, v3

    .line 118
    .local v4, "EpdgBigDataItem":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 119
    .local v6, "mKey":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v7, :cond_3

    .line 121
    move-object/from16 v10, p1

    :try_start_4
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 122
    .local v7, "mObject":Ljava/lang/Object;
    if-eqz v7, :cond_2

    .line 123
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    goto :goto_4

    .line 126
    :cond_2
    const-string v8, "sendEpdgBigDataLog : mObject is null"

    invoke-static {v13, v8}, Lcom/sec/epdg/Logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 136
    .end local v4    # "EpdgBigDataItem":Ljava/lang/String;
    .end local v6    # "mKey":Ljava/lang/String;
    .end local v7    # "mObject":Ljava/lang/Object;
    .end local v15    # "mEpdgBigDataCommonHeader":Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;
    :catch_0
    move-exception v0

    move-object v3, v11

    move-object v2, v14

    goto/16 :goto_5

    .line 119
    .restart local v4    # "EpdgBigDataItem":Ljava/lang/String;
    .restart local v6    # "mKey":Ljava/lang/String;
    .restart local v15    # "mEpdgBigDataCommonHeader":Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;
    :cond_3
    move-object/from16 v10, p1

    .line 129
    .end local v6    # "mKey":Ljava/lang/String;
    :goto_3
    goto :goto_2

    .line 118
    :cond_4
    move-object/from16 v10, p1

    .line 117
    .end local v4    # "EpdgBigDataItem":Ljava/lang/String;
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 136
    .end local v15    # "mEpdgBigDataCommonHeader":Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;
    :catch_1
    move-exception v0

    move-object/from16 v10, p1

    move-object v3, v11

    move-object v2, v14

    goto/16 :goto_5

    .line 132
    .restart local v15    # "mEpdgBigDataCommonHeader":Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;
    :cond_5
    move-object/from16 v10, p1

    :try_start_5
    invoke-direct {v1, v14}, Lcom/sec/epdg/BigData/EpdgBigDataController;->normalizeLog(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .line 133
    .local v9, "mFullLog":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendEpdgBigDataLog() : Send Data to HQM [COMPONENT_ID : Telephony, Feature : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/sec/epdg/Logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendEpdgBigDataLog() : Full String ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/sec/epdg/Logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v2, v1, Lcom/sec/epdg/BigData/EpdgBigDataController;->mSemHqmManager:Landroid/os/SemHqmManager;

    const/4 v3, 0x0

    const-string v4, "Telephony"

    const-string v6, "ph"

    const-string v7, "2"

    const-string v8, "sec"

    const-string v0, ""

    const-string v16, ""
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    move-object/from16 v5, p2

    move-object/from16 v17, v9

    .end local v9    # "mFullLog":Ljava/lang/String;
    .local v17, "mFullLog":Ljava/lang/String;
    move-object v9, v0

    move-object/from16 v10, v17

    move-object/from16 v18, v11

    .end local v11    # "mEpdgBigDataList":[Ljava/lang/String;
    .local v18, "mEpdgBigDataList":[Ljava/lang/String;
    move-object/from16 v11, v16

    :try_start_6
    invoke-virtual/range {v2 .. v11}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    .line 138
    move-object/from16 v11, v18

    .end local v15    # "mEpdgBigDataCommonHeader":Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;
    .end local v17    # "mFullLog":Ljava/lang/String;
    goto :goto_6

    .line 136
    :catch_2
    move-exception v0

    move-object v2, v14

    move-object/from16 v3, v18

    goto :goto_5

    .end local v18    # "mEpdgBigDataList":[Ljava/lang/String;
    .restart local v11    # "mEpdgBigDataList":[Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v18, v11

    move-object v2, v14

    move-object/from16 v3, v18

    .end local v11    # "mEpdgBigDataList":[Ljava/lang/String;
    .restart local v18    # "mEpdgBigDataList":[Ljava/lang/String;
    goto :goto_5

    .line 112
    .end local v18    # "mEpdgBigDataList":[Ljava/lang/String;
    .restart local v3    # "mEpdgBigDataList":[Ljava/lang/String;
    .restart local v15    # "mEpdgBigDataCommonHeader":Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;
    :cond_6
    :try_start_7
    const-string v0, "sendEpdgBigDataLog : FeaureName is wrong"

    invoke-static {v13, v0}, Lcom/sec/epdg/Logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4

    .line 113
    return-void

    .line 136
    .end local v15    # "mEpdgBigDataCommonHeader":Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataCommonHeader;
    :catch_4
    move-exception v0

    move-object v2, v14

    goto :goto_5

    .end local v14    # "mEpdgBigDatajson":Lorg/json/JSONObject;
    .local v2, "mEpdgBigDatajson":Lorg/json/JSONObject;
    :catch_5
    move-exception v0

    .line 137
    .local v0, "e":Lorg/json/JSONException;
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendEpdgBigDataLog: JSONException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v2

    move-object v11, v3

    .line 139
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "mEpdgBigDatajson":Lorg/json/JSONObject;
    .end local v3    # "mEpdgBigDataList":[Ljava/lang/String;
    .restart local v11    # "mEpdgBigDataList":[Ljava/lang/String;
    .restart local v14    # "mEpdgBigDatajson":Lorg/json/JSONObject;
    :goto_6
    return-void
.end method

.method private sendEpdgBigDataLogToIMS(Ljava/lang/String;)V
    .locals 8
    .param p1, "FeaureName"    # Ljava/lang/String;

    .line 142
    const-string v0, "[EpdgBigDataController]"

    const/4 v1, 0x0

    .line 143
    .local v1, "mEpdgBigDatajson":Lorg/json/JSONObject;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 146
    .local v2, "mEpdgBigDataContentValues":Landroid/content/ContentValues;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v3

    .line 149
    invoke-direct {p0}, Lcom/sec/epdg/BigData/EpdgBigDataController;->calculateAverageOfDpdLatency()V

    .line 151
    new-instance v3, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;

    invoke-direct {v3, p0}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;-><init>(Lcom/sec/epdg/BigData/EpdgBigDataController;)V

    .line 154
    .local v3, "mEpdgBigDataDailyReportHeader":Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;
    const-string v4, "feature"

    const-string v5, "DRPT"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v4, "send_mode"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    const-string v4, "overwrite_mode"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v4, "ACLW"

    invoke-virtual {v3}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->getAllCallCountL2WHandover()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v4, "ACWL"

    invoke-virtual {v3}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->getAllCallCountW2LHandover()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v4, "VCAT"

    invoke-virtual {v3}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->getVowifiCallTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v4, "WHOC"

    invoke-virtual {v3}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->getL2WHandoverOkCount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v4, "WHFC"

    invoke-virtual {v3}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->getL2WHandoverFailCount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v4, "LHOC"

    invoke-virtual {v3}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->getW2LHandoverOkCount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v4, "LHFC"

    invoke-virtual {v3}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->getW2LHandoverFailCount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v4, "VCDC"

    invoke-virtual {v3}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->getAllDropCallCountByDereg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v4, "LHWS"

    invoke-virtual {v3}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->getAllCountW2LHandoverByWeakWifiSignal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v4, "LHRL"

    invoke-virtual {v3}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->getAllCountW2LHandoverByHighRtpLoss()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v4, "RLRC"

    invoke-virtual {v3}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->getAllCountRtpLossRate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v4, "DYRC"

    invoke-virtual {v3}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->getAllCountDpdResponse()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v4, "DNRC"

    invoke-virtual {v3}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->getAllCountNoDpdResponse()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v4, "ADLA"

    invoke-virtual {v3}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->getAverageOfDpdLatencyLevelAll()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v4, "ADL1"

    invoke-virtual {v3}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->getAverageOfDpdLatencyLevel1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v4, "ADL2"

    invoke-virtual {v3}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->getAverageOfDpdLatencyLevel2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v4, "ADL3"

    invoke-virtual {v3}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->getAverageOfDpdLatencyLevel3()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v4, "ADL4"

    invoke-virtual {v3}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;->getAverageOfDpdLatencyLevel4()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 179
    .local v5, "mKey":Ljava/lang/String;
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 180
    .local v6, "mObject":Ljava/lang/Object;
    if-eqz v6, :cond_0

    .line 181
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 183
    :cond_0
    const-string v7, "sendEpdgBigDataLogToIMS : mObject is null"

    invoke-static {v0, v7}, Lcom/sec/epdg/Logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .end local v5    # "mKey":Ljava/lang/String;
    .end local v6    # "mObject":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 187
    :cond_1
    nop

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendEpdgBigDataLogToIMS() : Full String ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sec/epdg/Logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v4, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://com.sec.imsservice.log"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v3    # "mEpdgBigDataDailyReportHeader":Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataDailyReportHeader;
    goto :goto_2

    .line 193
    :catch_0
    move-exception v3

    .line 194
    .local v3, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendEpdgBigDataLogToIMS: JSONException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_2
    return-void
.end method

.method private static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "prefName"    # Ljava/lang/String;
    .param p3, "prefValue"    # I

    .line 422
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 423
    .local v0, "mPreference":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 424
    .local v1, "mEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 425
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 426
    return-void
.end method


# virtual methods
.method public getCallEndTime()J
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v0}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->getCallEndTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCallStartTime()J
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v0}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->getCallStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCountOfL2WHandover()I
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v0}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->getCountOfL2WHandover()I

    move-result v0

    return v0
.end method

.method public getCountOfW2LHandover()I
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v0}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->getCountOfW2LHandover()I

    move-result v0

    return v0
.end method

.method public getCurrentCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;
    .locals 2

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentCallStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v1}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->getCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[EpdgBigDataController]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v0}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->getCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v0

    return-object v0
.end method

.method public getEpdgBigDataHandler()Landroid/os/Handler;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataHandler:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataHandler;

    return-object v0
.end method

.method public getL2WHandoverStartTime()J
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v0}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->getL2WHandoverStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVoWifiCallDropType()Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;
    .locals 2

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVoWifiCallDropType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v1}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->getVoWifiCallDropType()Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[EpdgBigDataController]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v0}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->getVoWifiCallDropType()Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;

    move-result-object v0

    return-object v0
.end method

.method public initializeEpdgBigDataSharedPreference()V
    .locals 2

    .line 273
    const-string v0, "SHAREDPREF_ALL_CALL_COUNT_L2W_HANDOVER"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 274
    const-string v0, "SHAREDPREF_ALL_CALL_COUNT_W2L_HANDOVER"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 275
    const-string v0, "VOWIFI_CALL_ALL_TIME"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 276
    const-string v0, "L2W_HANDOVER_OK_COUNT"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 277
    const-string v0, "L2W_HANDOVER_FAIL_COUNT"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 278
    const-string v0, "W2L_HANDOVER_OK_COUNT"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 279
    const-string v0, "W2L_HANDOVER_FAIL_COUNT"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 280
    const-string v0, "ALL_CALL_COUNT_DROP_BY_DEREG"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 281
    const-string v0, "W2L_HO_BY_WEAK_SIGNAL"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 282
    const-string v0, "W2L_HO_BY_RTP_LOSS"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 283
    const-string v0, "RTP_LOSS_RATE_COUNT"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 284
    const-string v0, "DPD_RESPONSE_COUNT"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 285
    const-string v0, "DPD_NO_RESPONSE_COUNT"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 286
    const-string v0, "AVERAGE_DPD_LATENCY_LEVEL_ALL"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 287
    const-string v0, "AVERAGE_DPD_LATENCY_LEVEL_1"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 288
    const-string v0, "AVERAGE_DPD_LATENCY_LEVEL_2"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 289
    const-string v0, "AVERAGE_DPD_LATENCY_LEVEL_3"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 290
    const-string v0, "AVERAGE_DPD_LATENCY_LEVEL_4"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 291
    const-string v0, "TIME_DPD_LATENCY_LEVEL_1"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 292
    const-string v0, "COUNT_DPD_LATENCY_LEVEL_1"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 293
    const-string v0, "TIME_DPD_LATENCY_LEVEL_2"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 294
    const-string v0, "COUNT_DPD_LATENCY_LEVEL_2"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 295
    const-string v0, "TIME_DPD_LATENCY_LEVEL_3"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 296
    const-string v0, "COUNT_DPD_LATENCY_LEVEL_3"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 297
    const-string v0, "TIME_DPD_LATENCY_LEVEL_4"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 298
    const-string v0, "COUNT_DPD_LATENCY_LEVEL_4"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 299
    const-string v0, "TIME_DPD_LATENCY_LEVEL_ALL"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 300
    const-string v0, "COUNT_DPD_LATENCY_LEVEL_ALL"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 301
    return-void
.end method

.method public printCurrentVowifiCallInfo()Ljava/lang/String;
    .locals 2

    .line 429
    const-string v0, "No remain VoWIFI Call Info"

    .line 430
    .local v0, "mPrintCurrentVowifiCallInfo":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    if-eqz v1, :cond_0

    .line 431
    invoke-virtual {v1}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    :cond_0
    return-object v0
.end method

.method public sendEpdgDailyReportEvent()V
    .locals 2

    .line 538
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->getNewEpdgBigDataInstance(Landroid/content/Context;I)Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/BigData/EpdgBigDataController;->getEpdgBigDataHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 539
    .local v0, "mBigDataMsg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 540
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 541
    return-void
.end method

.method public sendEpdgFailInformationEvent(IIIIIIILcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;IIIZIII)V
    .locals 9
    .param p1, "handoverDirection"    # I
    .param p2, "handoverTriggerReason"    # I
    .param p3, "handoverFailReason"    # I
    .param p4, "throttleStateReason"    # I
    .param p5, "ikeError"    # I
    .param p6, "disconnectionReason"    # I
    .param p7, "dnsQueryFail"    # I
    .param p8, "sendReason"    # Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;
    .param p9, "currentWifiRssi"    # I
    .param p10, "currentLteRsrp"    # I
    .param p11, "CurrentLteRsrq"    # I
    .param p12, "isImsCallConnected"    # Z
    .param p13, "currentRtpLossRate"    # I
    .param p14, "vowifiSetting"    # I
    .param p15, "wifiPrefSetting"    # I

    .line 492
    move-object v0, p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 494
    .local v1, "mVoWifiCallMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move/from16 v2, p9

    .line 495
    .local v2, "mCurrentWifiRssi":I
    move/from16 v3, p10

    .line 496
    .local v3, "mCurrentLteRsrp":I
    move/from16 v4, p11

    .line 499
    .local v4, "mCurrentLteRsrq":I
    const/4 v5, 0x0

    if-gtz v2, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    move v2, v6

    .line 500
    if-gtz v3, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    move v3, v6

    .line 501
    if-gtz v4, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    move v4, v6

    .line 503
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EPDI : sendEpdgFailInformationEvent : sendReason("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "[EpdgBigDataController]"

    invoke-static {v8, v6}, Lcom/sec/epdg/Logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    if-nez p12, :cond_3

    .line 506
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EPDI : It doens\'t need to be sent this EPDI intent : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p8 .. p8}, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " due to no VoWIFI calling"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/sec/epdg/Logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    return-void

    .line 511
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "HODI"

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "HOTR"

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "HOFR"

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "THSR"

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "ICEC"

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "IDRE"

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "DQFA"

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "RSSI"

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "RSRP"

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "RSRQ"

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "RTPL"

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    iget-object v6, v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "wifi_on"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "WISE"

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "WCSE"

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "WPSE"

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    iget-object v6, v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "airplane_mode_on"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "APSE"

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    iget-object v6, v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mContext:Landroid/content/Context;

    iget v8, v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mPhoneId:I

    invoke-static {v6, v8}, Lcom/sec/epdg/BigData/EpdgBigDataController;->getNewEpdgBigDataInstance(Landroid/content/Context;I)Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/BigData/EpdgBigDataController;->getEpdgBigDataHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-static {v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v6

    .line 531
    .local v6, "mBigDataMsg":Landroid/os/Message;
    iput v5, v6, Landroid/os/Message;->what:I

    .line 532
    iput-object v1, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 533
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 534
    return-void
.end method

.method public sendVowifiCallDropEvent(IIIIIIIIZIIIIII)V
    .locals 8
    .param p1, "vowifiCallType"    # I
    .param p2, "vowifiCallStatus"    # I
    .param p3, "vowifiCallDropType"    # I
    .param p4, "sipErrorReason"    # I
    .param p5, "vowifiCallDeregReason"    # I
    .param p6, "currnetWifiRssi"    # I
    .param p7, "currentLteRsrp"    # I
    .param p8, "currentLteRsrq"    # I
    .param p9, "isRoaming"    # Z
    .param p10, "currentRtpLossRate"    # I
    .param p11, "vowifiSetting"    # I
    .param p12, "wifiPrefSetting"    # I
    .param p13, "betteryStatus"    # I
    .param p14, "batteryChargeType"    # I
    .param p15, "batteryVoltage"    # I

    .line 442
    move-object v0, p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 444
    .local v1, "mVoWifiCallMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move v2, p6

    .line 445
    .local v2, "mCurrentWifiRssi":I
    move v3, p7

    .line 446
    .local v3, "mCurrentLteRsrp":I
    move/from16 v4, p8

    .line 449
    .local v4, "mCurrentLteRsrq":I
    const/4 v5, 0x0

    if-gtz v2, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    move v2, v6

    .line 450
    if-gtz v3, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    move v3, v6

    .line 451
    if-gtz v4, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    move v4, v6

    .line 454
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "VWCT"

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "VWHT"

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "VWCS"

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    if-eqz p9, :cond_3

    .line 458
    sget-object v6, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;->ROAMING:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;

    goto :goto_3

    :cond_3
    sget-object v6, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;->DOMESTIC:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;

    :goto_3
    invoke-virtual {v6}, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiRoamingStatus;->getValue()I

    move-result v6

    .line 457
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ROAM"

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "VWDT"

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "VWSE"

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "VWDR"

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "RSSI"

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "RSRP"

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "RSRQ"

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "RTPL"

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    iget-object v6, v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "WISE"

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "WCSE"

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "WPSE"

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v6, v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "APSE"

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "BABS"

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "BACT"

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "BAVL"

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-object v5, v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mContext:Landroid/content/Context;

    iget v6, v0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mPhoneId:I

    invoke-static {v5, v6}, Lcom/sec/epdg/BigData/EpdgBigDataController;->getNewEpdgBigDataInstance(Landroid/content/Context;I)Lcom/sec/epdg/BigData/EpdgBigDataController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/BigData/EpdgBigDataController;->getEpdgBigDataHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v5

    .line 480
    .local v5, "mBigDataMsg":Landroid/os/Message;
    const/4 v6, 0x1

    iput v6, v5, Landroid/os/Message;->what:I

    .line 481
    iput-object v1, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 482
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 483
    return-void
.end method

.method public updateAllCallInfoSharedPreference()V
    .locals 4

    .line 401
    const-string v0, "SHAREDPREF_ALL_CALL_COUNT_L2W_HANDOVER"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 402
    const-string v0, "SHAREDPREF_ALL_CALL_COUNT_W2L_HANDOVER"

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 404
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v0}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->getAllTimeMaintaingIWLAN()I

    move-result v0

    if-lez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mContext:Landroid/content/Context;

    const-string v1, "epdg_bigdata_preference"

    const-string v2, "VOWIFI_CALL_ALL_TIME"

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/BigData/EpdgBigDataController;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 407
    .local v0, "AllTimeMaintaingIWLAN":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAllInfoSharedPreference : AllTimeMaintaingIWLAN ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sec) / getAllTimeMaintaingIWLAN ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    .line 408
    invoke-virtual {v3}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->getAllTimeMaintaingIWLAN()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sec)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 407
    const-string v3, "[EpdgBigDataController]"

    invoke-static {v3, v1}, Lcom/sec/epdg/Logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v1}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->getAllTimeMaintaingIWLAN()I

    move-result v1

    add-int/2addr v0, v1

    .line 410
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V

    .line 412
    .end local v0    # "AllTimeMaintaingIWLAN":I
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v0}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->initializeEpdgBigDataVowifiCallInfo()V

    .line 413
    return-void
.end method

.method public updateCallEndTime(J)V
    .locals 3
    .param p1, "currentTime"    # J

    .line 355
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->setCallEndTime(J)V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCallEndTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v1}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->getCallEndTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[EpdgBigDataController]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public updateCallStartTime(J)V
    .locals 3
    .param p1, "currentTime"    # J

    .line 345
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->setCallStartTime(J)V

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCallStartTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v1}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->getCallStartTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[EpdgBigDataController]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public updateCallStatus(Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;)V
    .locals 2
    .param p1, "callStatus"    # Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    .line 339
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->setCallStatus(Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;)V

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCallStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v1}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->getCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[EpdgBigDataController]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public updateCountOfL2WHandover()V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v0}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->getCountOfL2WHandover()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->setCountOfL2WHandover(I)V

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCountOfL2WHandover : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v1}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->getCountOfL2WHandover()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[EpdgBigDataController]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public updateCountOfW2LHandover()V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v0}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->getCountOfW2LHandover()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->setCountOfW2LHandover(I)V

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCountOfW2LHandover : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v1}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->getCountOfW2LHandover()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[EpdgBigDataController]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public updateEpdgBigDataSharedPreference(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "SharedPrefName"    # Ljava/lang/String;
    .param p2, "NewValue"    # I
    .param p3, "IsCountValue"    # Z

    .line 267
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mContext:Landroid/content/Context;

    const-string v1, "epdg_bigdata_preference"

    invoke-static {v0, v1, p1}, Lcom/sec/epdg/BigData/EpdgBigDataController;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 268
    .local v0, "mCurrentValue":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEpdgBigDataSharedPreference() : SharedPrefName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], IsCountValue [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "], mCurrentValue ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], NewValue ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[EpdgBigDataController]"

    invoke-static {v3, v2}, Lcom/sec/epdg/Logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v2, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_0

    add-int v3, v0, p2

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    invoke-static {v2, v1, p1, v3}, Lcom/sec/epdg/BigData/EpdgBigDataController;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 270
    return-void
.end method

.method public updateL2WHandoverStartTime(J)V
    .locals 3
    .param p1, "currentTime"    # J

    .line 365
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->setL2WHandoverStartTime(J)V

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateL2WHandoverStartTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v1}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->getL2WHandoverStartTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[EpdgBigDataController]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public updateTimeMaintaingIWLAN()V
    .locals 11

    .line 317
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 318
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v2}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->getL2WHandoverStartTime()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 319
    .local v2, "mUsedTime":J
    const/4 v4, 0x0

    .line 321
    .local v4, "mAllusedTime":I
    iget-object v5, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v5}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->getL2WHandoverStartTime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const-string v6, "[EpdgBigDataController]"

    if-gtz v5, :cond_0

    .line 322
    const-string v5, "calculateTimeMaintaingIWLAN : L2W HO Start Time is 0, so we don\'t need to calculate VoWIFI call time."

    invoke-static {v6, v5}, Lcom/sec/epdg/Logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void

    .line 326
    :cond_0
    cmp-long v5, v2, v7

    if-lez v5, :cond_2

    .line 327
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calculateTimeMaintaingIWLAN : L2W HO Start Time ("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    .line 328
    invoke-virtual {v9}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->getL2WHandoverStartTime()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " ms), End Time ("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " ms) All used time ("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " ms)"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 327
    invoke-static {v6, v5}, Lcom/sec/epdg/Logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v5, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v5}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->getAllTimeMaintaingIWLAN()I

    move-result v5

    const-wide/16 v9, 0x3e8

    div-long v9, v2, v9

    long-to-int v9, v9

    add-int v4, v5, v9

    .line 331
    iget-object v5, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    const v9, 0xf423f

    if-ge v4, v9, :cond_1

    move v9, v4

    :cond_1
    invoke-virtual {v5, v9}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->setAllTimeMaintaingIWLAN(I)V

    .line 332
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calculateTimeMaintaingIWLAN : AllTimeMaintaingIWLAN ("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v9}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->getAllTimeMaintaingIWLAN()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " sec)"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/sec/epdg/Logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_2
    iget-object v5, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v5, v7, v8}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->setL2WHandoverStartTime(J)V

    .line 335
    return-void
.end method

.method public updateVoWifiCallDropType(Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;)V
    .locals 2
    .param p1, "voWifiCallDropType"    # Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;

    .line 395
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->setVoWifiCallDropType(Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;)V

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVoWifiCallDropType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController;->mEpdgBigDataVowifiCallInfo:Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;

    invoke-virtual {v1}, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->getVoWifiCallDropType()Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[EpdgBigDataController]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void
.end method
