.class public final enum Lcom/sec/erisclient/ErisError;
.super Ljava/lang/Enum;
.source "ErisError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/erisclient/ErisError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_ALREADY_CONNECTED:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_DAEMON_NOT_CONNECTED:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_DAEMON_STOPPED:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_CA_CERTIFICATE:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_CERTIFICATE:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_DPD_TIMEOUT:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_EAP_METHOD:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_GW_ADDRESS:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_HOST_AUTHENTICATION:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_IKE_DH_GROUP:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_IKE_ENCRYPTION:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_IKE_INTEGRITY:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_IKE_LIFETIME:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_IKE_VERSION:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_IKE_WINDOW_SIZE:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_IM_CERTIFICATE:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_INTERFACE:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_INTERNAL_SUBNET:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_IPSEC_ALGORITHM_COMBINATION:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_IPSEC_ENCRYPTION:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_IPSEC_INTEGRITY:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_IPSEC_LIFETIME:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_NATT_KEEPALIVE_TIMEOUT:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_OWN_IDENTITY:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_PARAMETER:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_PASSWORD:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_PFS_DH_GROUP:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_PRESHARED_KEY:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_PRIVATE_KEY:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_RAC_ATTRIBUTE:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_REMOTE_IDENTITY:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_TUNNEL_MODE:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_USERNAME:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_VIRTUAL_ADAPTER_CONFIGURATION:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_INVALID_VIRTUAL_ADAPTER_NAME:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_NEGOTIATION_ERROR:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_NOT_CONNECTED:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_NO_CONNECTION:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_OK:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_PEER_ADDR_FAILED:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_PEER_AUTH_FAILED:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_PEER_INIT_UNREACHABLE:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_SERVER_CERT_INVALID_ERROR:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_SERVER_CERT_VALIDATION_ERROR:Lcom/sec/erisclient/ErisError;

