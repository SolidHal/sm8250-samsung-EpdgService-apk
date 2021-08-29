.class public Lcom/sec/epdg/handover/EpdgImsCallStatus;
.super Ljava/lang/Object;
.source "EpdgImsCallStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    }
.end annotation


# static fields
.field private static final DOWNGRADED_VIDEO_CALL_COUNT:I = 0x2

.field private static final E911_CALL_COUNT:I = 0x3

.field private static final FORCE_W2L:I = 0x1

.field private static final HO_TAG:Ljava/lang/String; = "[HO_CRITERIA]"

.field private static final IMS_CALL_CONFERENCE_PARTICIPANT_ADDED:I = 0x3

.field private static final IMS_CALL_CONFERENCE_PARTICIPANT_REMOVED:I = 0x4

.field private static final IMS_CALL_ENDED:I = 0x2

.field private static final IMS_CALL_ESTABLISHED:I = 0x1

.field private static final OPTI_TAG:Ljava/lang/String; = "[HO_OPTIMIZATION]"

.field private static SUB_TAG:Ljava/lang/String; = null

.field private static final TOTAL_CALL_COUNT:I = 0x0

.field private static final VIDEO_CALL_COUNT:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

.field private mContext:Landroid/content/Context;

.field private mEcbmModeOn:Z

.field private mEpdgHandler:Landroid/os/Handler;

.field private mHoDelayVideoCallSessionId:Ljava/lang/String;

.field private mHoDelayVoiceCallSessionId:Ljava/lang/String;

.field private final mImsCallList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLossExceedCount:I

.field private mPhoneId:I

.field private mScbmModeOn:Z

