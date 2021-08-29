.class public Lcom/sec/epdg/IPSecDataConnSM;
.super Lcom/android/internal/util/StateMachine;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;,
        Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;,
        Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;,
        Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;,
        Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;,
        Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;,
        Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;,
        Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;,
        Lcom/sec/epdg/IPSecDataConnSM$InactiveState;,
        Lcom/sec/epdg/IPSecDataConnSM$StateBase;
    }
.end annotation


# static fields
.field private static final CHECK_HO_W2L_DELAY:I = 0x1388

.field private static final HOEVT_TAG:Ljava/lang/String; = "[OH_EVENT]"

.field private static final MAX_DNS_AND_L2W_TIMEOUT:I = 0xea60

.field private static final MAX_HANDOVER_FAIL_COUNT:I = 0x3

.field private static final MAX_L2W_TIMEOUT:I = 0x4e20

.field private static final MAX_W2L_TIMEOUT:I = 0x27100

.field private static final OPTI_TAG:Ljava/lang/String; = "[HO_OPTIMIZATION]"

.field private static SUB_TAG:Ljava/lang/String;

.field private static mIWlanInactiveState:Lcom/sec/epdg/DataType/IWlanState;


# instance fields
.field private APN_TAG:C

.field private STATE_TAG:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field public espLossChecking:Z

.field private mApnName:Ljava/lang/String;

.field private final mConnectedState:Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

.field private final mDisConnectedState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

.field private final mDisConnectingState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

.field private mExpiredTimeTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandoverConnectingState:Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

.field private mHandoverFailCount:I

.field private mIPSecDataConnSMHelper:Lcom/sec/epdg/IPSecDataConnSMHelper;

.field final mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

.field private final mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

.field private final mInitialConnectingState:Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;

.field private mIsExistPendingConnReq:Z

.field private mIsNeededL2WHO:Z

.field private mIsW2LRequested:Z

.field private final mPeerDisconnectedState:Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

.field private mPendingConnReqObj:Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;

.field private mPhoneId:I

.field private mRilCid:I

.field private mSmId:I

.field private mSubScription:Lcom/sec/epdg/EpdgSubScription;

.field private final mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

.field private final mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

.field private final mePdgHandler:Landroid/os/Handler;

