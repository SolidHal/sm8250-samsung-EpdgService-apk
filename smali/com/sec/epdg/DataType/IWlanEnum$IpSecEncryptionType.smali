.class public final enum Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/DataType/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IpSecEncryptionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

.field public static final enum IPSEC_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

.field public static final enum IPSEC_ENCRYPTION_AES_CBC_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

.field public static final enum IPSEC_ENCRYPTION_AES_CBC_192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

.field public static final enum IPSEC_ENCRYPTION_AES_CBC_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

.field public static final enum IPSEC_ENCRYPTION_AES_CTR_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

.field public static final enum IPSEC_ENCRYPTION_AES_CTR_192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

.field public static final enum IPSEC_ENCRYPTION_AES_CTR_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

.field public static final enum IPSEC_ENCRYPTION_AES_GCM_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

.field public static final enum IPSEC_ENCRYPTION_AES_GCM_192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

.field public static final enum IPSEC_ENCRYPTION_AES_GCM_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

.field public static final enum IPSEC_ENCRYPTION_ANY:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

.field public static final enum IPSEC_ENCRYPTION_BASIC:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

.field public static final enum IPSEC_ENCRYPTION_SUITE_B_GCM_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

.field public static final enum IPSEC_ENCRYPTION_SUITE_B_GCM_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 85
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    const-string v1, "IPSEC_ENCRYPTION_3DES_CBC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    .line 86
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    const-string v1, "IPSEC_ENCRYPTION_AES_CBC_128"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    .line 87
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    const-string v1, "IPSEC_ENCRYPTION_AES_CBC_192"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    .line 88
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    const-string v1, "IPSEC_ENCRYPTION_AES_CBC_256"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    .line 89
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    const-string v1, "IPSEC_ENCRYPTION_AES_CTR_128"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    .line 90
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    const-string v1, "IPSEC_ENCRYPTION_AES_CTR_192"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    .line 91
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    const-string v1, "IPSEC_ENCRYPTION_AES_CTR_256"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    .line 92
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    const-string v1, "IPSEC_ENCRYPTION_AES_GCM_128"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    .line 93
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    const-string v1, "IPSEC_ENCRYPTION_AES_GCM_192"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    .line 94
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    const-string v1, "IPSEC_ENCRYPTION_AES_GCM_256"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    .line 95
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    const-string v1, "IPSEC_ENCRYPTION_BASIC"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_BASIC:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    .line 96
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    const-string v1, "IPSEC_ENCRYPTION_ANY"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_ANY:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    .line 97
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    const-string v1, "IPSEC_ENCRYPTION_SUITE_B_GCM_128"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_SUITE_B_GCM_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    .line 98
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    const-string v1, "IPSEC_ENCRYPTION_SUITE_B_GCM_256"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_SUITE_B_GCM_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    .line 84
    const/16 v1, 0xe

    new-array v1, v1, [Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    sget-object v16, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    aput-object v16, v1, v2

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    aput-object v2, v1, v10

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    aput-object v2, v1, v11

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_BASIC:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    aput-object v2, v1, v12

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_ANY:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    aput-object v2, v1, v13

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_SUITE_B_GCM_128:Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    aput-object v2, v1, v14

    aput-object v0, v1, v15

    sput-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 84
    const-class v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;
    .locals 1

    .line 84
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v0}, [Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;

    return-object v0
.end method
