.class Lcom/sec/epdg/handover/EpdgImsListener$OnRegistered;
.super Lcom/sec/epdg/handover/EpdgImsListener$ImsRegRunnable;
.source "EpdgImsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnRegistered"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener;


# direct methods
.method constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/ImsRegistration;)V
    .locals 0
    .param p2, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 556
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnRegistered;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    .line 557
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/handover/EpdgImsListener$ImsRegRunnable;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/ImsRegistration;)V

    .line 558
    return-void
.end method


# virtual methods
.method public performOperation()V
    .locals 2

    .line 562
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnRegistered;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$1500(Lcom/sec/epdg/handover/EpdgImsListener;)Lcom/sec/epdg/handover/EpdgImsRegStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnRegistered;->mReg:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 563
    return-void
.end method
