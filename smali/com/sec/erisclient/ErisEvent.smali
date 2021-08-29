.class public final enum Lcom/sec/erisclient/ErisEvent;
.super Ljava/lang/Enum;
.source "ErisEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/erisclient/ErisEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/erisclient/ErisEvent;

.field public static final enum EVENT_CONNECTED:Lcom/sec/erisclient/ErisEvent;

.field public static final enum EVENT_CONNECTION_ACTIVE:Lcom/sec/erisclient/ErisEvent;

.field public static final enum EVENT_CONNECTION_RESET:Lcom/sec/erisclient/ErisEvent;

.field public static final enum EVENT_CONNECTION_SETUP_FAILURE:Lcom/sec/erisclient/ErisEvent;

.field public static final enum EVENT_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

.field public static final enum EVENT_ERROR:Lcom/sec/erisclient/ErisEvent;

.field public static final enum EVENT_ESP_KEYS:Lcom/sec/erisclient/ErisEvent;

.field public static final enum EVENT_ESP_SEQ:Lcom/sec/erisclient/ErisEvent;

.field public static final enum EVENT_IKE_IPSEC_REKEY_END:Lcom/sec/erisclient/ErisEvent;

.field public static final enum EVENT_IKE_IPSEC_REKEY_START:Lcom/sec/erisclient/ErisEvent;

.field public static final enum EVENT_IKE_KEYS:Lcom/sec/erisclient/ErisEvent;

.field public static final enum EVENT_NONE:Lcom/sec/erisclient/ErisEvent;

.field public static final enum EVENT_PEER_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 4
    new-instance v0, Lcom/sec/erisclient/ErisEvent;

    const-string v1, "EVENT_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/ErisEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_NONE:Lcom/sec/erisclient/ErisEvent;

    .line 5
    new-instance v0, Lcom/sec/erisclient/ErisEvent;

    const-string v1, "EVENT_CONNECTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/erisclient/ErisEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTED:Lcom/sec/erisclient/ErisEvent;

    .line 6
    new-instance v0, Lcom/sec/erisclient/ErisEvent;

    const-string v1, "EVENT_DISCONNECTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/erisclient/ErisEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    .line 7
    new-instance v0, Lcom/sec/erisclient/ErisEvent;

    const-string v1, "EVENT_CONNECTION_ACTIVE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/erisclient/ErisEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_ACTIVE:Lcom/sec/erisclient/ErisEvent;

    .line 8
    new-instance v0, Lcom/sec/erisclient/ErisEvent;

    const-string v1, "EVENT_PEER_DISCONNECTED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sec/erisclient/ErisEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_PEER_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    .line 9
    new-instance v0, Lcom/sec/erisclient/ErisEvent;

    const-string v1, "EVENT_CONNECTION_SETUP_FAILURE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sec/erisclient/ErisEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_SETUP_FAILURE:Lcom/sec/erisclient/ErisEvent;

    .line 10
    new-instance v0, Lcom/sec/erisclient/ErisEvent;

    const-string v1, "EVENT_CONNECTION_RESET"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sec/erisclient/ErisEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_RESET:Lcom/sec/erisclient/ErisEvent;

    .line 11
    new-instance v0, Lcom/sec/erisclient/ErisEvent;

    const-string v1, "EVENT_ERROR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sec/erisclient/ErisEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_ERROR:Lcom/sec/erisclient/ErisEvent;

    .line 12
    new-instance v0, Lcom/sec/erisclient/ErisEvent;

    const-string v1, "EVENT_ESP_SEQ"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/sec/erisclient/ErisEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_ESP_SEQ:Lcom/sec/erisclient/ErisEvent;

    .line 13
    new-instance v0, Lcom/sec/erisclient/ErisEvent;

    const-string v1, "EVENT_IKE_IPSEC_REKEY_START"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/sec/erisclient/ErisEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_IKE_IPSEC_REKEY_START:Lcom/sec/erisclient/ErisEvent;

    .line 14
    new-instance v0, Lcom/sec/erisclient/ErisEvent;

    const-string v1, "EVENT_IKE_IPSEC_REKEY_END"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/sec/erisclient/ErisEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_IKE_IPSEC_REKEY_END:Lcom/sec/erisclient/ErisEvent;

    .line 15
    new-instance v0, Lcom/sec/erisclient/ErisEvent;

    const-string v1, "EVENT_IKE_KEYS"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/sec/erisclient/ErisEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_IKE_KEYS:Lcom/sec/erisclient/ErisEvent;

    .line 16
    new-instance v0, Lcom/sec/erisclient/ErisEvent;

    const-string v1, "EVENT_ESP_KEYS"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/sec/erisclient/ErisEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/erisclient/ErisEvent;->EVENT_ESP_KEYS:Lcom/sec/erisclient/ErisEvent;

    .line 3
    const/16 v1, 0xd

    new-array v1, v1, [Lcom/sec/erisclient/ErisEvent;

    sget-object v15, Lcom/sec/erisclient/ErisEvent;->EVENT_NONE:Lcom/sec/erisclient/ErisEvent;

    aput-object v15, v1, v2

    sget-object v2, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTED:Lcom/sec/erisclient/ErisEvent;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/erisclient/ErisEvent;->EVENT_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_ACTIVE:Lcom/sec/erisclient/ErisEvent;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/erisclient/ErisEvent;->EVENT_PEER_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_SETUP_FAILURE:Lcom/sec/erisclient/ErisEvent;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_RESET:Lcom/sec/erisclient/ErisEvent;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/erisclient/ErisEvent;->EVENT_ERROR:Lcom/sec/erisclient/ErisEvent;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sec/erisclient/ErisEvent;->EVENT_ESP_SEQ:Lcom/sec/erisclient/ErisEvent;

    aput-object v2, v1, v10

    sget-object v2, Lcom/sec/erisclient/ErisEvent;->EVENT_IKE_IPSEC_REKEY_START:Lcom/sec/erisclient/ErisEvent;

    aput-object v2, v1, v11

    sget-object v2, Lcom/sec/erisclient/ErisEvent;->EVENT_IKE_IPSEC_REKEY_END:Lcom/sec/erisclient/ErisEvent;

    aput-object v2, v1, v12

    sget-object v2, Lcom/sec/erisclient/ErisEvent;->EVENT_IKE_KEYS:Lcom/sec/erisclient/ErisEvent;

    aput-object v2, v1, v13

    aput-object v0, v1, v14

    sput-object v1, Lcom/sec/erisclient/ErisEvent;->$VALUES:[Lcom/sec/erisclient/ErisEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/erisclient/ErisEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/sec/erisclient/ErisEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/erisclient/ErisEvent;

    return-object v0
.end method

.method public static values()[Lcom/sec/erisclient/ErisEvent;
    .locals 1

    .line 3
    sget-object v0, Lcom/sec/erisclient/ErisEvent;->$VALUES:[Lcom/sec/erisclient/ErisEvent;

    invoke-virtual {v0}, [Lcom/sec/erisclient/ErisEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/erisclient/ErisEvent;

    return-object v0
.end method
