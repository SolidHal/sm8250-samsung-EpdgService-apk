.class Lcom/sec/epdg/handover/EpdgImsListener$OnCallEstablish;
.super Lcom/sec/epdg/handover/EpdgImsListener$ImsCallRunnable;
.source "EpdgImsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCallEstablish"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener;


# direct methods
.method constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 0
    .param p2, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 456
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnCallEstablish;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    .line 457
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/handover/EpdgImsListener$ImsCallRunnable;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 458
    return-void
.end method


# virtual methods
.method public performOperation()V
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnCallEstablish;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$000(Lcom/sec/epdg/handover/EpdgImsListener;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCallEstablish: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnCallEstablish;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$1400(Lcom/sec/epdg/handover/EpdgImsListener;)Lcom/sec/epdg/handover/EpdgImsCallStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnCallEstablish;->mCallInfo:Lcom/sec/ims/volte2/data/ImsCallInfo;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->onCallEstablish(Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 464
    return-void
.end method
