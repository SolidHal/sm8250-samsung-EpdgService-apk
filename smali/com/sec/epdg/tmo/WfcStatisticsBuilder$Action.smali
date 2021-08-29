.class public final enum Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;
.super Ljava/lang/Enum;
.source "WfcStatisticsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/tmo/WfcStatisticsBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;

.field public static final enum END:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;

.field public static final enum START:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 79
    new-instance v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;->START:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;

    .line 80
    new-instance v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;

    const-string v1, "END"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;->END:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;

    .line 78
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;

    sget-object v4, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;->START:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;->$VALUES:[Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 78
    const-class v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;
    .locals 1

    .line 78
    sget-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;->$VALUES:[Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;

    invoke-virtual {v0}, [Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;

    return-object v0
.end method
