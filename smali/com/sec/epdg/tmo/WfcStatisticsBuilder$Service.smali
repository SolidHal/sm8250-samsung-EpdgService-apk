.class public final enum Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;
.super Ljava/lang/Enum;
.source "WfcStatisticsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/tmo/WfcStatisticsBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Service"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;

.field public static final enum CALL:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;

.field public static final enum MMS:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;

.field public static final enum REG:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;

.field public static final enum SMS:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 72
    new-instance v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;

    const-string v1, "REG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;->REG:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;

    .line 73
    new-instance v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;

    const-string v1, "CALL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;->CALL:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;

    .line 74
    new-instance v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;

    const-string v1, "SMS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;->SMS:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;

    .line 75
    new-instance v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;

    const-string v1, "MMS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;->MMS:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;

    .line 71
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;

    sget-object v6, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;->REG:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;

    aput-object v6, v1, v2

    sget-object v2, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;->CALL:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;->SMS:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;->$VALUES:[Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 71
    const-class v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;
    .locals 1

    .line 71
    sget-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;->$VALUES:[Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;

    invoke-virtual {v0}, [Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;

    return-object v0
.end method
