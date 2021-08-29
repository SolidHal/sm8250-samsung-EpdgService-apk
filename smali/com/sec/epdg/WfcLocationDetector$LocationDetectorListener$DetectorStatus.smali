.class public final enum Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;
.super Ljava/lang/Enum;
.source "WfcLocationDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DetectorStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

.field public static final enum CANCELLED:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

.field public static final enum FINISHED:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

.field public static final enum IDLE:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

.field public static final enum RUNNING:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 45
    new-instance v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;->IDLE:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    new-instance v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    const-string v1, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;->RUNNING:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    new-instance v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    const-string v1, "CANCELLED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;->CANCELLED:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    new-instance v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    const-string v1, "FINISHED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;->FINISHED:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    .line 44
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    sget-object v6, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;->IDLE:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    aput-object v6, v1, v2

    sget-object v2, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;->RUNNING:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;->CANCELLED:Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;->$VALUES:[Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    const-class v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;
    .locals 1

    .line 44
    sget-object v0, Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;->$VALUES:[Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    invoke-virtual {v0}, [Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/WfcLocationDetector$LocationDetectorListener$DetectorStatus;

    return-object v0
.end method