.field private final smHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-string v0, "[IPSECDATACONNSM]"

    sput-object v0, Lcom/sec/epdg/IPSecDataConnSM;->SUB_TAG:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/sec/epdg/DataType/IWlanState;

    invoke-direct {v0}, Lcom/sec/epdg/DataType/IWlanState;-><init>()V

    sput-object v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanInactiveState:Lcom/sec/epdg/DataType/IWlanState;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/sec/epdg/IWlanApnContext;Landroid/os/Handler;Landroid/os/Looper;IILcom/sec/epdg/EpdgSubScription;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "apnContext"    # Lcom/sec/epdg/IWlanApnContext;
    .param p4, "hdlr"    # Landroid/os/Handler;
    .param p5, "looper"    # Landroid/os/Looper;
    .param p6, "phoneId"    # I
    .param p7, "smId"    # I
    .param p8, "subscription"    # Lcom/sec/epdg/EpdgSubScription;

    .line 162
    invoke-direct {p0, p1, p5}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->TAG:Ljava/lang/String;

    .line 44
    const-string v1, " "

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->STATE_TAG:Ljava/lang/String;

    .line 45
    const/16 v2, 0x20

    iput-char v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->APN_TAG:C

    .line 56
    new-instance v2, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    .line 57
    new-instance v2, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;

    invoke-direct {v2, p0, v3}, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInitialConnectingState:Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;

    .line 59
    new-instance v2, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    invoke-direct {v2, p0, v3}, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mHandoverConnectingState:Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    .line 61
    new-instance v2, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    invoke-direct {v2, p0, v3}, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mConnectedState:Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    .line 62
    new-instance v2, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    invoke-direct {v2, p0, v3}, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    .line 64
    new-instance v2, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    invoke-direct {v2, p0, v3}, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPeerDisconnectedState:Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    .line 66
    new-instance v2, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    invoke-direct {v2, p0, v3}, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    .line 67
    new-instance v2, Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

    invoke-direct {v2, p0, v3}, Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mDisConnectingState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

    .line 69
    new-instance v2, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

    invoke-direct {v2, p0, v3}, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mDisConnectedState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

    .line 77
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsW2LRequested:Z

    .line 78
    iput-boolean v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsNeededL2WHO:Z

    .line 79
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;

    .line 84
    iput-boolean v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsExistPendingConnReq:Z

    .line 86
    iput-boolean v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->espLossChecking:Z

    .line 87
    iput-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mApnName:Ljava/lang/String;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mSmId:I

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/epdg/IPSecDataConnSM;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->TAG:Ljava/lang/String;

    .line 164
    invoke-super {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->smHandler:Landroid/os/Handler;

    .line 165
    iput-object p4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;

    .line 166
    iput p6, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPhoneId:I

    .line 167
    iput-object p8, p0, Lcom/sec/epdg/IPSecDataConnSM;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 168
    iput-object p3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 169
    iput p7, p0, Lcom/sec/epdg/IPSecDataConnSM;->mSmId:I

    .line 170
    new-instance v0, Lcom/sec/epdg/IPSecDataConnSMHelper;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p4

    move v4, p6

    move-object v5, p8

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/epdg/IPSecDataConnSMHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;ILcom/sec/epdg/EpdgSubScription;Lcom/sec/epdg/IPSecDataConnSM;)V

    iput-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecDataConnSMHelper:Lcom/sec/epdg/IPSecDataConnSMHelper;

    .line 171
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->initConnectionParams()V

    .line 173
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->initConnectionWhenAuthFailDuringHandover()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->resetHandoverFailCount()V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 178
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInitialConnectingState:Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 179
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mHandoverConnectingState:Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 180
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mConnectedState:Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 181
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 182
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mDisConnectingState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 183
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 184
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPeerDisconnectedState:Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 185
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mDisConnectedState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 187
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->setInitialState(Lcom/android/internal/util/State;)V

    .line 188
    invoke-super {p0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 189
    return-void
.end method

.method private LOGE(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 1738
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->STATE_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->APN_TAG:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    return-void
.end method

.method private LOGI(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 1734
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->STATE_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->APN_TAG:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->LOGI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->updateApnTag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/epdg/IPSecDataConnSM;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .line 37
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPhoneId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .line 37
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->initConnectionParams()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSMHelper;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .line 37
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecDataConnSMHelper:Lcom/sec/epdg/IPSecDataConnSMHelper;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/EpdgSubScription;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .line 37
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .line 37
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/epdg/IPSecDataConnSM;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .line 37
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->handleConnectRequest()I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .line 37
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mDisConnectingState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Landroid/os/Message;

    .line 37
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->configureApnContext(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->LOGE(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .line 37
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .line 37
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mHandoverConnectingState:Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .line 37
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .line 37
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mConnectedState:Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/epdg/IPSecDataConnSM;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .line 37
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->tryNextEpdgServerAddress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .line 37
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IWlanConnectResult;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Lcom/sec/epdg/IWlanConnectResult;
    .param p2, "x2"    # Z

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/IPSecDataConnSM;->checkDelayNotifyAuthFailure(Lcom/sec/epdg/IWlanConnectResult;Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .line 37
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .line 37
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/epdg/IPSecDataConnSM;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .line 37
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mRilCid:I

    return v0
.end method

.method static synthetic access$3200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .line 37
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/epdg/IPSecDataConnSM;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .line 37
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .line 37
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .line 37
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .line 37
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .line 37
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .line 37
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .line 37
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPeerDisconnectedState:Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .line 37
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .line 37
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .line 37
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/sec/epdg/IPSecDataConnSM;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .line 37
    iget-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsNeededL2WHO:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/sec/epdg/IPSecDataConnSM;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z

    .line 37
    iput-boolean p1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsNeededL2WHO:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .line 37
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .line 37
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mDisConnectedState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->updateStateTag(Ljava/lang/String;)V

    return-void
.end method

.method private checkDelayNotifyAuthFailure(Lcom/sec/epdg/IWlanConnectResult;Z)V
    .locals 8
    .param p1, "connectResult"    # Lcom/sec/epdg/IWlanConnectResult;
    .param p2, "initialConnecting"    # Z

    .line 239
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->delayNotifyAuthFailureTillPermanentThrottle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    invoke-virtual {p1}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/ErrorCode/IWlanError;

    move-result-object v0

    .line 241
    .local v0, "resultError":Lcom/sec/epdg/ErrorCode/IWlanError;
    invoke-virtual {v0}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 242
    invoke-virtual {v0}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v1

    const/16 v3, 0x18

    if-ne v1, v3, :cond_1

    .line 243
    const-string v1, "Rogers req. Handling auth fail."

    invoke-direct {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->LOGI(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecDataConnSMHelper:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/epdg/IPSecDataConnSMHelper;->getPermanentErrorCount(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 245
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->getEpdgHandoverHandler()Lcom/sec/epdg/EpdgHandoverHandler;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPhoneId:I

    .line 246
    invoke-static {v5}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/Operator/EpdgOperator;->getOperatorName()Ljava/lang/String;

    move-result-object v5

    .line 245
    invoke-virtual {v1, v4, v0, v3, v5}, Lcom/sec/epdg/EpdgHandoverHandler;->notifyIpsecConnectionFail(Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError;ILjava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecDataConnSMHelper:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->informHandoverFailureToRilAndFramework(IZ)V

    .line 248
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecDataConnSMHelper:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->resetThrottleState()V

    goto :goto_0

    .line 250
    :cond_0
    new-instance v1, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;

    .line 251
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 252
    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 253
    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPendingConnReqObj:Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;

    .line 255
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsExistPendingConnReq:Z

    goto :goto_0

    .line 258
    :cond_1
    iget v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgUtils;->isIwlanLegacyMode()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecDataConnSMHelper:Lcom/sec/epdg/IPSecDataConnSMHelper;

    .line 259
    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->getThrottleInterval()I

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPhoneId:I

    .line 260
    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 262
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecDataConnSMHelper:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->informHandoverFailureToRilAndFramework(IZ)V

    .line 266
    .end local v0    # "resultError":Lcom/sec/epdg/ErrorCode/IWlanError;
    :cond_3
    :goto_0
    return-void
.end method

.method private configureApnContext(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 1565
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1566
    .local v0, "cid":I
    const/4 v1, 0x0

    .line 1567
    .local v1, "apnName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1569
    .local v2, "remoteUri":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->initConnectionParams()V

    .line 1572
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Connect request is received for cid: "

    if-eqz v3, :cond_0

    .line 1573
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    .line 1574
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " remoteUri "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/epdg/IPSecDataConnSM;->LOGI(Ljava/lang/String;)V

    .line 1575
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v3, v2, v4}, Lcom/sec/epdg/IWlanApnContext;->configureAPNSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    invoke-virtual {p0, v2}, Lcom/sec/epdg/IPSecDataConnSM;->setApnName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1577
    :cond_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/os/AsyncResult;

    if-eqz v3, :cond_5

    .line 1578
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1579
    .local v3, "asyncRes":Landroid/os/AsyncResult;
    iget-object v6, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;

    .line 1580
    .local v6, "connReq":Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;
    if-eqz v6, :cond_1

    .line 1581
    invoke-virtual {v6}, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;->getApnName()Ljava/lang/String;

    move-result-object v1

    .line 1582
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v7, v0}, Lcom/sec/epdg/IWlanApnContext;->setmRilCid(I)V

    .line 1583
    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v6}, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;->getIpv6Addr()Ljava/lang/String;

    move-result-object v8

    .line 1584
    invoke-virtual {v6}, Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;->getIpv4Addr()Ljava/lang/String;

    move-result-object v9

    .line 1583
    invoke-virtual {v7, v8, v9}, Lcom/sec/epdg/IWlanApnContext;->setRequestIpAddress(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    :cond_1
    if-nez v1, :cond_2

    .line 1587
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed Connect request for Cid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "(no apnname)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/epdg/IPSecDataConnSM;->LOGE(Ljava/lang/String;)V

    .line 1588
    return-void

    .line 1590
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " apnName: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/epdg/IPSecDataConnSM;->LOGI(Ljava/lang/String;)V

    .line 1591
    iget v5, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    move-result-object v5

    iget-boolean v5, v5, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->INTERNAL_ENTITLEMENT_CHECK:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPhoneId:I

    .line 1592
    invoke-static {v5}, Lcom/sec/epdg/EpdgEntitlement;->getInstance(I)Lcom/sec/epdg/EpdgEntitlement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgEntitlement;->isProcessingEntitlement()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1593
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v5, v1, v4}, Lcom/sec/epdg/IWlanApnContext;->configureAPNSettings(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1595
    :cond_3
    iget v4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/epdg/EpdgUtils;->getApnTypeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1596
    .local v4, "apnType":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 1597
    const-string v5, "Failed find apntype by apnname. "

    invoke-direct {p0, v5}, Lcom/sec/epdg/IPSecDataConnSM;->LOGE(Ljava/lang/String;)V

    .line 1598
    return-void

    .line 1600
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configureAPNSettings apnType: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/epdg/IPSecDataConnSM;->LOGI(Ljava/lang/String;)V

    .line 1601
    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v5, v1, v4}, Lcom/sec/epdg/IWlanApnContext;->configureAPNSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    .end local v4    # "apnType":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->setApnName(Ljava/lang/String;)V

    .line 1606
    .end local v3    # "asyncRes":Landroid/os/AsyncResult;
    .end local v6    # "connReq":Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;
    :cond_5
    :goto_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v3}, Lcom/sec/epdg/IPSecDataConnSM;->setmRilCid(I)V

    .line 1607
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 1608
    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0.0.0.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 1610
    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 1611
    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v3

    const-string v4, "::"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1612
    :cond_7
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecDataConnSMHelper:Lcom/sec/epdg/IPSecDataConnSMHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/epdg/IPSecDataConnSMHelper;->setIsHandOver(Z)V

    .line 1616
    :cond_8
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/epdg/IPSecDataConnSM;->updateApnTag(Ljava/lang/String;)V

    .line 1617
    return-void
.end method

.method public static getNewStateMachineInstance(Ljava/lang/String;Landroid/content/Context;Lcom/sec/epdg/IWlanApnContext;Landroid/os/Handler;Landroid/os/Looper;IILcom/sec/epdg/EpdgSubScription;)Lcom/sec/epdg/IPSecDataConnSM;
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mApnContext"    # Lcom/sec/epdg/IWlanApnContext;
    .param p3, "mEpdgHandler"    # Landroid/os/Handler;
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "phoneId"    # I
    .param p6, "smId"    # I
    .param p7, "subscription"    # Lcom/sec/epdg/EpdgSubScription;

    .line 194
    new-instance v9, Lcom/sec/epdg/IPSecDataConnSM;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/epdg/IPSecDataConnSM;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/sec/epdg/IWlanApnContext;Landroid/os/Handler;Landroid/os/Looper;IILcom/sec/epdg/EpdgSubScription;)V

    return-object v9
.end method

.method private handleConnectRequest()I
    .locals 10

    .line 1620
    const-string v0, "Enter handleConnectRequest()"

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->LOGI(Ljava/lang/String;)V

    .line 1621
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1622
    const-string v0, " No APN settings to drive the State machine in Inactive state. Critical Failure !!"

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->LOGE(Ljava/lang/String;)V

    .line 1624
    new-instance v0, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x578

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;-><init>(Landroid/os/Handler;ILjava/lang/String;ZZLcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;I)V

    invoke-virtual {v0}, Lcom/sec/epdg/DataType/ApnData$ApnConnStatusData;->post()V

    .line 1625
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 1626
    return v1

    .line 1628
    :cond_0
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1630
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgUtils;->isEpdgConnectionBlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1631
    const-string v0, "Block connect request as Network side maximum ePDG APN connection limit reached"

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->LOGE(Ljava/lang/String;)V

    .line 1632
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecDataConnSMHelper:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->informHandoverFailureToRilAndFramework(IZ)V

    .line 1633
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecDataConnSMHelper:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->isHandOver()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1634
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 1635
    :cond_1
    return v1

    .line 1639
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecDataConnSMHelper:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->isThrottleTimerRunning(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1641
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecDataConnSMHelper:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->isHandOver()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1642
    const-string v0, "HandOver Request Received"

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->LOGI(Ljava/lang/String;)V

    .line 1646
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    .line 1647
    .local v0, "mIpSecIpType":Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0.0.0.0"

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 1648
    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v2

    .line 1649
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1650
    const-string v2, "Setting IP type as v4"

    invoke-direct {p0, v2}, Lcom/sec/epdg/IPSecDataConnSM;->LOGI(Ljava/lang/String;)V

    .line 1651
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    .line 1653
    :cond_3
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v2

    const-string v4, "::"

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 1654
    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v2

    .line 1655
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1656
    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    if-eq v0, v2, :cond_4

    .line 1657
    const-string v2, "Setting IP type as v6"

    invoke-direct {p0, v2}, Lcom/sec/epdg/IPSecDataConnSM;->LOGI(Ljava/lang/String;)V

    .line 1658
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;->IP_VERSION_6:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    goto :goto_0

    .line 1660
    :cond_4
    const-string v2, "Setting IP type as v4v6"

    invoke-direct {p0, v2}, Lcom/sec/epdg/IPSecDataConnSM;->LOGI(Ljava/lang/String;)V

    .line 1661
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    .line 1664
    :cond_5
    :goto_0
    iget v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->initConnectionWhenAuthFailDuringHandover()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1665
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->isNeedInitialConnection()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1666
    const-string v2, "Remove IP address for initial connection."

    invoke-direct {p0, v2}, Lcom/sec/epdg/IPSecDataConnSM;->LOGI(Ljava/lang/String;)V

    .line 1667
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v2, v4, v3}, Lcom/sec/epdg/IWlanApnContext;->setRequestIpAddress(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1669
    :cond_6
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v2

    .line 1670
    invoke-virtual {v2, v0}, Lcom/sec/epdg/IWlanApnSetting;->setmIpSecIpType(Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;)V

    .line 1674
    .end local v0    # "mIpSecIpType":Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    .line 1675
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnSetting;->clone()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    .line 1676
    .local v0, "wlanSetting":Lcom/sec/epdg/IWlanApnSetting;
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1677
    .local v8, "conncid":I
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecDataConnSMHelper:Lcom/sec/epdg/IPSecDataConnSMHelper;

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 1678
    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 1679
    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSubScription;->getPduSessionId()I

    move-result v7

    .line 1677
    move v3, v8

    move-object v4, v0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/epdg/IPSecDataConnSMHelper;->postConnectMessage(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1680
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecDataConnSMHelper:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->isHandOver()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1681
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mHandoverConnectingState:Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    invoke-virtual {p0, v2}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto :goto_2

    .line 1683
    :cond_8
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInitialConnectingState:Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;

    invoke-virtual {p0, v2}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 1685
    .end local v0    # "wlanSetting":Lcom/sec/epdg/IWlanApnSetting;
    .end local v8    # "conncid":I
    :goto_2
    goto :goto_3

    .line 1686
    :cond_9
    const-string v0, "Connect Request is Throttled in InActive State."

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->LOGI(Ljava/lang/String;)V

    .line 1687
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecDataConnSMHelper:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->updatePermanentFail(Ljava/lang/String;)V

    .line 1688
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecDataConnSMHelper:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->informHandoverFailureToRilAndFramework(IZ)V

    .line 1689
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 1691
    :goto_3
    return v1
.end method

.method private initConnectionParams()V
    .locals 2

    .line 198
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->setmRilCid(I)V

    .line 199
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecDataConnSMHelper:Lcom/sec/epdg/IPSecDataConnSMHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IPSecDataConnSMHelper;->setIsHandOver(Z)V

    .line 200
    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->setIsW2LRequested(Z)V

    .line 201
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnContext;->setIWlanSetting(Lcom/sec/epdg/IWlanApnSetting;)V

    .line 202
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 203
    return-void
.end method

.method private tryNextEpdgServerAddress()Z
    .locals 4

    .line 214
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getInstance(I)Lcom/sec/epdg/EpdgUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 216
    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSubScription;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-virtual {v0, v2, v1}, Lcom/sec/epdg/EpdgSubScription;->isOngoingConnectionOverWifi(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 217
    :cond_0
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgServerSelection;->checkAndAddRouteForNextEpdgServerIp()Z

    move-result v0

    .line 218
    .local v0, "result":Z
    if-ne v0, v1, :cond_1

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Next epdg server ip address is available apn type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ipv4 address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 221
    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ipv6 addr "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 222
    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-direct {p0, v2}, Lcom/sec/epdg/IPSecDataConnSM;->LOGI(Ljava/lang/String;)V

    .line 223
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecDataConnSMHelper:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSMHelper;->makeAttachReq()Landroid/os/Message;

    move-result-object v2

    .line 224
    .local v2, "apnAttachReq":Landroid/os/Message;
    invoke-virtual {p0, v2}, Lcom/sec/epdg/IPSecDataConnSM;->deferMessage(Landroid/os/Message;)V

    .line 225
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    invoke-virtual {p0, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 226
    return v1

    .line 228
    .end local v2    # "apnAttachReq":Landroid/os/Message;
    :cond_1
    const-string v1, "No new epdg server ip address is available, resetting the ip and counter"

    invoke-direct {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->LOGI(Ljava/lang/String;)V

    .line 230
    iget v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgServerSelection;->getInstance(I)Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;->RESET_CACHED_IP:Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;

    .line 231
    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/Constants/SubScriptionConstant$EpdgServerIpResetReason;)V

    .line 235
    .end local v0    # "result":Z
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private updateApnTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .line 1723
    if-nez p1, :cond_0

    .line 1724
    const/16 v0, 0x20

    iput-char v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->APN_TAG:C

    goto :goto_0

    .line 1726
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->APN_TAG:C

    .line 1728
    :goto_0
    return-void
.end method

.method private updateStateTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .line 1719
    iput-object p1, p0, Lcom/sec/epdg/IPSecDataConnSM;->STATE_TAG:Ljava/lang/String;

    .line 1720
    return-void
.end method


# virtual methods
.method public checkHandoverFailCounter()Z
    .locals 3

    .line 104
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mHandoverFailCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mHandoverFailCount:I

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandoverFailCount : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mHandoverFailCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->LOGI(Ljava/lang/String;)V

    .line 106
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mHandoverFailCount:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 107
    return v1

    .line 109
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public deInitialize()V
    .locals 2

    .line 1742
    sget-object v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanInactiveState:Lcom/sec/epdg/DataType/IWlanState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1743
    sput-object v1, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanInactiveState:Lcom/sec/epdg/DataType/IWlanState;

    .line 1744
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->smHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1745
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1747
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecDataConnSMHelper:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->deInitialize()V

    .line 1748
    return-void
.end method

.method protected deferTransitionTo(Lcom/android/internal/util/State;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/State;

    .line 157
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 158
    return-void
.end method

.method public getApnContextDump()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApnName()Ljava/lang/String;
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApnName apnname: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mApnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->LOGI(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mApnName:Ljava/lang/String;

    return-object v0
.end method

.method public getApnType()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :cond_0
    const-string v0, "getApnType(), getIWlanSetting() is null"

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->LOGI(Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentIWlanState()Lcom/sec/epdg/DataType/IWlanState;
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanState()Lcom/sec/epdg/DataType/IWlanState;

    move-result-object v0

    return-object v0

    .line 120
    :cond_0
    const-string v0, "getCurrentIWlanState: mIWlanApnContext is null, IWanState as Inactive"

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->LOGI(Ljava/lang/String;)V

    .line 121
    sget-object v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanInactiveState:Lcom/sec/epdg/DataType/IWlanState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/DataType/IWlanState;->setState(I)V

    .line 122
    sget-object v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanInactiveState:Lcom/sec/epdg/DataType/IWlanState;

    return-object v0
.end method

.method public getDPDHandler()Landroid/os/Handler;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecDataConnSMHelper:Lcom/sec/epdg/IPSecDataConnSMHelper;

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSMHelper;->getDPDHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionHandler()Landroid/os/Handler;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->smHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public declared-synchronized getIsW2LRequested()Z
    .locals 1

    monitor-enter p0

    .line 1695
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsW2LRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1695
    .end local p0    # "this":Lcom/sec/epdg/IPSecDataConnSM;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getmRilCid()I
    .locals 1

    .line 206
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mRilCid:I

    return v0
.end method

.method public isNeedInitialConnection()Z
    .locals 2

    .line 113
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mHandoverFailCount:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resetHandoverFailCount()V
    .locals 1

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mHandoverFailCount:I

    .line 101
    return-void
.end method

.method public setApnName(Ljava/lang/String;)V
    .locals 2
    .param p1, "apnname"    # Ljava/lang/String;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setApnName apnname: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->LOGI(Ljava/lang/String;)V

    .line 137
    iput-object p1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mApnName:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public declared-synchronized setIsW2LRequested(Z)V
    .locals 0
    .param p1, "mIsW2LRequested"    # Z

    monitor-enter p0

    .line 1699
    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsW2LRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1700
    monitor-exit p0

    return-void

    .line 1698
    .end local p0    # "this":Lcom/sec/epdg/IPSecDataConnSM;
    .end local p1    # "mIsW2LRequested":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setmRilCid(I)V
    .locals 0
    .param p1, "mRilCid"    # I

    .line 210
    iput p1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mRilCid:I

    .line 211
    return-void
.end method

.method public triggerPendingAttachReq()Z
    .locals 5

    .line 1703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send pending AttachReq PendingConnReq "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsExistPendingConnReq:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->LOGI(Ljava/lang/String;)V

    .line 1704
    iget-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsExistPendingConnReq:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1705
    return v1

    .line 1707
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getDataConnectionHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1708
    .local v0, "apnAttachReq":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1709
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1711
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1712
    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPendingConnReqObj:Lcom/sec/epdg/DataType/ApnData$ApnAttachRequest;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1713
    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->deferMessage(Landroid/os/Message;)V

    .line 1714
    iput-boolean v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsExistPendingConnReq:Z

    .line 1715
    const/4 v1, 0x1

    return v1
.end method
