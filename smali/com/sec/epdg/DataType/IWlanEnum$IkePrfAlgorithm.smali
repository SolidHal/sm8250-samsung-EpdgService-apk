.class public final enum Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/DataType/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IkePrfAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

.field public static final enum IKE_PRF_AES128_CMAC:Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

.field public static final enum IKE_PRF_AES128_XCBC:Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

.field public static final enum IKE_PRF_HMAC_MD5:Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

.field public static final enum IKE_PRF_HMAC_SHA1:Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

.field public static final enum IKE_PRF_HMAC_SHA2_256:Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

.field public static final enum IKE_PRF_HMAC_SHA2_384:Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

.field public static final enum IKE_PRF_HMAC_SHA2_512:Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

.field public static final enum IKE_PRF_HMAC_TIGER:Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 181
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    const-string v1, "IKE_PRF_HMAC_MD5"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;->IKE_PRF_HMAC_MD5:Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    .line 182
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    const-string v1, "IKE_PRF_HMAC_SHA1"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;->IKE_PRF_HMAC_SHA1:Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    .line 183
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    const-string v1, "IKE_PRF_HMAC_TIGER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;->IKE_PRF_HMAC_TIGER:Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    .line 184
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    const-string v1, "IKE_PRF_AES128_XCBC"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;->IKE_PRF_AES128_XCBC:Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    .line 185
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    const-string v1, "IKE_PRF_HMAC_SHA2_256"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;->IKE_PRF_HMAC_SHA2_256:Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    .line 186
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    const-string v1, "IKE_PRF_HMAC_SHA2_384"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;->IKE_PRF_HMAC_SHA2_384:Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    .line 187
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    const-string v1, "IKE_PRF_HMAC_SHA2_512"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;->IKE_PRF_HMAC_SHA2_512:Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    .line 188
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    const-string v1, "IKE_PRF_AES128_CMAC"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;->IKE_PRF_AES128_CMAC:Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    .line 180
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    sget-object v10, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;->IKE_PRF_HMAC_MD5:Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    aput-object v10, v1, v2

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;->IKE_PRF_HMAC_SHA1:Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;->IKE_PRF_HMAC_TIGER:Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;->IKE_PRF_AES128_XCBC:Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;->IKE_PRF_HMAC_SHA2_256:Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;->IKE_PRF_HMAC_SHA2_384:Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;->IKE_PRF_HMAC_SHA2_512:Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 180
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 180
    const-class v0, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;
    .locals 1

    .line 180
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    invoke-virtual {v0}, [Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/DataType/IWlanEnum$IkePrfAlgorithm;

    return-object v0
.end method
