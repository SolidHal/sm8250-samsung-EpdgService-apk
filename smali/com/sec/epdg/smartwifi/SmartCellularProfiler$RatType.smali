.class final enum Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;
.super Ljava/lang/Enum;
.source "SmartCellularProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartCellularProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RatType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;

.field public static final enum RAT_TYPE_2G:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;

.field public static final enum RAT_TYPE_3G:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;

.field public static final enum RAT_TYPE_4G:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;

.field public static final enum RAT_TYPE_5G:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 90
    new-instance v0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;

    const-string v1, "RAT_TYPE_2G"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;->RAT_TYPE_2G:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;

    .line 91
    new-instance v0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;

    const-string v1, "RAT_TYPE_3G"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;->RAT_TYPE_3G:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;

    .line 92
    new-instance v0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;

    const-string v1, "RAT_TYPE_4G"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;->RAT_TYPE_4G:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;

    .line 93
    new-instance v0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;

    const-string v1, "RAT_TYPE_5G"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;->RAT_TYPE_5G:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;

    .line 89
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;

    sget-object v6, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;->RAT_TYPE_2G:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;->RAT_TYPE_3G:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;->RAT_TYPE_4G:Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;->$VALUES:[Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 89
    const-class v0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;
    .locals 1

    .line 89
    sget-object v0, Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;->$VALUES:[Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;

    invoke-virtual {v0}, [Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/smartwifi/SmartCellularProfiler$RatType;

    return-object v0
.end method
