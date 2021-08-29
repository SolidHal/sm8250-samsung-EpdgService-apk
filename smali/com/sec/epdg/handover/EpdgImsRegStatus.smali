.class public Lcom/sec/epdg/handover/EpdgImsRegStatus;
.super Ljava/lang/Object;
.source "EpdgImsRegStatus.java"


# static fields
.field public static final SERVICE_MMTEL_VOICE:Ljava/lang/String; = "mmtel"

.field private static SUB_TAG:Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEpdgHandler:Landroid/os/Handler;

.field private mImsRegStatus:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

.field private mPhoneId:I

.field private mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-string v0, "[EpdgImsRegStatus]"

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->SUB_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILcom/sec/epdg/interfaces/IEpdgSubScription;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hdlr"    # Landroid/os/Handler;
    .param p3, "phoneId"    # I
    .param p4, "subscription"    # Lcom/sec/epdg/interfaces/IEpdgSubScription;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->TAG:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->REGISTRATION_NOT_STARTED:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->mImsRegStatus:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsRegStatus;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->TAG:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->mEpdgHandler:Landroid/os/Handler;

    .line 41
    iput p3, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->mPhoneId:I

    .line 42
    iput-object p4, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    .line 43
    return-void
.end method

.method private getNetworkType(Lcom/sec/ims/ImsRegistration;)I
    .locals 2
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 143
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 144
    const/16 v0, 0x12

    goto :goto_0

    .line 145
    :cond_0
    const/16 v0, 0xd

    .line 143
    :goto_0
    return v0
.end method

.method private postToEpdgService(ILjava/lang/Object;I)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I

    .line 155
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 156
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 157
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 158
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 159
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 160
    return-void
.end method

