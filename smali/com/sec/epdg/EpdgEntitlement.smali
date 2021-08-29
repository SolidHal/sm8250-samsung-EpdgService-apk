.class public Lcom/sec/epdg/EpdgEntitlement;
.super Ljava/lang/Object;
.source "EpdgEntitlement.java"


# static fields
.field private static final ENTITLEMENT_URI:Landroid/net/Uri;

.field public static final ENTITLMENT_DONE:I = 0x4

.field public static final ENTITLMENT_IDLE:I = 0x0

.field public static final ENTITLMENT_INIT:I = 0x1

.field public static final ENTITLMENT_PROGRESSING:I = 0x2

.field public static final ENTITLMENT_STOPING:I = 0x3

.field public static final ENTITLMENT_UNKNOWN:I = -0x1

.field private static INSTANCE1:Lcom/sec/epdg/EpdgEntitlement; = null

.field private static INSTANCE2:Lcom/sec/epdg/EpdgEntitlement; = null

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.samsung.ims.entitlement.provider"

.field private static final SLOT_ID:Ljava/lang/String; = "slot"

.field private static final VOWIFI_ENTITLEMENT_STATUS:Ljava/lang/String; = "vowifi_entitlement_status"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mEntitlementCount:I

.field private mEntitlementStatus:I

.field private mPhoneId:I

.field private mSubScription:Lcom/sec/epdg/EpdgSubScription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-string v0, "content://com.samsung.ims.entitlement.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/EpdgEntitlement;->ENTITLEMENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/sec/epdg/EpdgSubScription;I)V
    .locals 2
    .param p1, "epdgSubScription"    # Lcom/sec/epdg/EpdgSubScription;
    .param p2, "phoneId"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/EpdgEntitlement;->mEntitlementCount:I

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/epdg/EpdgEntitlement;->mEntitlementStatus:I

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [EpdgEntitlement]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgEntitlement;->TAG:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/sec/epdg/EpdgEntitlement;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 49
    iput p2, p0, Lcom/sec/epdg/EpdgEntitlement;->mPhoneId:I

    .line 50
    return-void
.end method

.method public static createInstance(Lcom/sec/epdg/EpdgSubScription;I)Lcom/sec/epdg/EpdgEntitlement;
    .locals 1
    .param p0, "epdgSubScription"    # Lcom/sec/epdg/EpdgSubScription;
    .param p1, "phoneId"    # I

    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Lcom/sec/epdg/EpdgEntitlement;

    invoke-direct {v0, p0, p1}, Lcom/sec/epdg/EpdgEntitlement;-><init>(Lcom/sec/epdg/EpdgSubScription;I)V

    sput-object v0, Lcom/sec/epdg/EpdgEntitlement;->INSTANCE1:Lcom/sec/epdg/EpdgEntitlement;

    .line 55
    return-object v0

    .line 57
    :cond_0
    new-instance v0, Lcom/sec/epdg/EpdgEntitlement;

    invoke-direct {v0, p0, p1}, Lcom/sec/epdg/EpdgEntitlement;-><init>(Lcom/sec/epdg/EpdgSubScription;I)V

    sput-object v0, Lcom/sec/epdg/EpdgEntitlement;->INSTANCE2:Lcom/sec/epdg/EpdgEntitlement;

    .line 58
    return-object v0
.end method

.method public static getInstance(I)Lcom/sec/epdg/EpdgEntitlement;
    .locals 1
    .param p0, "phoneId"    # I

    .line 63
    if-nez p0, :cond_0

    .line 64
    sget-object v0, Lcom/sec/epdg/EpdgEntitlement;->INSTANCE1:Lcom/sec/epdg/EpdgEntitlement;

    return-object v0

    .line 66
    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgEntitlement;->INSTANCE2:Lcom/sec/epdg/EpdgEntitlement;

    return-object v0
.end method


