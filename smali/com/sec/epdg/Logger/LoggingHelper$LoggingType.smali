.class public final enum Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;
.super Ljava/lang/Enum;
.source "LoggingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Logger/LoggingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoggingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

.field public static final enum CALL_STATUS:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

.field public static final enum ENABLE_LATENCY_CHECK:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

.field public static final enum FIRST_LTE_CHECK:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

.field public static final enum LATENCY_CEHCK_RESULT:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

.field public static final enum LATENCY_TH_ROVEIN:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

.field public static final enum LATENCY_TH_ROVEOUT:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

.field public static final enum LOSSRATE_TH_ROVEIN:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

.field public static final enum LOSSRATE_TH_ROVEOUT:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

.field public static final enum LTE_AVAILABLE:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

.field public static final enum LTE_CONNECTED:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

.field public static final enum LTE_RSRP_LAST:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

.field public static final enum LTE_RSRP_TH_ROVEIN:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

.field public static final enum LTE_RSRP_TH_ROVEOUT:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

.field public static final enum LTE_RSRQ_LAST:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

.field public static final enum LTE_RSRQ_TH_ROVEIN:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

.field public static final enum LTE_RSRQ_TH_ROVEOUT:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

.field public static final enum PING_LATENCY_LAST_L2W:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

.field public static final enum PING_LATENCY_LAST_W2L:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

.field public static final enum PING_LOSSRATE_LAST_L2W:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

.field public static final enum PING_LOSSRATE_LAST_W2L:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

.field public static final enum RTP_LOSS_RATE_LAST:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

.field public static final enum WIFI_CONNECTED:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

.field public static final enum WIFI_RSSI_LAST:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

.field public static final enum WIFI_RSSI_TH_ROVEIN:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

.field public static final enum WIFI_RSSI_TH_ROVEOUT:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

.field public static final enum WLAN_AVAILABLE:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 39
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const-string v1, "LTE_RSRP_TH_ROVEIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LTE_RSRP_TH_ROVEIN:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    .line 40
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const-string v1, "LTE_RSRP_TH_ROVEOUT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LTE_RSRP_TH_ROVEOUT:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    .line 41
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const-string v1, "LTE_RSRP_LAST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LTE_RSRP_LAST:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    .line 42
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const-string v1, "LTE_RSRQ_TH_ROVEIN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LTE_RSRQ_TH_ROVEIN:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    .line 43
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const-string v1, "LTE_RSRQ_TH_ROVEOUT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LTE_RSRQ_TH_ROVEOUT:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    .line 44
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const-string v1, "LTE_RSRQ_LAST"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LTE_RSRQ_LAST:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    .line 45
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const-string v1, "WIFI_RSSI_TH_ROVEIN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->WIFI_RSSI_TH_ROVEIN:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    .line 46
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const-string v1, "WIFI_RSSI_TH_ROVEOUT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->WIFI_RSSI_TH_ROVEOUT:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    .line 47
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const-string v1, "WIFI_RSSI_LAST"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->WIFI_RSSI_LAST:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    .line 48
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const-string v1, "LATENCY_TH_ROVEIN"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LATENCY_TH_ROVEIN:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    .line 49
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const-string v1, "LATENCY_TH_ROVEOUT"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LATENCY_TH_ROVEOUT:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    .line 50
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const-string v1, "LOSSRATE_TH_ROVEIN"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LOSSRATE_TH_ROVEIN:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    .line 51
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const-string v1, "LOSSRATE_TH_ROVEOUT"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LOSSRATE_TH_ROVEOUT:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    .line 52
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const-string v1, "PING_LATENCY_LAST_L2W"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->PING_LATENCY_LAST_L2W:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    .line 53
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const-string v1, "PING_LOSSRATE_LAST_L2W"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->PING_LOSSRATE_LAST_L2W:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    .line 54
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const-string v1, "PING_LATENCY_LAST_W2L"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->PING_LATENCY_LAST_W2L:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    .line 55
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const-string v1, "PING_LOSSRATE_LAST_W2L"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->PING_LOSSRATE_LAST_W2L:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    .line 56
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const-string v1, "WLAN_AVAILABLE"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->WLAN_AVAILABLE:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    .line 57
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const-string v1, "WIFI_CONNECTED"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->WIFI_CONNECTED:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    .line 58
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const-string v1, "ENABLE_LATENCY_CHECK"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->ENABLE_LATENCY_CHECK:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    .line 59
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const-string v1, "LTE_AVAILABLE"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LTE_AVAILABLE:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    .line 60
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const-string v1, "LTE_CONNECTED"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LTE_CONNECTED:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    .line 61
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const-string v1, "FIRST_LTE_CHECK"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->FIRST_LTE_CHECK:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    .line 62
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const-string v1, "CALL_STATUS"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->CALL_STATUS:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    .line 63
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const-string v1, "RTP_LOSS_RATE_LAST"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->RTP_LOSS_RATE_LAST:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    .line 64
    new-instance v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const-string v1, "LATENCY_CEHCK_RESULT"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15}, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LATENCY_CEHCK_RESULT:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    .line 38
    const/16 v1, 0x1a

    new-array v1, v1, [Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    sget-object v15, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LTE_RSRP_TH_ROVEIN:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    aput-object v15, v1, v2

    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LTE_RSRP_TH_ROVEOUT:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LTE_RSRP_LAST:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LTE_RSRQ_TH_ROVEIN:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LTE_RSRQ_TH_ROVEOUT:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LTE_RSRQ_LAST:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->WIFI_RSSI_TH_ROVEIN:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->WIFI_RSSI_TH_ROVEOUT:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->WIFI_RSSI_LAST:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    aput-object v2, v1, v10

    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LATENCY_TH_ROVEIN:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    aput-object v2, v1, v11

    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LATENCY_TH_ROVEOUT:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    aput-object v2, v1, v12

    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LOSSRATE_TH_ROVEIN:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    aput-object v2, v1, v13

    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LOSSRATE_TH_ROVEOUT:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    aput-object v2, v1, v14

    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->PING_LATENCY_LAST_L2W:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->PING_LOSSRATE_LAST_L2W:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->PING_LATENCY_LAST_W2L:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->PING_LOSSRATE_LAST_W2L:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->WLAN_AVAILABLE:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->WIFI_CONNECTED:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->ENABLE_LATENCY_CHECK:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LTE_AVAILABLE:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->LTE_CONNECTED:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->FIRST_LTE_CHECK:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->CALL_STATUS:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->RTP_LOSS_RATE_LAST:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const/16 v2, 0x19

    aput-object v0, v1, v2

    sput-object v1, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->$VALUES:[Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 38
    const-class v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;
    .locals 1

    .line 38
    sget-object v0, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->$VALUES:[Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    invoke-virtual {v0}, [Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    return-object v0
.end method
