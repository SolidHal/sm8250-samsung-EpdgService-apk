.class public final enum Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/DataType/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IpSecDHGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

.field public static final enum IPSEC_GROUP_ANY:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

.field public static final enum IPSEC_GROUP_ANY_OR_NONE:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

.field public static final enum IPSEC_GROUP_ECP_192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

.field public static final enum IPSEC_GROUP_ECP_224:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

.field public static final enum IPSEC_GROUP_ECP_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

.field public static final enum IPSEC_GROUP_ECP_384:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

.field public static final enum IPSEC_GROUP_ECP_521:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

.field public static final enum IPSEC_GROUP_MODP_1024:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

.field public static final enum IPSEC_GROUP_MODP_1024_160:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

.field public static final enum IPSEC_GROUP_MODP_1536:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

.field public static final enum IPSEC_GROUP_MODP_2048:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

.field public static final enum IPSEC_GROUP_MODP_2048_224:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

.field public static final enum IPSEC_GROUP_MODP_2048_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

.field public static final enum IPSEC_GROUP_MODP_3072:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

.field public static final enum IPSEC_GROUP_MODP_4096:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

.field public static final enum IPSEC_GROUP_MODP_6144:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

.field public static final enum IPSEC_GROUP_MODP_768:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

.field public static final enum IPSEC_GROUP_MODP_8192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 120
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    const-string v1, "IPSEC_GROUP_MODP_768"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_768:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    .line 121
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    const-string v1, "IPSEC_GROUP_MODP_1024"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1024:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    .line 122
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    const-string v1, "IPSEC_GROUP_MODP_1536"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1536:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    .line 123
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    const-string v1, "IPSEC_GROUP_MODP_2048"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    .line 124
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    const-string v1, "IPSEC_GROUP_MODP_3072"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_3072:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    .line 125
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    const-string v1, "IPSEC_GROUP_MODP_4096"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_4096:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    .line 126
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    const-string v1, "IPSEC_GROUP_MODP_6144"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_6144:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    .line 127
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    const-string v1, "IPSEC_GROUP_MODP_8192"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_8192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    .line 128
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    const-string v1, "IPSEC_GROUP_ECP_256"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    .line 129
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    const-string v1, "IPSEC_GROUP_ECP_384"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_384:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    .line 130
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    const-string v1, "IPSEC_GROUP_ECP_521"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_521:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    .line 131
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    const-string v1, "IPSEC_GROUP_MODP_1024_160"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1024_160:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    .line 132
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    const-string v1, "IPSEC_GROUP_MODP_2048_224"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048_224:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    .line 133
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    const-string v1, "IPSEC_GROUP_MODP_2048_256"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    .line 134
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    const-string v1, "IPSEC_GROUP_ECP_192"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    .line 135
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    const-string v1, "IPSEC_GROUP_ECP_224"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_224:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    .line 136
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    const-string v1, "IPSEC_GROUP_ANY"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ANY:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    .line 137
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    const-string v1, "IPSEC_GROUP_ANY_OR_NONE"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ANY_OR_NONE:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    .line 119
    const/16 v1, 0x12

    new-array v1, v1, [Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    sget-object v16, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_768:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    aput-object v16, v1, v2

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1024:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1536:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_3072:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_4096:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_6144:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_8192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    aput-object v2, v1, v10

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_384:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    aput-object v2, v1, v11

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_521:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    aput-object v2, v1, v12

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1024_160:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    aput-object v2, v1, v13

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048_224:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    aput-object v2, v1, v14

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_224:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ANY:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 119
    const-class v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;
    .locals 1

    .line 119
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v0}, [Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    return-object v0
.end method
