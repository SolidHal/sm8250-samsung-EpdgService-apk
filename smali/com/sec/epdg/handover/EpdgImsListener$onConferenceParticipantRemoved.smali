.class Lcom/sec/epdg/handover/EpdgImsListener$onConferenceParticipantRemoved;
.super Lcom/sec/epdg/handover/EpdgImsListener$ImsCallRunnable;
.source "EpdgImsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "onConferenceParticipantRemoved"
.end annotation


# instance fields
.field private mParticipant:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener;


# direct methods
.method constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
    .locals 0
    .param p2, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p3, "participant"    # Ljava/lang/String;

    .line 489
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener$onConferenceParticipantRemoved;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    .line 490
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/handover/EpdgImsListener$ImsCallRunnable;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 491
    iput-object p3, p0, Lcom/sec/epdg/handover/EpdgImsListener$onConferenceParticipantRemoved;->mParticipant:Ljava/lang/String;

    .line 492
    return-void
.end method


# virtual methods
.method public performOperation()V
    .locals 3

    .line 496
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$onConferenceParticipantRemoved;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$000(Lcom/sec/epdg/handover/EpdgImsListener;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConferenceParticipantRemoved: mParticipant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener$onConferenceParticipantRemoved;->mParticipant:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$onConferenceParticipantRemoved;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$1400(Lcom/sec/epdg/handover/EpdgImsListener;)Lcom/sec/epdg/handover/EpdgImsCallStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener$onConferenceParticipantRemoved;->mCallInfo:Lcom/sec/ims/volte2/data/ImsCallInfo;

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener$onConferenceParticipantRemoved;->mParticipant:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->onConferenceParticipantRemoved(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V

    .line 498
    return-void
.end method
