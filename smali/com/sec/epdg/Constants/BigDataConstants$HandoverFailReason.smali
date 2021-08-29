.class public final enum Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;
.super Ljava/lang/Enum;
.source "BigDataConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/BigDataConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandoverFailReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

.field public static final enum DNS_QUERY_FAIL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

.field public static final enum ERROR_BY_MODEM:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

.field public static final enum NONE:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

.field public static final enum NO_RESPONSE:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

.field public static final enum RECEIVED_IKE_ERROR:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

.field public static final enum TC_ENABLE_FAIL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

.field public static final enum THROTTLE_STATE:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

.field public static final enum WRONG_EPDG_CONFIGURATION:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;


# instance fields
.field private mStatus:Ljava/lang/String;

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 247
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->NONE:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    .line 248
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    const-string v1, "ERROR_BY_MODEM"

    const/4 v3, 0x1

    const/16 v4, 0x65

    const-string v5, "[W2L] ERROR_BY_MODEM"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->ERROR_BY_MODEM:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    .line 249
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    const-string v1, "NO_RESPONSE"

    const/4 v4, 0x2

    const/16 v5, 0xc9

    const-string v6, "[L2W] NO_RESPONSE"

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->NO_RESPONSE:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    .line 250
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    const-string v1, "RECEIVED_IKE_ERROR"

    const/4 v5, 0x3

    const/16 v6, 0xca

    const-string v7, "[L2W] RECEIVED_IKE_ERROR"

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->RECEIVED_IKE_ERROR:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    .line 251
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    const-string v1, "DNS_QUERY_FAIL"

    const/4 v6, 0x4

    const/16 v7, 0xcb

    const-string v8, "[L2W] DNS_QUERY_FAIL"

    invoke-direct {v0, v1, v6, v7, v8}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->DNS_QUERY_FAIL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    .line 252
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    const-string v1, "WRONG_EPDG_CONFIGURATION"

    const/4 v7, 0x5

    const/16 v8, 0xcc

    const-string v9, "[L2W] WRONG_EPDG_CONFIGURATION"

    invoke-direct {v0, v1, v7, v8, v9}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->WRONG_EPDG_CONFIGURATION:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    .line 253
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    const-string v1, "TC_ENABLE_FAIL"

    const/4 v8, 0x6

    const/16 v9, 0xcd

    const-string v10, "[L2W] TC_ENABLE_FAIL"

    invoke-direct {v0, v1, v8, v9, v10}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->TC_ENABLE_FAIL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    .line 254
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    const-string v1, "THROTTLE_STATE"

    const/4 v9, 0x7

    const/16 v10, 0xce

    const-string v11, "[L2W] THROTTLE_STATE"

    invoke-direct {v0, v1, v9, v10, v11}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->THROTTLE_STATE:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    .line 246
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    sget-object v10, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->NONE:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    aput-object v10, v1, v2

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->ERROR_BY_MODEM:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->NO_RESPONSE:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->RECEIVED_IKE_ERROR:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->DNS_QUERY_FAIL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->WRONG_EPDG_CONFIGURATION:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->TC_ENABLE_FAIL:Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->$VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 259
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 260
    iput p3, p0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->mValue:I

    .line 261
    iput-object p4, p0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->mStatus:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 246
    const-class v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;
    .locals 1

    .line 246
    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->$VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;

    return-object v0
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 269
    iget v0, p0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->mValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EPDI / HOFR] mStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverFailReason;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
