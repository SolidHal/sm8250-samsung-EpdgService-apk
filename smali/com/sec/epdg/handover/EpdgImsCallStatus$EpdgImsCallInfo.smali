.class Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
.super Ljava/lang/Object;
.source "EpdgImsCallStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsCallStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgImsCallInfo"
.end annotation


# instance fields
.field mCallType:Ljava/lang/Integer;

.field mIsAckRecvd:Z

.field mIsDowngradedVideoCall:Z

.field misDowngradedAtEstablish:Z

.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsCallStatus;


# direct methods
.method constructor <init>(Lcom/sec/epdg/handover/EpdgImsCallStatus;Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 0
    .param p2, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 83
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->this$0:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p0, p2}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->update(Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 85
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->resetAckRcvd()V

    .line 86
    return-void
.end method


# virtual methods
.method getCallType()Ljava/lang/Integer;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mCallType:Ljava/lang/Integer;

    return-object v0
.end method

.method isDownGradedVideoCall()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mIsDowngradedVideoCall:Z

    return v0
.end method

.method isDowngradedAtEstablish()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->misDowngradedAtEstablish:Z

    return v0
.end method

.method resetAckRcvd()V
    .locals 1

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mIsAckRecvd:Z

    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[mCallType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mCallType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIsDowngradedVideoCall : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mIsDowngradedVideoCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " misDowngradedAtEstablish : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->misDowngradedAtEstablish:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsAckRecvd : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mIsAckRecvd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method update(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 1
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 90
    :try_start_0
    invoke-static {p1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->access$000(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mCallType:Ljava/lang/Integer;

    .line 91
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->isDowngradedVideoCall()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mIsDowngradedVideoCall:Z

    .line 92
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->isDowngradedAtEstablish()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->misDowngradedAtEstablish:Z

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mIsAckRecvd:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 97
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