.field public static final enum ERIS_TIMEOUT:Lcom/sec/erisclient/ErisError;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 4
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    .line 5
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_GENERIC_FAILED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    .line 6
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_PEER_ADDR_FAILED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_PEER_ADDR_FAILED:Lcom/sec/erisclient/ErisError;

    .line 7
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_PEER_AUTH_FAILED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_PEER_AUTH_FAILED:Lcom/sec/erisclient/ErisError;

    .line 8
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_PEER_INIT_UNREACHABLE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_PEER_INIT_UNREACHABLE:Lcom/sec/erisclient/ErisError;

    .line 9
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_NO_CONNECTION"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_NO_CONNECTION:Lcom/sec/erisclient/ErisError;

    .line 10
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_TIMEOUT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_TIMEOUT:Lcom/sec/erisclient/ErisError;

    .line 11
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_NEGOTIATION_ERROR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_NEGOTIATION_ERROR:Lcom/sec/erisclient/ErisError;

    .line 12
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_NOT_CONNECTED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_NOT_CONNECTED:Lcom/sec/erisclient/ErisError;

    .line 14
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_DAEMON_NOT_CONNECTED"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_DAEMON_NOT_CONNECTED:Lcom/sec/erisclient/ErisError;

    .line 15
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_DAEMON_STOPPED"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_DAEMON_STOPPED:Lcom/sec/erisclient/ErisError;

    .line 16
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_ALREADY_CONNECTED"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_ALREADY_CONNECTED:Lcom/sec/erisclient/ErisError;

    .line 18
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_PARAMETER"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PARAMETER:Lcom/sec/erisclient/ErisError;

    .line 19
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_GW_ADDRESS"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_GW_ADDRESS:Lcom/sec/erisclient/ErisError;

    .line 20
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_HOST_AUTHENTICATION"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_HOST_AUTHENTICATION:Lcom/sec/erisclient/ErisError;

    .line 21
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_PRESHARED_KEY"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PRESHARED_KEY:Lcom/sec/erisclient/ErisError;

    .line 22
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_TUNNEL_MODE"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_TUNNEL_MODE:Lcom/sec/erisclient/ErisError;

    .line 23
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_OWN_IDENTITY"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_OWN_IDENTITY:Lcom/sec/erisclient/ErisError;

    .line 24
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_REMOTE_IDENTITY"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_REMOTE_IDENTITY:Lcom/sec/erisclient/ErisError;

    .line 25
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_CA_CERTIFICATE"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_CA_CERTIFICATE:Lcom/sec/erisclient/ErisError;

    .line 26
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_CERTIFICATE"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_CERTIFICATE:Lcom/sec/erisclient/ErisError;

    .line 27
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_SERVER_CERT_INVALID_ERROR"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_SERVER_CERT_INVALID_ERROR:Lcom/sec/erisclient/ErisError;

    .line 28
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_SERVER_CERT_VALIDATION_ERROR"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_SERVER_CERT_VALIDATION_ERROR:Lcom/sec/erisclient/ErisError;

    .line 29
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_IKE_LIFETIME"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_LIFETIME:Lcom/sec/erisclient/ErisError;

    .line 30
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_IKE_DH_GROUP"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_DH_GROUP:Lcom/sec/erisclient/ErisError;

    .line 31
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_IKE_ENCRYPTION"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_ENCRYPTION:Lcom/sec/erisclient/ErisError;

    .line 32
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_IKE_INTEGRITY"

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_INTEGRITY:Lcom/sec/erisclient/ErisError;

    .line 33
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_IKE_VERSION"

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_VERSION:Lcom/sec/erisclient/ErisError;

    .line 34
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_IKE_WINDOW_SIZE"

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_WINDOW_SIZE:Lcom/sec/erisclient/ErisError;

    .line 35
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_IPSEC_LIFETIME"

    const/16 v15, 0x1d

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IPSEC_LIFETIME:Lcom/sec/erisclient/ErisError;

    .line 36
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_IPSEC_ENCRYPTION"

    const/16 v15, 0x1e

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IPSEC_ENCRYPTION:Lcom/sec/erisclient/ErisError;

    .line 37
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_IPSEC_INTEGRITY"

    const/16 v15, 0x1f

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IPSEC_INTEGRITY:Lcom/sec/erisclient/ErisError;

    .line 38
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_IPSEC_ALGORITHM_COMBINATION"

    const/16 v15, 0x20

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IPSEC_ALGORITHM_COMBINATION:Lcom/sec/erisclient/ErisError;

    .line 39
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_PFS_DH_GROUP"

    const/16 v15, 0x21

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PFS_DH_GROUP:Lcom/sec/erisclient/ErisError;

    .line 40
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_INTERNAL_SUBNET"

    const/16 v15, 0x22

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_INTERNAL_SUBNET:Lcom/sec/erisclient/ErisError;

    .line 41
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_INTERFACE"

    const/16 v15, 0x23

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_INTERFACE:Lcom/sec/erisclient/ErisError;

    .line 42
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_EAP_METHOD"

    const/16 v15, 0x24

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_EAP_METHOD:Lcom/sec/erisclient/ErisError;

    .line 43
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_IM_CERTIFICATE"

    const/16 v15, 0x25

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IM_CERTIFICATE:Lcom/sec/erisclient/ErisError;

    .line 44
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_PRIVATE_KEY"

    const/16 v15, 0x26

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PRIVATE_KEY:Lcom/sec/erisclient/ErisError;

    .line 45
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_USERNAME"

    const/16 v15, 0x27

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_USERNAME:Lcom/sec/erisclient/ErisError;

    .line 46
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_PASSWORD"

    const/16 v15, 0x28

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PASSWORD:Lcom/sec/erisclient/ErisError;

    .line 47
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_VIRTUAL_ADAPTER_NAME"

    const/16 v15, 0x29

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_VIRTUAL_ADAPTER_NAME:Lcom/sec/erisclient/ErisError;

    .line 48
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_VIRTUAL_ADAPTER_CONFIGURATION"

    const/16 v15, 0x2a

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_VIRTUAL_ADAPTER_CONFIGURATION:Lcom/sec/erisclient/ErisError;

    .line 49
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_RAC_ATTRIBUTE"

    const/16 v15, 0x2b

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_RAC_ATTRIBUTE:Lcom/sec/erisclient/ErisError;

    .line 50
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_NATT_KEEPALIVE_TIMEOUT"

    const/16 v15, 0x2c

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_NATT_KEEPALIVE_TIMEOUT:Lcom/sec/erisclient/ErisError;

    .line 51
    new-instance v0, Lcom/sec/erisclient/ErisError;

    const-string v1, "ERIS_INVALID_DPD_TIMEOUT"

    const/16 v15, 0x2d

    invoke-direct {v0, v1, v15}, Lcom/sec/erisclient/ErisError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_DPD_TIMEOUT:Lcom/sec/erisclient/ErisError;

    .line 3
    const/16 v1, 0x2e

    new-array v1, v1, [Lcom/sec/erisclient/ErisError;

    sget-object v15, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    aput-object v15, v1, v2

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_PEER_ADDR_FAILED:Lcom/sec/erisclient/ErisError;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_PEER_AUTH_FAILED:Lcom/sec/erisclient/ErisError;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_PEER_INIT_UNREACHABLE:Lcom/sec/erisclient/ErisError;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_NO_CONNECTION:Lcom/sec/erisclient/ErisError;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_TIMEOUT:Lcom/sec/erisclient/ErisError;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_NEGOTIATION_ERROR:Lcom/sec/erisclient/ErisError;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_NOT_CONNECTED:Lcom/sec/erisclient/ErisError;

    aput-object v2, v1, v10

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_DAEMON_NOT_CONNECTED:Lcom/sec/erisclient/ErisError;

    aput-object v2, v1, v11

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_DAEMON_STOPPED:Lcom/sec/erisclient/ErisError;

    aput-object v2, v1, v12

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_ALREADY_CONNECTED:Lcom/sec/erisclient/ErisError;

    aput-object v2, v1, v13

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PARAMETER:Lcom/sec/erisclient/ErisError;

    aput-object v2, v1, v14

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_GW_ADDRESS:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_HOST_AUTHENTICATION:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PRESHARED_KEY:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_TUNNEL_MODE:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_OWN_IDENTITY:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_REMOTE_IDENTITY:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_CA_CERTIFICATE:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_CERTIFICATE:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_SERVER_CERT_INVALID_ERROR:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_SERVER_CERT_VALIDATION_ERROR:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_LIFETIME:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_DH_GROUP:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_ENCRYPTION:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_INTEGRITY:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_VERSION:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IKE_WINDOW_SIZE:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IPSEC_LIFETIME:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IPSEC_ENCRYPTION:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IPSEC_INTEGRITY:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IPSEC_ALGORITHM_COMBINATION:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x20

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PFS_DH_GROUP:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x21

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_INTERNAL_SUBNET:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x22

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_INTERFACE:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x23

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_EAP_METHOD:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x24

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_IM_CERTIFICATE:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x25

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PRIVATE_KEY:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x26

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_USERNAME:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x27

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_PASSWORD:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x28

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_VIRTUAL_ADAPTER_NAME:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x29

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_VIRTUAL_ADAPTER_CONFIGURATION:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_RAC_ATTRIBUTE:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_INVALID_NATT_KEEPALIVE_TIMEOUT:Lcom/sec/erisclient/ErisError;

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    const/16 v2, 0x2d

    aput-object v0, v1, v2

    sput-object v1, Lcom/sec/erisclient/ErisError;->$VALUES:[Lcom/sec/erisclient/ErisError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/erisclient/ErisError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/sec/erisclient/ErisError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/erisclient/ErisError;

    return-object v0
.end method

.method public static values()[Lcom/sec/erisclient/ErisError;
    .locals 1

    .line 3
    sget-object v0, Lcom/sec/erisclient/ErisError;->$VALUES:[Lcom/sec/erisclient/ErisError;

    invoke-virtual {v0}, [Lcom/sec/erisclient/ErisError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/erisclient/ErisError;

    return-object v0
.end method
