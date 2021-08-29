.class public final enum Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;
.super Ljava/lang/Enum;
.source "EpdgApnsConf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IWlanSettings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_APN:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_AUTH_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_CONN_NAME:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_DEVICE_IDENTITY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_FASTREAUTH:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final enum COLUMN_IKE_CONNECTION_TIMEOUT:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_IKE_DPD_TIMEOUT:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_IKE_EAP_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_IKE_ENCRYPTION:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_IKE_GROUP:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_IKE_INTEGRITY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_IKE_LIFE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_IKE_NAT_VALUE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_IKE_VERSION:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_IKE_VIRTUAL_ADAPTER_NAME:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_IKE_WINDOW_SIZE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_IMEI:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_IPSEC_ENCRYPTION:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_IPSEC_GROUP:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_IPSEC_INTEGRITY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_IPSEC_LIFETYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_IPSEC_LIFE_VALUE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_MNO_NAME:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_MOBIKE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_MTU:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_OWN_IDENTITY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_OWN_URI_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_PERIODIC_DPD_TIMER:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_PFS:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_REMOTE_IDENTITY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_REMOTE_URI_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_SUBNET_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_TUNNEL_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_USER_AUTH_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final enum COLUMN_VENDOR_ATTRIBUTE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

.field public static final TABLE_IWLAN_SETTINGS:Ljava/lang/String; = "iwlansetting"


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 20
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_MNO_NAME"

    const/4 v2, 0x0

    const-string v3, "mnoname"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_MNO_NAME:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 21
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_CONN_NAME"

    const/4 v3, 0x1

    const-string v4, "connname"

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_CONN_NAME:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 22
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_APN"

    const/4 v4, 0x2

    const-string v5, "apnname"

    invoke-direct {v0, v1, v4, v5}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_APN:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 23
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_AUTH_TYPE"

    const/4 v5, 0x3

    const-string v6, "authtype"

    invoke-direct {v0, v1, v5, v6}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_AUTH_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 24
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_SUBNET_TYPE"

    const/4 v6, 0x4

    const-string v7, "subnettype"

    invoke-direct {v0, v1, v6, v7}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_SUBNET_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 25
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_USER_AUTH_TYPE"

    const/4 v7, 0x5

    const-string v8, "userauthtype"

    invoke-direct {v0, v1, v7, v8}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_USER_AUTH_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 26
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_PFS"

    const/4 v8, 0x6

    const-string v9, "pfs"

    invoke-direct {v0, v1, v8, v9}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_PFS:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 27
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_OWN_URI_TYPE"

    const/4 v9, 0x7

    const-string v10, "ownuritype"

    invoke-direct {v0, v1, v9, v10}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_OWN_URI_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 28
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_OWN_IDENTITY"

    const/16 v10, 0x8

    const-string v11, "ownidentity"

    invoke-direct {v0, v1, v10, v11}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_OWN_IDENTITY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 29
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_REMOTE_URI_TYPE"

    const/16 v11, 0x9

    const-string v12, "remoteuritype"

    invoke-direct {v0, v1, v11, v12}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_REMOTE_URI_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 30
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_REMOTE_IDENTITY"

    const/16 v12, 0xa

    const-string v13, "remoteidentity"

    invoke-direct {v0, v1, v12, v13}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_REMOTE_IDENTITY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 31
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_TUNNEL_TYPE"

    const/16 v13, 0xb

    const-string v14, "tunneltype"

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_TUNNEL_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 32
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_IPSEC_ENCRYPTION"

    const/16 v14, 0xc

    const-string v15, "ipsecencryption"

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IPSEC_ENCRYPTION:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 33
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_IPSEC_INTEGRITY"

    const/16 v15, 0xd

    const-string v14, "ipsecintegrity"

    invoke-direct {v0, v1, v15, v14}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IPSEC_INTEGRITY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 34
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_IPSEC_GROUP"

    const/16 v14, 0xe

    const-string v15, "ipsecgroup"

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IPSEC_GROUP:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 35
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_IPSEC_LIFETYPE"

    const/16 v15, 0xf

    const-string v14, "ipseclifetime"

    invoke-direct {v0, v1, v15, v14}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IPSEC_LIFETYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 36
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_IPSEC_LIFE_VALUE"

    const/16 v14, 0x10

    const-string v15, "ipseclifevalue"

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IPSEC_LIFE_VALUE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 37
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_IKE_VERSION"

    const/16 v15, 0x11

    const-string v14, "ikeversion"

    invoke-direct {v0, v1, v15, v14}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_VERSION:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 38
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_IKE_INTEGRITY"

    const/16 v14, 0x12

    const-string v15, "ikeintegrity"

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_INTEGRITY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 39
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_IKE_ENCRYPTION"

    const/16 v15, 0x13

    const-string v14, "ikeencryption"

    invoke-direct {v0, v1, v15, v14}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_ENCRYPTION:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 40
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_IKE_GROUP"

    const/16 v14, 0x14

    const-string v15, "ikegroup"

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_GROUP:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 41
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_IKE_EAP_TYPE"

    const/16 v15, 0x15

    const-string v14, "ikeeaptype"

    invoke-direct {v0, v1, v15, v14}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_EAP_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 42
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_IKE_LIFE"

    const/16 v14, 0x16

    const-string v15, "ikelife"

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_LIFE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 43
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_IKE_WINDOW_SIZE"

    const/16 v14, 0x17

    const-string v15, "ikewindowsize"

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_WINDOW_SIZE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 44
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_IKE_DPD_TIMEOUT"

    const/16 v14, 0x18

    const-string v15, "ikedpdtimeout"

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_DPD_TIMEOUT:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 45
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_IKE_CONNECTION_TIMEOUT"

    const/16 v14, 0x19

    const-string v15, "ikeconnectiontimeout"

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_CONNECTION_TIMEOUT:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 46
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_IKE_NAT_VALUE"

    const/16 v14, 0x1a

    const-string v15, "ikenatvalue"

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_NAT_VALUE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 47
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_IKE_VIRTUAL_ADAPTER_NAME"

    const/16 v14, 0x1b

    const-string v15, "ikevirtualadaptername"

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_VIRTUAL_ADAPTER_NAME:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 48
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_VENDOR_ATTRIBUTE"

    const/16 v14, 0x1c

    const-string v15, "vendorattribute"

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_VENDOR_ATTRIBUTE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 49
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_PERIODIC_DPD_TIMER"

    const/16 v14, 0x1d

    const-string v15, "periodicdpdtimer"

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_PERIODIC_DPD_TIMER:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 50
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_MOBIKE"

    const/16 v14, 0x1e

    const-string v15, "mobike"

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_MOBIKE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 51
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_IMEI"

    const/16 v14, 0x1f

    const-string v15, "imei"

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IMEI:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 52
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_FASTREAUTH"

    const/16 v14, 0x20

    const-string v15, "fastreauth"

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_FASTREAUTH:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 53
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_DEVICE_IDENTITY"

    const/16 v14, 0x21

    const-string v15, "deviceidentity"

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_DEVICE_IDENTITY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 54
    new-instance v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const-string v1, "COLUMN_MTU"

    const/16 v14, 0x22

    const-string v15, "mtu"

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_MTU:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    .line 19
    const/16 v1, 0x23

    new-array v1, v1, [Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    sget-object v14, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_MNO_NAME:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    aput-object v14, v1, v2

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_CONN_NAME:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_APN:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_AUTH_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_SUBNET_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_USER_AUTH_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_PFS:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_OWN_URI_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_OWN_IDENTITY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    aput-object v2, v1, v10

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_REMOTE_URI_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    aput-object v2, v1, v11

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_REMOTE_IDENTITY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    aput-object v2, v1, v12

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_TUNNEL_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    aput-object v2, v1, v13

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IPSEC_ENCRYPTION:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IPSEC_INTEGRITY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IPSEC_GROUP:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IPSEC_LIFETYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IPSEC_LIFE_VALUE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_VERSION:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_INTEGRITY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_ENCRYPTION:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_GROUP:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_EAP_TYPE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_LIFE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_WINDOW_SIZE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_DPD_TIMEOUT:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_CONNECTION_TIMEOUT:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_NAT_VALUE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IKE_VIRTUAL_ADAPTER_NAME:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_VENDOR_ATTRIBUTE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_PERIODIC_DPD_TIMER:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_MOBIKE:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_IMEI:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_FASTREAUTH:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const/16 v3, 0x20

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->COLUMN_DEVICE_IDENTITY:Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    const/16 v3, 0x21

    aput-object v2, v1, v3

    const/16 v2, 0x22

    aput-object v0, v1, v2

    sput-object v1, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->$VALUES:[Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput-object p3, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->mName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;
    .locals 1

    .line 19
    sget-object v0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->$VALUES:[Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    invoke-virtual {v0}, [Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/sec/epdg/IWlanContentProvider/EpdgApnsConf$IWlanSettings;->mName:Ljava/lang/String;

    return-object v0
.end method