.field private mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-string v0, "[EpdgImsCallStatus]"

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->SUB_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILcom/sec/epdg/interfaces/IEpdgSubScription;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hdlr"    # Landroid/os/Handler;
    .param p3, "phoneId"    # I
    .param p4, "subscription"    # Lcom/sec/epdg/interfaces/IEpdgSubScription;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->TAG:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mEcbmModeOn:Z

    .line 40
    iput-boolean v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mScbmModeOn:Z

    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mImsCallList:Ljava/util/HashMap;

    .line 48
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVoiceCallSessionId:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVideoCallSessionId:Ljava/lang/String;

    .line 63
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mLossExceedCount:I

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsCallStatus;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->TAG:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mEpdgHandler:Landroid/os/Handler;

    .line 73
    iput p3, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mPhoneId:I

    .line 74
    iput-object p4, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    invoke-static {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallType(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static getCallType(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/Integer;
    .locals 2
    .param p0, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/ImsCallInfo;->getCallType()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method private getEpdgSettings()Lcom/sec/epdg/interfaces/IEpdgSettings;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    invoke-interface {v0}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/interfaces/IEpdgSettings;

    move-result-object v0

    return-object v0
.end method

.method private getHoDelayTimer()I
    .locals 1

    .line 239
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getEpdgSettings()Lcom/sec/epdg/interfaces/IEpdgSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/epdg/interfaces/IEpdgSettings;->getHoDelayTimer()I

    move-result v0

    return v0
.end method

.method private getKey(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->getCallId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isDowngradedAtEstablish(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->isDowngradedAtEstablish()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0
.end method

.method private isVideoCall(I)Z
    .locals 2
    .param p1, "imsCallType"    # I

    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, "ret":Z
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 478
    :cond_0
    const/4 v0, 0x1

    .line 479
    nop

    .line 491
    :goto_0
    return v0
.end method

.method private postToEpdgService(ILjava/lang/Object;I)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I

    .line 560
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 561
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 562
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 563
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 564
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 565
    return-void
.end method

.method private sendDeviceReport(Lcom/sec/ims/volte2/data/ImsCallInfo;Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;)V
    .locals 5
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p2, "action"    # Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;

    .line 312
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    const-string v1, "ims"

    invoke-interface {v0, v1}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    return-void

    .line 315
    :cond_0
    new-instance v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;-><init>(Landroid/content/Context;)V

    .line 316
    .local v0, "sb":Lcom/sec/epdg/tmo/WfcStatisticsBuilder;
    sget-object v1, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;->CALL:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->setSVC(Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Service;)Lcom/sec/epdg/tmo/WfcStatisticsBuilder;

    .line 317
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->isMOCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    sget-object v1, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;->MO:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->setDIR(Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;)Lcom/sec/epdg/tmo/WfcStatisticsBuilder;

    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->isMTCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 320
    sget-object v1, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;->MT:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->setDIR(Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Direction;)Lcom/sec/epdg/tmo/WfcStatisticsBuilder;

    .line 322
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 323
    .local v1, "peerUri":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->getPeerUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->getSHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    sget-object v2, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;->START:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;

    const/4 v3, 0x1

    if-ne p2, v2, :cond_4

    .line 325
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->isConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 326
    const-string v2, "Conference Call Established"

    invoke-virtual {v0, v2}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->setMSG(Ljava/lang/String;)Lcom/sec/epdg/tmo/WfcStatisticsBuilder;

    .line 328
    :cond_3
    invoke-virtual {v0, v3}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->setOK(Z)Lcom/sec/epdg/tmo/WfcStatisticsBuilder;

    goto :goto_1

    .line 330
    :cond_4
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->getErrorCode()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_5

    .line 331
    invoke-virtual {v0, v3}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->setOK(Z)Lcom/sec/epdg/tmo/WfcStatisticsBuilder;

    goto :goto_1

    .line 333
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->setOK(Z)Lcom/sec/epdg/tmo/WfcStatisticsBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 333
    invoke-virtual {v2, v3}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->setMSG(Ljava/lang/String;)Lcom/sec/epdg/tmo/WfcStatisticsBuilder;

    .line 337
    :goto_1
    invoke-virtual {v0, p2}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->setAC(Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;)Lcom/sec/epdg/tmo/WfcStatisticsBuilder;

    .line 338
    invoke-virtual {v0, v1}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->setHashedPM(Ljava/lang/String;)Lcom/sec/epdg/tmo/WfcStatisticsBuilder;

    .line 339
    invoke-virtual {v0}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->setTimeStamp()Lcom/sec/epdg/tmo/WfcStatisticsBuilder;

    .line 340
    invoke-virtual {v0}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->sendBroadcast()V

    .line 341
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendDeviceReport(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method private sendUnifiedWfcCallStatusUpdate(I)V
    .locals 2
    .param p1, "status"    # I

    .line 421
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mPhoneId:I

    invoke-static {v0, v1, p1}, Lcom/sec/epdg/WfcController/WfcActivityController;->sendUnifiedWfcCallStatusUpdate(Landroid/content/Context;II)V

    .line 422
    return-void
.end method

.method private updateEpdgCallStatus()V
    .locals 7

    .line 503
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEpdgCallStatus: ecbm mode is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mEcbmModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " scbm mode is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mScbmModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-boolean v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mEcbmModeOn:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mScbmModeOn:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 508
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallCount()[I

    move-result-object v0

    .line 509
    .local v0, "callCount":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    if-nez v2, :cond_1

    .line 510
    sget-object v1, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    goto :goto_0

    .line 511
    :cond_1
    const/4 v2, 0x3

    aget v2, v0, v2

    if-lez v2, :cond_2

    .line 512
    sget-object v1, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    goto :goto_0

    .line 513
    :cond_2
    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    if-ne v2, v4, :cond_3

    .line 514
    sget-object v1, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    goto :goto_0

    .line 515
    :cond_3
    aget v2, v0, v1

    const/4 v4, 0x2

    aget v5, v0, v4

    if-ne v2, v5, :cond_4

    .line 516
    sget-object v1, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    goto :goto_0

    .line 517
    :cond_4
    aget v2, v0, v1

    aget v5, v0, v3

    aget v6, v0, v4

    add-int/2addr v5, v6

    if-ne v2, v5, :cond_5

    .line 518
    sget-object v1, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    goto :goto_0

    .line 519
    :cond_5
    aget v2, v0, v1

    aget v1, v0, v1

    aget v3, v0, v3

    sub-int/2addr v1, v3

    aget v3, v0, v4

    sub-int/2addr v1, v3

    if-ne v2, v1, :cond_6

    .line 520
    sget-object v1, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    goto :goto_0

    .line 522
    :cond_6
    sget-object v1, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    .line 524
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEpdgCallStatus() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    invoke-virtual {v3}, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-void

    .line 505
    .end local v0    # "callCount":[I
    :cond_7
    :goto_1
    sget-object v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    .line 506
    return-void
.end method


# virtual methods
.method protected getCallCount()[I
    .locals 12

    .line 149
    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 150
    .local v1, "callCount":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    .line 151
    aput v3, v1, v2

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mImsCallList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 154
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 155
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 156
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mImsCallList:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;

    .line 157
    .local v5, "callInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    invoke-virtual {v5}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->getCallType()Ljava/lang/Integer;

    move-result-object v6

    .line 158
    .local v6, "imsCallType":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v7, v8, :cond_2

    const/4 v10, 0x3

    if-eq v7, v10, :cond_2

    if-eq v7, v0, :cond_2

    const/4 v11, 0x6

    if-eq v7, v11, :cond_2

    const/4 v11, 0x7

    if-eq v7, v11, :cond_1

    const/16 v11, 0x8

    if-eq v7, v11, :cond_1

    goto :goto_2

    .line 170
    :cond_1
    aget v7, v1, v10

    add-int/2addr v7, v9

    aput v7, v1, v10

    .line 171
    goto :goto_2

    .line 166
    :cond_2
    aget v7, v1, v9

    add-int/2addr v7, v9

    aput v7, v1, v9

    .line 167
    nop

    .line 179
    :goto_2
    iget v7, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mPhoneId:I

    invoke-static {v7}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v7

    iget-boolean v7, v7, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->isDownGradedVideoCall()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 180
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->TAG:Ljava/lang/String;

    const-string v10, "getCallCount() DownGradedVideoCall"

    invoke-static {v7, v10}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    aget v7, v1, v8

    add-int/2addr v7, v9

    aput v7, v1, v8

    .line 183
    :cond_3
    aget v7, v1, v3

    add-int/2addr v7, v9

    aput v7, v1, v3

    .line 184
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCallCount() Key:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " value:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "callInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    .end local v6    # "imsCallType":Ljava/lang/Integer;
    goto :goto_1

    .line 186
    :cond_4
    return-object v1
.end method

.method protected getCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    return-object v0
.end method

.method protected getE911CallCount()I
    .locals 2

    .line 190
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallCount()[I

    move-result-object v0

    .line 191
    .local v0, "callCount":[I
    const/4 v1, 0x3

    aget v1, v0, v1

    return v1
.end method

.method protected getNonE911CallCount()I
    .locals 3

    .line 195
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallCount()[I

    move-result-object v0

    .line 196
    .local v0, "callCount":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x3

    aget v2, v0, v2

    sub-int/2addr v1, v2

    return v1
.end method

.method protected getScbmChanged()Z
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScbmChanged(): returning scbm mode as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mScbmModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-boolean v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mScbmModeOn:Z

    return v0
.end method

.method protected informCallStatusChangeForDualIms(Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;)V
    .locals 2
    .param p1, "callstatus"    # Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    .line 547
    const/16 v0, 0x3ea

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->postToEpdgService(ILjava/lang/Object;I)V

    .line 549
    return-void
.end method

.method protected informCallStatusChangeToHandoverModule(I)V
    .locals 2
    .param p1, "value"    # I

    .line 536
    nop

    .line 537
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v0

    .line 536
    const/16 v1, 0x3e

    invoke-direct {p0, v1, v0, p1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->postToEpdgService(ILjava/lang/Object;I)V

    .line 538
    return-void
.end method

.method protected informHandoverDelayToHandoverModule()V
    .locals 3

    .line 541
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getHoDelayTimer()I

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    const/16 v0, 0x3d

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->postToEpdgService(ILjava/lang/Object;I)V

    .line 544
    :cond_0
    return-void
.end method

.method protected informRtpLossRateChangeToHandoverModule(Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;)V
    .locals 2
    .param p1, "rtpLossRateChange"    # Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;

    .line 552
    const/16 v0, 0x58

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->postToEpdgService(ILjava/lang/Object;I)V

    .line 553
    return-void
.end method

.method protected initImsCallStatus([Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 8
    .param p1, "callInfos"    # [Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 123
    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    .line 124
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 126
    .local v3, "info":Lcom/sec/ims/volte2/data/ImsCallInfo;
    :try_start_0
    invoke-direct {p0, v3}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getKey(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initImsCallStatus() Key : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v5, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mImsCallList:Ljava/util/HashMap;

    new-instance v6, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;

    invoke-direct {v6, p0, v3}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;-><init>(Lcom/sec/epdg/handover/EpdgImsCallStatus;Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    nop

    .end local v4    # "key":Ljava/lang/String;
    goto :goto_1

    .line 129
    :catch_0
    move-exception v4

    .line 130
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 124
    .end local v3    # "info":Lcom/sec/ims/volte2/data/ImsCallInfo;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->updateEpdgCallStatus()V

    .line 134
    invoke-virtual {p0, v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->informCallStatusChangeToHandoverModule(I)V

    .line 136
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-eq v0, v1, :cond_1

    .line 137
    sget-object v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_STARTING:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->informCallStatusChangeForDualIms(Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;)V

    goto :goto_2

    .line 139
    :cond_1
    sget-object v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->informCallStatusChangeForDualIms(Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;)V

    .line 142
    :cond_2
    :goto_2
    return-void
.end method

.method protected onCallEnded(Lcom/sec/ims/volte2/data/ImsCallInfo;I)V
    .locals 4
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p2, "errorCode"    # I

    .line 244
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getKey(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallEnded() Key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", errorCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mImsCallList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->updateEpdgCallStatus()V

    .line 248
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->sendUnifiedWfcCallStatusUpdate(I)V

    .line 249
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getHoDelayTimer()I

    move-result v1

    if-eqz v1, :cond_3

    .line 250
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVoiceCallSessionId:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVoiceCallSessionId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    iput-object v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVoiceCallSessionId:Ljava/lang/String;

    goto :goto_0

    .line 257
    :cond_0
    return-void

    .line 260
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVideoCallSessionId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 261
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVideoCallSessionId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    iput-object v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVideoCallSessionId:Ljava/lang/String;

    goto :goto_1

    .line 267
    :cond_2
    return-void

    .line 271
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    sget-object v2, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_4

    .line 272
    sget-object v1, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->informCallStatusChangeForDualIms(Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;)V

    .line 274
    :cond_4
    invoke-virtual {p0, p2}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->informCallStatusChangeToHandoverModule(I)V

    .line 275
    iget v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    const-string v2, "Telstra_AU"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isMnoName([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 276
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->getErrorCode()I

    move-result v1

    const/16 v2, 0x579

    if-ne v1, v2, :cond_5

    .line 277
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->sendDPD()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v0    # "key":Ljava/lang/String;
    :cond_5
    goto :goto_2

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 282
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 283
    :cond_6
    sget-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;->END:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;

    invoke-direct {p0, p1, v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->sendDeviceReport(Lcom/sec/ims/volte2/data/ImsCallInfo;Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;)V

    .line 285
    :cond_7
    return-void
.end method

.method protected onCallEstablish(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 2
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 303
    invoke-virtual {p0, p1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->onCallModified(Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 304
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->sendUnifiedWfcCallStatusUpdate(I)V

    .line 305
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    invoke-interface {v0}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->setCallStartTimeForEdgeWarning()V

    .line 306
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    :cond_0
    sget-object v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;->START:Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;

    invoke-direct {p0, p1, v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->sendDeviceReport(Lcom/sec/ims/volte2/data/ImsCallInfo;Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Action;)V

    .line 309
    :cond_1
    return-void
.end method

.method protected onCallModified(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 5
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 378
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getKey(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mImsCallList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;

    .line 380
    .local v1, "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    if-nez v1, :cond_0

    .line 381
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCallModified() No callinfo for Key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    return-void

    .line 384
    :cond_0
    invoke-virtual {v1, p1}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->update(Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 385
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->updateEpdgCallStatus()V

    .line 386
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCallModified() Key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " epdgCallInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getHoDelayTimer()I

    move-result v2

    if-eqz v2, :cond_3

    .line 388
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVoiceCallSessionId:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVoiceCallSessionId:Ljava/lang/String;

    .line 389
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 390
    iput-object v3, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVoiceCallSessionId:Ljava/lang/String;

    .line 391
    iget v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 392
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->TAG:Ljava/lang/String;

    const-string v4, "onCallModified() to handle accept as voice"

    invoke-static {v2, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_1
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v2, v4, :cond_2

    .line 394
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->TAG:Ljava/lang/String;

    const-string v3, "Newly established call is voice, need to inform handover delay"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->informHandoverDelayToHandoverModule()V

    .line 397
    return-void

    .line 400
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVideoCallSessionId:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVideoCallSessionId:Ljava/lang/String;

    .line 401
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 402
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->TAG:Ljava/lang/String;

    const-string v4, "Newly established call is video"

    invoke-static {v2, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iput-object v3, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVideoCallSessionId:Ljava/lang/String;

    .line 406
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->informCallStatusChangeToHandoverModule(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    goto :goto_1

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 410
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method protected onCallModifyRequested(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 5
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 289
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getKey(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallModifyRequested() Key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mImsCallList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;

    .line 292
    .local v1, "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    if-nez v1, :cond_0

    .line 293
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCallModifyRequested() No callinfo for Key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void

    .line 296
    :cond_0
    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->resetAckRcvd()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 300
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method protected onCallStarted(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 4
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 347
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getKey(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallStarted() Key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mImsCallList:Ljava/util/HashMap;

    new-instance v2, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;

    invoke-direct {v2, p0, p1}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;-><init>(Lcom/sec/epdg/handover/EpdgImsCallStatus;Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getHoDelayTimer()I

    move-result v1

    if-eqz v1, :cond_3

    .line 351
    iget v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_3

    .line 353
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->getCallType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 354
    .local v1, "imsCallType":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->TAG:Ljava/lang/String;

    const-string v3, "onCallStarted() to handle accept as voice"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVoiceCallSessionId:Ljava/lang/String;

    .line 358
    .end local v1    # "imsCallType":Ljava/lang/Integer;
    :cond_0
    goto :goto_0

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_2

    .line 361
    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVoiceCallSessionId:Ljava/lang/String;

    goto :goto_0

    .line 362
    :cond_2
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_3

    .line 363
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->getCallType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 364
    .restart local v1    # "imsCallType":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 365
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->TAG:Ljava/lang/String;

    const-string v3, "onCallStarted() to handle video call"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVideoCallSessionId:Ljava/lang/String;

    .line 370
    .end local v1    # "imsCallType":Ljava/lang/Integer;
    :cond_3
    :goto_0
    sget-object v1, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_STARTING:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->informCallStatusChangeForDualIms(Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .end local v0    # "key":Ljava/lang/String;
    goto :goto_1

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 374
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method protected onConferenceParticipantAdded(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p2, "participant"    # Ljava/lang/String;

    .line 413
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->sendUnifiedWfcCallStatusUpdate(I)V

    .line 414
    return-void
.end method

.method protected onConferenceParticipantRemoved(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p2, "participant"    # Ljava/lang/String;

    .line 417
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->sendUnifiedWfcCallStatusUpdate(I)V

    .line 418
    return-void
.end method

.method protected onRtpLossRateNoti(IFFI)V
    .locals 7
    .param p1, "interval"    # I
    .param p2, "lossrate"    # F
    .param p3, "jitter"    # F
    .param p4, "w2lNotification"    # I

    .line 425
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getEpdgSettings()Lcom/sec/epdg/interfaces/IEpdgSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/epdg/interfaces/IEpdgSettings;->getRtpRtcpLossRatePercent()I

    move-result v0

    .line 427
    .local v0, "setting_lossrate":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTP loss: interval : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", RTPlossrate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " RTPlossrate(int) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", jitter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "settings :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HO_OPTIMIZATION]"

    invoke-static {v2, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    if-eqz v0, :cond_6

    .line 431
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mSubScription:Lcom/sec/epdg/interfaces/IEpdgSubScription;

    const-string v2, "ims"

    invoke-interface {v1, v2}, Lcom/sec/epdg/interfaces/IEpdgSubScription;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 432
    const/4 v1, 0x1

    if-ne p4, v1, :cond_2

    .line 434
    iget v3, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v3

    iget-boolean v3, v3, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_JITTER_W2L_HANDOVER:Z

    if-nez v3, :cond_0

    .line 435
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->TAG:Ljava/lang/String;

    const-string v2, "Do not support W2L HO by jitter notification"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    return-void

    .line 438
    :cond_0
    iget-object v3, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->TAG:Ljava/lang/String;

    const-string v4, "[HO_OPTIMIZATION]Engine indicated W2L handover because of jitter"

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget v3, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 441
    new-instance v3, Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;

    const/4 v4, 0x0

    invoke-direct {v3, v2, p4, v4}, Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;-><init>(ZIF)V

    .line 442
    .local v3, "mIMSRtpLossRateChange":Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;
    invoke-virtual {p0, v3}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->informRtpLossRateChangeToHandoverModule(Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;)V

    goto :goto_0

    .line 444
    .end local v3    # "mIMSRtpLossRateChange":Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;
    :cond_1
    return-void

    .line 447
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getEpdgSettings()Lcom/sec/epdg/interfaces/IEpdgSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/epdg/interfaces/IEpdgSettings;->getRtpRtcpLossMaxCnt()I

    move-result v3

    .line 448
    .local v3, "loss_max":I
    int-to-float v4, v0

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_4

    .line 449
    iget v4, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mLossExceedCount:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mLossExceedCount:I

    .line 450
    sget-object v4, Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;->RTP_LOSS_RATE_LAST:Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;

    invoke-static {v4, p2}, Lcom/sec/epdg/Logger/LoggingHelper;->setLoggingField(Lcom/sec/epdg/Logger/LoggingHelper$LoggingType;F)V

    .line 451
    iget v4, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mLossExceedCount:I

    if-lt v4, v3, :cond_3

    .line 452
    iget-object v4, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HO_OPTIMIZATION][HO_CRITERIA] RTP Packet Loss: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " >= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    new-instance v4, Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;

    invoke-direct {v4, v1, p4, p2}, Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;-><init>(ZIF)V

    move-object v1, v4

    .line 454
    .local v1, "mIMSRtpLossRateChange":Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;
    invoke-virtual {p0, v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->informRtpLossRateChangeToHandoverModule(Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;)V

    .line 455
    iput v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mLossExceedCount:I

    goto :goto_1

    .line 457
    .end local v1    # "mIMSRtpLossRateChange":Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;
    :cond_3
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->TAG:Ljava/lang/String;

    const-string v4, "[HO_OPTIMIZATION]RTP loss trigger polling RSSI"

    invoke-static {v1, v4}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    new-instance v1, Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;

    invoke-direct {v1, v2, p4, p2}, Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;-><init>(ZIF)V

    .line 459
    .restart local v1    # "mIMSRtpLossRateChange":Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;
    invoke-virtual {p0, v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->informRtpLossRateChangeToHandoverModule(Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;)V

    goto :goto_1

    .line 462
    .end local v1    # "mIMSRtpLossRateChange":Lcom/sec/epdg/Constants/ImsConstants$IMSRtpLossRateChange;
    :cond_4
    iput v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mLossExceedCount:I

    .line 464
    .end local v3    # "loss_max":I
    :goto_1
    goto :goto_2

    .line 465
    :cond_5
    iput v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mLossExceedCount:I

    .line 466
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->TAG:Ljava/lang/String;

    const-string v2, "onRtpLossRateNoti : not connected pdn"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_6
    :goto_2
    return-void
.end method

.method protected resetCallList()V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mImsCallList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 529
    sget-object v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVoiceCallSessionId:Ljava/lang/String;

    .line 531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mEcbmModeOn:Z

    .line 532
    iput-boolean v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mScbmModeOn:Z

    .line 533
    return-void
.end method

.method protected sendDPD()V
    .locals 3

    .line 556
    const/16 v0, 0x44

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->postToEpdgService(ILjava/lang/Object;I)V

    .line 557
    return-void
.end method

.method protected setEcbmChanged(Z)V
    .locals 3
    .param p1, "ecbmModeOn"    # Z

    .line 200
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEcbmChanged() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iput-boolean p1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mEcbmModeOn:Z

    .line 202
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->updateEpdgCallStatus()V

    .line 203
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    sget-object v1, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-eq v0, v1, :cond_0

    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->informCallStatusChangeToHandoverModule(I)V

    .line 206
    :cond_0
    return-void
.end method

.method protected setScbmChanged(Z)V
    .locals 3
    .param p1, "scbmModeOn"    # Z

    .line 209
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScbmChanged(): scbm mode is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iput-boolean p1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mScbmModeOn:Z

    .line 211
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->updateEpdgCallStatus()V

    .line 212
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    sget-object v1, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    if-eq v0, v1, :cond_0

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->informCallStatusChangeToHandoverModule(I)V

    .line 215
    :cond_0
    return-void
.end method
