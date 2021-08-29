.class Lcom/sec/epdg/handover/EpdgImsListener$5;
.super Lcom/sec/ims/IImsRegistrationListener$Stub;
.source "EpdgImsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener;


# direct methods
.method constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/epdg/handover/EpdgImsListener;

    .line 354
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener$5;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-direct {p0}, Lcom/sec/ims/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 3
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "errorCode"    # Lcom/sec/ims/ImsRegistrationError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$5;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$000(Lcom/sec/epdg/handover/EpdgImsListener;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeregistered() errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 370
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$5;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener$OnDeRegistered;

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener$5;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-direct {v1, v2, p1, p2}, Lcom/sec/epdg/handover/EpdgImsListener$OnDeRegistered;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$5;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$000(Lcom/sec/epdg/handover/EpdgImsListener;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignore IMS deregi for other service"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :goto_0
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 3
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$5;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$000(Lcom/sec/epdg/handover/EpdgImsListener;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRegistered()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$5;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener$OnRegistered;

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener$5;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-direct {v1, v2, p1}, Lcom/sec/epdg/handover/EpdgImsListener$OnRegistered;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;Lcom/sec/ims/ImsRegistration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$5;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$000(Lcom/sec/epdg/handover/EpdgImsListener;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignore IMS regi for other service"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :goto_0
    return-void
.end method
