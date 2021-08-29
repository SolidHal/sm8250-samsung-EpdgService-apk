.class public final enum Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/DataType/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IPSecIpType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

.field public static final enum IP_VERSION_4:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

.field public static final enum IP_VERSION_6:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

.field public static final enum IP_VERSION_V4V6:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 74
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    const-string v1, "IP_VERSION_V4V6"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    .line 75
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    const-string v1, "IP_VERSION_4"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    .line 76
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    const-string v1, "IP_VERSION_6"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;->IP_VERSION_6:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    .line 73
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    sget-object v5, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 73
    const-class v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;
    .locals 1

    .line 73
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    invoke-virtual {v0}, [Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    return-object v0
.end method
