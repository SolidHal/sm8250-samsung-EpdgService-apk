.class public final enum Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/DataType/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IpSecIntegrityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_AES_GMAC_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_AES_GMAC_192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_AES_GMAC_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_AES_XCBC_MAC_96:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_ANY:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_BASIC:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_HMAC_MD5_96:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_HMAC_SHA_256_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_HMAC_SHA_384_192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_HMAC_SHA_512_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_NULL:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_SUITE_B_GCM_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_SUITE_B_GCM_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 103
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_HMAC_MD5_96"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_MD5_96:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    .line 104
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_HMAC_SHA1_96"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    .line 105
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_AES_XCBC_MAC_96"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_XCBC_MAC_96:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    .line 106
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_HMAC_SHA_256_128"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_256_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    .line 107
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_HMAC_SHA_384_192"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_384_192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    .line 108
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_HMAC_SHA_512_256"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_512_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    .line 109
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_AES_GMAC_128"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    .line 110
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_AES_GMAC_192"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    .line 111
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_AES_GMAC_256"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    .line 112
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_BASIC"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_BASIC:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    .line 113
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_ANY"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_ANY:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    .line 114
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_NULL"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_NULL:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    .line 115
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_SUITE_B_GCM_128"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_SUITE_B_GCM_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    .line 116
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_SUITE_B_GCM_256"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_SUITE_B_GCM_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    .line 102
    const/16 v1, 0xe

    new-array v1, v1, [Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    sget-object v16, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_MD5_96:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    aput-object v16, v1, v2

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_XCBC_MAC_96:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_256_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_384_192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_512_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    aput-object v2, v1, v10

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_BASIC:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    aput-object v2, v1, v11

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_ANY:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    aput-object v2, v1, v12

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_NULL:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    aput-object v2, v1, v13

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_SUITE_B_GCM_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    aput-object v2, v1, v14

    aput-object v0, v1, v15

    sput-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 102
    const-class v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;
    .locals 1

    .line 102
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v0}, [Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;

    return-object v0
.end method
