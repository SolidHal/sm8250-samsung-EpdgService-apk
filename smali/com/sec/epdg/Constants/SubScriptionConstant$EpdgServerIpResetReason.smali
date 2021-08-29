.class public final enum Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;
.super Ljava/lang/Enum;
.source "SubScriptionConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/SubScriptionConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EpdgServerIpResetReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

.field public static final enum RESET_ALL:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

.field public static final enum RESET_CACHED_IP:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

.field public static final enum RESET_COUNTER:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

.field public static final enum RESET_IKE_ERROR:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

.field public static final enum WIFI_DISCONNECT:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 120
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    const-string v1, "WIFI_DISCONNECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    .line 121
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    const-string v1, "RESET_ALL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->RESET_ALL:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    .line 122
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    const-string v1, "RESET_CACHED_IP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->RESET_CACHED_IP:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    .line 123
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    const-string v1, "RESET_COUNTER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->RESET_COUNTER:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    .line 124
    new-instance v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    const-string v1, "RESET_IKE_ERROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->RESET_IKE_ERROR:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    .line 119
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    sget-object v7, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    aput-object v7, v1, v2

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->RESET_ALL:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->RESET_CACHED_IP:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->RESET_COUNTER:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->$VALUES:[Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 119
    const-class v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;
    .locals 1

    .line 119
    sget-object v0, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->$VALUES:[Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    return-object v0
.end method
