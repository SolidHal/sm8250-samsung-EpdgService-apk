.class synthetic Lcom/sec/epdg/WfcProfileTask$2;
.super Ljava/lang/Object;
.source "WfcProfileTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/WfcProfileTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$epdg$WfcLocationDetector$LocationDetectorListener$DetectorResult:[I

.field static final synthetic $SwitchMap$com$sec$epdg$WfcLocationDetector$LocationDetectorListener$DetectorStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 105
    invoke-static {}, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;->values()[Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/epdg/WfcProfileTask$2;->$SwitchMap$com$sec$epdg$WfcLocationDetector$LocationDetectorListener$DetectorStatus:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;->IDLE:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    invoke-virtual {v2}, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/sec/epdg/WfcProfileTask$2;->$SwitchMap$com$sec$epdg$WfcLocationDetector$LocationDetectorListener$DetectorStatus:[I

    sget-object v3, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;->RUNNING:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    invoke-virtual {v3}, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/sec/epdg/WfcProfileTask$2;->$SwitchMap$com$sec$epdg$WfcLocationDetector$LocationDetectorListener$DetectorStatus:[I

    sget-object v4, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;->CANCELLED:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    invoke-virtual {v4}, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/sec/epdg/WfcProfileTask$2;->$SwitchMap$com$sec$epdg$WfcLocationDetector$LocationDetectorListener$DetectorStatus:[I

    sget-object v5, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;->FINISHED:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    invoke-virtual {v5}, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v4

    .line 114
    :goto_3
    invoke-static {}, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->values()[Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/sec/epdg/WfcProfileTask$2;->$SwitchMap$com$sec$epdg$WfcLocationDetector$LocationDetectorListener$DetectorResult:[I

    :try_start_4
    sget-object v5, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->NONE:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    invoke-virtual {v5}, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sec/epdg/WfcProfileTask$2;->$SwitchMap$com$sec$epdg$WfcLocationDetector$LocationDetectorListener$DetectorResult:[I

    sget-object v4, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->COUNTRY_DETECTED:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    invoke-virtual {v4}, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    :try_start_6
    sget-object v0, Lcom/sec/epdg/WfcProfileTask$2;->$SwitchMap$com$sec$epdg$WfcLocationDetector$LocationDetectorListener$DetectorResult:[I

    sget-object v1, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->ERROR_NW_TIMEOUT:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    invoke-virtual {v1}, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_6
    :try_start_7
    sget-object v0, Lcom/sec/epdg/WfcProfileTask$2;->$SwitchMap$com$sec$epdg$WfcLocationDetector$LocationDetectorListener$DetectorResult:[I

    sget-object v1, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->ERROR_NO_GEOCODER:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    invoke-virtual {v1}, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    :goto_7
    :try_start_8
    sget-object v0, Lcom/sec/epdg/WfcProfileTask$2;->$SwitchMap$com$sec$epdg$WfcLocationDetector$LocationDetectorListener$DetectorResult:[I

    sget-object v1, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->ERROR_LOC_TIMEOUT:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    invoke-virtual {v1}, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    :goto_8
    :try_start_9
    sget-object v0, Lcom/sec/epdg/WfcProfileTask$2;->$SwitchMap$com$sec$epdg$WfcLocationDetector$LocationDetectorListener$DetectorResult:[I

    sget-object v1, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->ERROR_LOCATION_DISABLED:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    invoke-virtual {v1}, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    :goto_9
    return-void
.end method
