.class public final enum Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;
.super Ljava/lang/Enum;
.source "SubScriptionConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/SubScriptionConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DnsRetryReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

.field public static final enum DATA_RETRY_8MIN_ONWARD_TIMER_EXPIRED:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

.field public static final enum DNS_RETRY_TIMER_EXPIRY:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

.field public static final enum DNS_TTL_CHECK:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

.field public static final enum MAPCON_CHANGE:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

.field public static final enum SCREEN_ON_INTENT:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

.field public static final enum TEPDG_TIMER_EXPIRED:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

.field public static final enum WIFI_IPTYPE_CHANGE:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

.field public static final enum WIFI_RECONNECT:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 109
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    const-string v1, "WIFI_RECONNECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->WIFI_RECONNECT:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    .line 110
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    const-string v1, "TEPDG_TIMER_EXPIRED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->TEPDG_TIMER_EXPIRED:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    .line 111
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    const-string v1, "SCREEN_ON_INTENT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->SCREEN_ON_INTENT:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    .line 112
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    const-string v1, "DATA_RETRY_8MIN_ONWARD_TIMER_EXPIRED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->DATA_RETRY_8MIN_ONWARD_TIMER_EXPIRED:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    .line 113
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    const-string v1, "MAPCON_CHANGE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->MAPCON_CHANGE:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    .line 114
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    const-string v1, "WIFI_IPTYPE_CHANGE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->WIFI_IPTYPE_CHANGE:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    .line 115
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    const-string v1, "DNS_TTL_CHECK"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->DNS_TTL_CHECK:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    .line 116
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    const-string v1, "DNS_RETRY_TIMER_EXPIRY"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->DNS_RETRY_TIMER_EXPIRY:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    .line 108
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    sget-object v10, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->WIFI_RECONNECT:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    aput-object v10, v1, v2

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->TEPDG_TIMER_EXPIRED:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->SCREEN_ON_INTENT:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->DATA_RETRY_8MIN_ONWARD_TIMER_EXPIRED:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->MAPCON_CHANGE:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->WIFI_IPTYPE_CHANGE:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->DNS_TTL_CHECK:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->$VALUES:[Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 108
    const-class v0, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;
    .locals 1

    .line 108
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->$VALUES:[Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    return-object v0
.end method
