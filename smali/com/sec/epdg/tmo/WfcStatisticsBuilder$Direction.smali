.class public final enum Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;
.super Ljava/lang/Enum;
.source "WfcStatisticsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/tmo/WfcStatisticsBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;

.field public static final enum MO:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;

.field public static final enum MT:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 84
    new-instance v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;

    const-string v1, "MO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;->MO:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;

    .line 85
    new-instance v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;

    const-string v1, "MT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;->MT:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;

    .line 83
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;

    sget-object v4, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;->MO:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;->$VALUES:[Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 83
    const-class v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;
    .locals 1

    .line 83
    sget-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;->$VALUES:[Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;

    invoke-virtual {v0}, [Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;

    return-object v0
.end method
