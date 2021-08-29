.class public final enum Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;
.super Ljava/lang/Enum;
.source "LoggingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Logger/LoggingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LazerLogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;

.field public static final enum IPSEC_CONNECTION:Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;

.field public static final enum WIFI_TO_LTE_HO:Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 68
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;

    const-string v1, "WIFI_TO_LTE_HO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;->WIFI_TO_LTE_HO:Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;

    .line 69
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;

    const-string v1, "IPSEC_CONNECTION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;->IPSEC_CONNECTION:Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;

    .line 67
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;

    sget-object v4, Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;->WIFI_TO_LTE_HO:Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;->$VALUES:[Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 67
    const-class v0, Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;
    .locals 1

    .line 67
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;->$VALUES:[Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;

    invoke-virtual {v0}, [Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Logger/LoggingHelper$LazerLogType;

    return-object v0
.end method
