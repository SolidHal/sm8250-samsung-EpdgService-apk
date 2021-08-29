.class public final enum Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/DataType/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WifiStates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

.field public static final enum CONNECTED:Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

.field public static final enum CONNECTED_ROVE_IN:Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

.field public static final enum CONNECTED_ROVE_OUT:Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

.field public static final enum CONNECTED_THRESSHOLD:Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

.field public static final enum DISABLED:Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

.field public static final enum DISCONNECTED:Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 40
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;->DISCONNECTED:Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

    .line 41
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

    const-string v1, "CONNECTED_ROVE_IN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;->CONNECTED_ROVE_IN:Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

    .line 42
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

    const-string v1, "CONNECTED_THRESSHOLD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;->CONNECTED_THRESSHOLD:Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

    .line 43
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

    const-string v1, "CONNECTED_ROVE_OUT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;->CONNECTED_ROVE_OUT:Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

    .line 44
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

    const-string v1, "CONNECTED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;->CONNECTED:Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

    .line 45
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

    const-string v1, "DISABLED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;->DISABLED:Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

    .line 39
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

    sget-object v8, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;->DISCONNECTED:Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

    aput-object v8, v1, v2

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;->CONNECTED_ROVE_IN:Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;->CONNECTED_THRESSHOLD:Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;->CONNECTED_ROVE_OUT:Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;->CONNECTED:Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 39
    const-class v0, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;
    .locals 1

    .line 39
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

    invoke-virtual {v0}, [Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/DataType/IWlanEnum$WifiStates;

    return-object v0
.end method