.method private sendDeviceReport(ZZLjava/lang/String;)V
    .locals 4
    .param p1, "isRegi"    # Z
    .param p2, "ok"    # Z
    .param p3, "errorCode"    # Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    const-string v1, "ims"

    invoke-interface {v0, v1}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    new-instance v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, "sb":Lcom/sec/epdg/tmo/WfcStatisticsBuilder;
    sget-object v1, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;->REG:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->setSVC(Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;)Lcom/sec/epdg/tmo/WfcStatisticsBuilder;

    .line 115
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 116
    sget-object v2, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;->START:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->setAC(Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;)Lcom/sec/epdg/tmo/WfcStatisticsBuilder;

    .line 117
    invoke-virtual {v0, v1}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->setOK(Z)Lcom/sec/epdg/tmo/WfcStatisticsBuilder;

    goto :goto_0

    .line 119
    :cond_1
    sget-object v2, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;->END:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->setAC(Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;)Lcom/sec/epdg/tmo/WfcStatisticsBuilder;

    .line 120
    if-eqz p2, :cond_2

    .line 121
    invoke-virtual {v0, v1}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->setOK(Z)Lcom/sec/epdg/tmo/WfcStatisticsBuilder;

    goto :goto_0

    .line 123
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->setOK(Z)Lcom/sec/epdg/tmo/WfcStatisticsBuilder;

    .line 124
    invoke-virtual {v0, p3}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->setMSG(Ljava/lang/String;)Lcom/sec/epdg/tmo/WfcStatisticsBuilder;

    .line 128
    :goto_0
    invoke-virtual {v0}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->setTimeStamp()Lcom/sec/epdg/tmo/WfcStatisticsBuilder;

    .line 129
    invoke-virtual {v0}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->sendBroadcast()V

    .line 130
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDeviceReport(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method private setRegStatus(Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;)V
    .locals 3
    .param p1, "value"    # Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    .line 138
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRegStatus: new Reg status is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->mImsRegStatus:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    .line 140
    return-void
.end method


# virtual methods
.method protected getRegStatus()Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->mImsRegStatus:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    return-object v0
.end method

.method protected informImsRegStatusChangeToHandoverModule(I)V
    .locals 2
    .param p1, "networkType"    # I

    .line 149
    nop

    .line 150
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->getRegStatus()Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    move-result-object v0

    .line 149
    const/16 v1, 0x40

    invoke-direct {p0, v1, v0, p1}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->postToEpdgService(ILjava/lang/Object;I)V

    .line 152
    return-void
.end method

.method protected onDeRegistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 6
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "errCode"    # Lcom/sec/ims/ImsRegistrationError;

    .line 59
    sget-object v0, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    invoke-direct {p0, v0}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->setRegStatus(Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;)V

    .line 60
    const-string v0, ""

    .line 61
    .local v0, "wfcErrCode":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorCode()I

    move-result v1

    .line 63
    .local v1, "errorCode":I
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistrationError;->getDetailedDeregiReason()I

    move-result v3

    iget v4, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->mPhoneId:I

    .line 63
    invoke-static {v2, v1, v3, v4}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUnifiedWfcDeregiBroadcast(Landroid/content/Context;III)V

    .line 66
    const-string v2, "TMK"

    const-string v3, "TMB"

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    const/16 v5, 0xc8

    if-ne v5, v1, :cond_0

    goto/16 :goto_1

    .line 74
    :cond_0
    iget v5, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v5

    iget-boolean v5, v5, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->VOWIFI_BLOCKLIST_BLOCKING:Z

    if-eqz v5, :cond_1

    const/16 v5, 0x25e

    if-ne v1, v5, :cond_1

    .line 76
    sget-object v2, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->REGISTRATION_BLOCKED:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    invoke-direct {p0, v2}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->setRegStatus(Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;)V

    .line 77
    invoke-virtual {p0, v4}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->informImsRegStatusChangeToHandoverModule(I)V

    goto/16 :goto_2

    .line 79
    :cond_1
    sget-object v5, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->REGISTRATION_NOT_STARTED:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    invoke-direct {p0, v5}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->setRegStatus(Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;)V

    .line 80
    const/16 v5, 0x193

    if-eq v1, v5, :cond_5

    const/16 v5, 0x1f4

    if-eq v1, v5, :cond_4

    const/16 v5, 0x1f7

    if-eq v1, v5, :cond_4

    const/16 v5, 0x961

    if-eq v1, v5, :cond_3

    const/16 v5, 0x967

    if-eq v1, v5, :cond_2

    const/16 v5, 0x969

    if-eq v1, v5, :cond_2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 89
    :cond_2
    const-string v0, "REG09"

    .line 90
    goto :goto_0

    .line 85
    :cond_3
    :pswitch_0
    const-string v0, "REG99"

    .line 86
    goto :goto_0

    .line 96
    :cond_4
    const-string v0, "REG91"

    goto :goto_0

    .line 92
    :cond_5
    const-string v0, "REG90"

    .line 93
    nop

    .line 100
    :goto_0
    iget v5, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/Operator/EpdgOperator;->getOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget v3, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 101
    :cond_6
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 102
    invoke-direct {p0, v4, v4, v0}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->sendDeviceReport(ZZLjava/lang/String;)V

    goto :goto_2

    .line 67
    :cond_7
    :goto_1
    sget-object v5, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->DEREG_SUCCEEDED:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    invoke-direct {p0, v5}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->setRegStatus(Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->getNetworkType(Lcom/sec/ims/ImsRegistration;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->informImsRegStatusChangeToHandoverModule(I)V

    .line 70
    iget v5, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/Operator/EpdgOperator;->getOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget v3, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 71
    :cond_8
    const/4 v2, 0x1

    invoke-direct {p0, v4, v2, v0}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->sendDeviceReport(ZZLjava/lang/String;)V

    .line 107
    :cond_9
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5df
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 3
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 46
    sget-object v0, Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;

    invoke-direct {p0, v0}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->setRegStatus(Lcom/sec/epdg/Constants/ImsConstants$IMSRegStatus;)V

    .line 48
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "mmtel"

    invoke-virtual {p1, v0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->READY_FOR_CALLS:Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;

    invoke-virtual {v1}, Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;->getCode()I

    move-result v1

    iget v2, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUnifiedWfcSummaryBroadcast(Landroid/content/Context;II)V

    .line 51
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    const/4 v0, 0x1

    const-string v1, ""

    invoke-direct {p0, v0, v0, v1}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->sendDeviceReport(ZZLjava/lang/String;)V

    .line 55
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->getNetworkType(Lcom/sec/ims/ImsRegistration;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->informImsRegStatusChangeToHandoverModule(I)V

    .line 56
    return-void
.end method
