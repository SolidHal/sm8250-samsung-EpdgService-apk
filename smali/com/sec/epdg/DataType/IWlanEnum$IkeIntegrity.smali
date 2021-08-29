.class public final enum Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/DataType/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IkeIntegrity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

.field public static final enum IKE_INTEGRITY_AES_XCBC_MAC_96:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

.field public static final enum IKE_INTEGRITY_ANY:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

.field public static final enum IKE_INTEGRITY_BASIC:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

.field public static final enum IKE_INTEGRITY_HMAC_MD5_96:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

.field public static final enum IKE_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

.field public static final enum IKE_INTEGRITY_HMAC_SHA_256_128:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

.field public static final enum IKE_INTEGRITY_HMAC_SHA_384_192:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

.field public static final enum IKE_INTEGRITY_HMAC_SHA_512_256:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

.field public static final enum IKE_INTEGRITY_SUITE_B_GCM_128:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

.field public static final enum IKE_INTEGRITY_SUITE_B_GCM_256:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 151
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    const-string v1, "IKE_INTEGRITY_HMAC_MD5_96"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_MD5_96:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    .line 152
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    const-string v1, "IKE_INTEGRITY_HMAC_SHA1_96"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    .line 153
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    const-string v1, "IKE_INTEGRITY_AES_XCBC_MAC_96"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_AES_XCBC_MAC_96:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    .line 154
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    const-string v1, "IKE_INTEGRITY_HMAC_SHA_256_128"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_256_128:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    .line 155
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    const-string v1, "IKE_INTEGRITY_HMAC_SHA_384_192"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_384_192:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    .line 156
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    const-string v1, "IKE_INTEGRITY_HMAC_SHA_512_256"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_512_256:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    .line 157
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    const-string v1, "IKE_INTEGRITY_BASIC"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_BASIC:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    .line 158
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    const-string v1, "IKE_INTEGRITY_ANY"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_ANY:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    .line 159
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    const-string v1, "IKE_INTEGRITY_SUITE_B_GCM_128"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_128:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    .line 160
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    const-string v1, "IKE_INTEGRITY_SUITE_B_GCM_256"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_256:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    .line 150
    const/16 v1, 0xa

    new-array v1, v1, [Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    sget-object v12, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_MD5_96:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    aput-object v12, v1, v2

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_AES_XCBC_MAC_96:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_256_128:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_384_192:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_512_256:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_BASIC:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_ANY:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_128:Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 150
    const-class v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;
    .locals 1

    .line 150
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    invoke-virtual {v0}, [Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/DataType/IWlanEnum$IkeIntegrity;

    return-object v0
.end method
