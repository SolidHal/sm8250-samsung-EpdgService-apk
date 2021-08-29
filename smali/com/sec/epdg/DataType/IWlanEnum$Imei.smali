.class public final enum Lcom/sec/epdg/DataType/IWlanEnum$Imei;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/DataType/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Imei"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/DataType/IWlanEnum$Imei;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$Imei;

.field public static final enum DEVICE_IMEI:Lcom/sec/epdg/DataType/IWlanEnum$Imei;

.field public static final enum NONE:Lcom/sec/epdg/DataType/IWlanEnum$Imei;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 239
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$Imei;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/DataType/IWlanEnum$Imei;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$Imei;->NONE:Lcom/sec/epdg/DataType/IWlanEnum$Imei;

    .line 240
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$Imei;

    const-string v1, "DEVICE_IMEI"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/DataType/IWlanEnum$Imei;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$Imei;->DEVICE_IMEI:Lcom/sec/epdg/DataType/IWlanEnum$Imei;

    .line 238
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/epdg/DataType/IWlanEnum$Imei;

    sget-object v4, Lcom/sec/epdg/DataType/IWlanEnum$Imei;->NONE:Lcom/sec/epdg/DataType/IWlanEnum$Imei;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/sec/epdg/DataType/IWlanEnum$Imei;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$Imei;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 238
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/DataType/IWlanEnum$Imei;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 238
    const-class v0, Lcom/sec/epdg/DataType/IWlanEnum$Imei;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/DataType/IWlanEnum$Imei;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/DataType/IWlanEnum$Imei;
    .locals 1

    .line 238
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$Imei;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$Imei;

    invoke-virtual {v0}, [Lcom/sec/epdg/DataType/IWlanEnum$Imei;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/DataType/IWlanEnum$Imei;

    return-object v0
.end method
