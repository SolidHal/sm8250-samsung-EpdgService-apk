.class public final enum Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;
.super Ljava/lang/Enum;
.source "WfcLocationDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DetectorResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

.field public static final enum COUNTRY_DETECTED:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

.field public static final enum ERROR_LOCATION_DISABLED:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

.field public static final enum ERROR_LOC_TIMEOUT:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

.field public static final enum ERROR_NO_GEOCODER:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

.field public static final enum ERROR_NW_TIMEOUT:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

.field public static final enum NONE:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 49
    new-instance v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->NONE:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    new-instance v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    const-string v1, "COUNTRY_DETECTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->COUNTRY_DETECTED:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    new-instance v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    const-string v1, "ERROR_LOC_TIMEOUT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->ERROR_LOC_TIMEOUT:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    new-instance v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    const-string v1, "ERROR_NW_TIMEOUT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->ERROR_NW_TIMEOUT:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    new-instance v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    const-string v1, "ERROR_NO_GEOCODER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->ERROR_NO_GEOCODER:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    new-instance v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    const-string v1, "ERROR_LOCATION_DISABLED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->ERROR_LOCATION_DISABLED:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    .line 48
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    sget-object v8, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->NONE:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    aput-object v8, v1, v2

    sget-object v2, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->COUNTRY_DETECTED:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->ERROR_LOC_TIMEOUT:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->ERROR_NW_TIMEOUT:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->ERROR_NO_GEOCODER:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->$VALUES:[Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 48
    const-class v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;
    .locals 1

    .line 48
    sget-object v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->$VALUES:[Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    invoke-virtual {v0}, [Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorResult;

    return-object v0
.end method