# virtual methods
.method protected getEntitlementResult(Landroid/content/Context;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    sget-object v0, Lcom/sec/epdg/EpdgEntitlement;->ENTITLEMENT_URI:Landroid/net/Uri;

    const-string v1, "vowifi_entitlement_status"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 73
    .local v0, "builder":Landroid/net/Uri$Builder;
    iget v2, p0, Lcom/sec/epdg/EpdgEntitlement;->mPhoneId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "slot"

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 75
    const/4 v2, 0x0

    .line 76
    .local v2, "entitlementResult":Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 77
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_1

    .line 78
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 79
    .local v1, "index":I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 80
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move v2, v5

    .line 81
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 83
    .end local v1    # "index":I
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgEntitlement;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEntitlementResult : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return v2
.end method

.method protected getEntitlementStatus()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/sec/epdg/EpdgEntitlement;->mEntitlementStatus:I

    return v0
.end method

.method public isProcessingEntitlement()Z
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/sec/epdg/EpdgEntitlement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isProcessingEntitlement() Entitlement Status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/epdg/EpdgEntitlement;->mEntitlementStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget v0, p0, Lcom/sec/epdg/EpdgEntitlement;->mEntitlementStatus:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected resetEntitlementCount()V
    .locals 1

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/EpdgEntitlement;->mEntitlementCount:I

    .line 99
    return-void
.end method

.method protected setEntitlementStatus(I)V
    .locals 0
    .param p1, "entitlementStatus"    # I

    .line 94
    iput p1, p0, Lcom/sec/epdg/EpdgEntitlement;->mEntitlementStatus:I

    .line 95
    return-void
.end method

.method public startCheckEntitlement()I
    .locals 10

    .line 107
    const/16 v6, 0x8

    .line 108
    .local v6, "profileId":I
    const-string v0, ""

    .line 109
    .local v0, "apn":Ljava/lang/String;
    iget v1, p0, Lcom/sec/epdg/EpdgEntitlement;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    iget v1, p0, Lcom/sec/epdg/EpdgEntitlement;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;->WIFI_RECONNECT:Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/Constants/SubScriptionConstant$DnsRetryReason;)Z

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgEntitlement;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    const-string v2, "mms"

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgSubScription;->getRemoteUriByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 114
    const-string v0, "mms"

    move-object v7, v0

    goto :goto_0

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgEntitlement;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    const-string v2, "xcap"

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgSubScription;->getRemoteUriByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 116
    const-string v0, "xcap"

    move-object v7, v0

    goto :goto_0

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/EpdgEntitlement;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    const-string v2, "emergency"

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgSubScription;->getRemoteUriByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 118
    const-string v0, "emergency"

    move-object v7, v0

    goto :goto_0

    .line 120
    :cond_3
    const-string v0, "ims"

    move-object v7, v0

    .line 123
    .end local v0    # "apn":Ljava/lang/String;
    .local v7, "apn":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgEntitlement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCheckEntitlement Post event RIL_CONNECT_REQ for profileId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " apnType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " apnName :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/epdg/EpdgEntitlement;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 124
    invoke-virtual {v2, v7}, Lcom/sec/epdg/EpdgSubScription;->getRemoteUriByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/sec/epdg/EpdgEntitlement;->mEntitlementCount:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_5

    .line 127
    new-instance v9, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;

    iget-object v0, p0, Lcom/sec/epdg/EpdgEntitlement;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 128
    invoke-virtual {v0, v7}, Lcom/sec/epdg/EpdgSubScription;->getRemoteUriByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const-string v3, "0.0.0.0"

    const-string v4, "::"

    move-object v0, v9

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    .local v0, "connReqObj":Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;
    iget v1, p0, Lcom/sec/epdg/EpdgEntitlement;->mEntitlementCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/epdg/EpdgEntitlement;->mEntitlementCount:I

    .line 130
    iget-object v1, p0, Lcom/sec/epdg/EpdgEntitlement;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v1

    .line 131
    .local v1, "epdgHandler":Landroid/os/Handler;
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 132
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x3e8

    iput v3, v2, Landroid/os/Message;->what:I

    .line 133
    iput v6, v2, Landroid/os/Message;->arg1:I

    .line 134
    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 135
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgEntitlement;->isProcessingEntitlement()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 136
    const-wide/16 v3, 0x4e20

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 138
    :cond_4
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 140
    .end local v0    # "connReqObj":Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;
    .end local v1    # "epdgHandler":Landroid/os/Handler;
    .end local v2    # "msg":Landroid/os/Message;
    :goto_1
    nop

    .line 144
    return v8

    .line 141
    :cond_5
    iput v8, p0, Lcom/sec/epdg/EpdgEntitlement;->mEntitlementCount:I

    .line 142
    const/4 v0, -0x1

    return v0
.end method
