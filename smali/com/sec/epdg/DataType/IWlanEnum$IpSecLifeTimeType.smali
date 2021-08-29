.class public final enum Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/DataType/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IpSecLifeTimeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;

.field public static final enum IPSEC_LIFE_TYPE_KILOBYTES:Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;

.field public static final enum IPSEC_LIFE_TYPE_SECONDS:Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 141
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;

    const-string v1, "IPSEC_LIFE_TYPE_SECONDS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;->IPSEC_LIFE_TYPE_SECONDS:Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;

    .line 142
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;

    const-string v1, "IPSEC_LIFE_TYPE_KILOBYTES"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;->IPSEC_LIFE_TYPE_KILOBYTES:Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;

    .line 140
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;

    sget-object v4, Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;->IPSEC_LIFE_TYPE_SECONDS:Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 140
    const-class v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;
    .locals 1

    .line 140
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;

    invoke-virtual {v0}, [Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;

    return-object v0
.end method
