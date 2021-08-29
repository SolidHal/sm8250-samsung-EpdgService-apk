.class public final enum Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;
.super Ljava/lang/Enum;
.source "WfcStatisticsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/tmo/WfcStatisticsBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Bearer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;

.field public static final enum WiFi:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 89
    new-instance v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;

    const-string v1, "WiFi"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;->WiFi:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;

    .line 88
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;

    aput-object v0, v1, v2

    sput-object v1, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;->$VALUES:[Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput-object p3, p0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;->mName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 88
    const-class v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;
    .locals 1

    .line 88
    sget-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;->$VALUES:[Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;

    invoke-virtual {v0}, [Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Bearer;->mName:Ljava/lang/String;

    return-object v0
.end method
